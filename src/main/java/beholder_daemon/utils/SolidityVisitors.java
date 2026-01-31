package beholder_daemon.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.Arrays;
import java.util.function.Supplier;
import org.antlr.v4.runtime.tree.AbstractParseTreeVisitor;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.RuleNode;
import beholder_daemon.parser.SolidityParser;

public interface SolidityVisitors {
    enum Factory {
        VISIT_BLOCK_FOR_FUNCTIONCALL(VisitBlockForFunctionCall::new),
        FUNCTION_BODY_VISITOR(FunctionBodyVisitor::new);
        
        private final Supplier<AbstractParseTreeVisitor<?>> supplier;
        
        Factory(Supplier<AbstractParseTreeVisitor<?>> supplier) {
            this.supplier = supplier;
        }
        
        @SuppressWarnings("unchecked")
        public <T extends AbstractParseTreeVisitor<?>> T create() {
            return (T) supplier.get();
        }
    }

    class VisitBlockForFunctionCall extends AbstractParseTreeVisitor<Void> {//former BlockVisitor
        private List<String> functionCalls = new ArrayList<>();
        private static final List<String> FUNCTION_NAME_EXCLUDE = Arrays.asList("fallback", "receive");
        
        @Override
        public Void visitChildren(RuleNode node) {//访问block，获取block内的所有函数调用
            if (node == null) return null;
            
            ParseTree ctx = (ParseTree) node;
            if (ctx.getChildCount() == 0) return null;
            
            for (int i = 0; i < ctx.getChildCount(); i++) {
                ParseTree child = ctx.getChild(i);
                
                if (child.getChildCount() == 4 && 
                    child.getChild(2) instanceof SolidityParser.FunctionCallArgumentsContext) {
                    
                    if (!"FunctionCallContext".equals(child.getClass().getSimpleName())) {
                        String functionName = child.getChild(0).getText();
                        if (!FUNCTION_NAME_EXCLUDE.contains(functionName) && 
                            !functionCalls.contains(functionName)) {
                            functionCalls.add(functionName);
                        }
                        
                        String name = child.getChild(0).getText();
                        if (!"fallback".equals(name) && !"receive".equals(name)) {
                            child.getChild(0).accept(this);
                        }
                    }
                } else if (child.getChildCount() != 0) {
                    child.accept(this);
                }
            }
            return null;
        }
        
        public List<String> getFunctionCalls() {
            return new ArrayList<>(functionCalls);
        }
    }

    class FunctionBodyVisitor extends AbstractParseTreeVisitor<Void> {
        private String functionName;
        private List<String> functionCalls = new ArrayList<>();
        private String functionParameters = "";
        private boolean isPublic = false;
        
        @Override
        public Void visitChildren(RuleNode node) {//访问函数定义body，输出函数名，入参，可见度，和函数调用。
            if (node == null) return null;
            
            ParseTree ctx = (ParseTree) node;
            if (ctx.getChildCount() == 0) return null;
            
            for (int i = 0; i < ctx.getChildCount(); i++) {
                ParseTree child = ctx.getChild(i);
                Object payload = child.getPayload();
                
                if (payload instanceof SolidityParser.ModifierListContext) {
                    String content = child.getText();
                    if (content.contains("public") || content.contains("external")) {
                        this.isPublic = true;
                    }
                } else if (payload instanceof SolidityParser.FunctionDescriptorContext) {
                    this.functionName = ((SolidityParser.FunctionDescriptorContext)payload).getText().substring(8);
                } else if (payload instanceof SolidityParser.ParameterListContext) {
                    this.functionParameters = ((SolidityParser.ParameterListContext)payload).getText();
                } else if (payload instanceof SolidityParser.BlockContext) {
                    VisitBlockForFunctionCall blockVisitor = SolidityVisitors.Factory.VISIT_BLOCK_FOR_FUNCTIONCALL.create();
                    child.accept(blockVisitor);
                    this.functionCalls = blockVisitor.getFunctionCalls();
                }
            }
            return null;
        }
        
        // getters
        public String getFunctionName() { return functionName; }
        public List<String> getFunctionCalls() { return new ArrayList<>(functionCalls); }
        public String getFunctionParameters() { return functionParameters; }
        public boolean isPublic() { return isPublic; }
    }
}