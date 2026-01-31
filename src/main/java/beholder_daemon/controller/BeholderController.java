package beholder_daemon.controller;

import beholder_daemon.entity.ContractCode;
import beholder_daemon.entity.burnPair.BurnPairTask;
import beholder_daemon.entity.burnPair.UniswapPair;
import beholder_daemon.entity.uniswapCallback.SwapCallbackTask;
import beholder_daemon.entity.uniswapCallback.ThreeSender;
import beholder_daemon.repository.ContractCodeRepository;
import beholder_daemon.repository.burnPair.BurnPairTaskRepository;
import beholder_daemon.repository.burnPair.UniswapV2PairRepository;
import beholder_daemon.repository.uniswapCallback.SwapCallbackTaskRepository;
import beholder_daemon.repository.uniswapCallback.ThreeSenderRepository;
import beholder_daemon.service.TaskCreateService;
import beholder_daemon.service.burnPair.UniswapPairService;
import lombok.RequiredArgsConstructor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;


@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*") // 允许前端跨域访问
public class BeholderController {

    @Autowired
    SwapCallbackTaskRepository swapCallbackTaskRepository;

    @Autowired
    UniswapV2PairRepository uniswapPairRepository;

    @Autowired
    ContractCodeRepository contractCodeRepository;

    @Autowired
    UniswapPairService uniswapPairService;

    @Autowired
    BurnPairTaskRepository burnPairTaskRepository;

    @Autowired
    TaskCreateService taskCreateService;

    @Autowired
    ThreeSenderRepository threeSenderRepository;

    @GetMapping
    public ResponseEntity<List<UniswapPair>> getAllPairs() {
        List<UniswapPair> pairs = uniswapPairRepository.findByCodeGot((short)1);
        return ResponseEntity.ok(pairs);
    }

    @GetMapping("/pairs/paged")
    public ResponseEntity<Page<UniswapPair>> getAllPairsPaged(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "200") int size,
            @RequestParam(defaultValue = "-1") int checkState,
            @RequestParam(defaultValue = "valueInUsd") String sortBy,
            @RequestParam(defaultValue = "desc") String direction) {
        
        Pageable pageable = PageRequest.of(page, size, Sort.by(Sort.Direction.fromString(direction), sortBy));
        Page<UniswapPair> pairs;
        if (checkState==-1)
            pairs = uniswapPairRepository.findByCodeGotAndDeleted((short)1,0,pageable);
        else
            pairs = uniswapPairRepository.findByCodeGotAndDeletedAndCheckState((short)1,0,checkState,pageable);
        return ResponseEntity.ok(pairs);
    }
    // 按状态获取任务
    @GetMapping("/pairs/tasks/paged")
    public ResponseEntity<Page<BurnPairTask>> getTasksByStatus(
        @RequestParam(defaultValue = "0") int page,
        @RequestParam(defaultValue = "200") int size,
        @RequestParam(defaultValue = "-100") int status,
        //@RequestParam(defaultValue = "") String type,
        @RequestParam(defaultValue = "startTime") String sortBy,
        @RequestParam(defaultValue = "desc") String direction){
        Pageable pageable = PageRequest.of(page, size, Sort.by(Sort.Direction.fromString(direction), sortBy));
        Page<BurnPairTask> tasks;
        if (status==-100)
            tasks = burnPairTaskRepository.findAll(pageable);
        else
            tasks = burnPairTaskRepository.findByStatus(status,pageable);
        return ResponseEntity.ok(tasks);
    }

    @PostMapping("/pairs/tasks/send/{taskId}")
    public ResponseEntity<String> sendTask(@PathVariable int taskId) {
        try {
            System.out.println("收到taskId："+taskId);
            taskCreateService.sendTaskMessage(taskId);
            return ResponseEntity.ok(String.format("任务 %d 发送成功", taskId));
        } catch (IllegalArgumentException e) {
            return ResponseEntity.badRequest().body(e.getMessage());
        } catch (Exception e) {
            return ResponseEntity.internalServerError()
                .body("发送失败: " + e.getMessage());
        }
    }

    // 根据token_address查询Code
    @GetMapping("/code/{tokenAddress}")
    public ResponseEntity<ContractCode> getCodeByToken(@PathVariable String tokenAddress) {
        Optional<ContractCode> code = contractCodeRepository.findById(tokenAddress);
            // 如果code存在，返回对应的code
        if (code.isPresent()) {
            return ResponseEntity.ok(code.get());
        }
        // code不存在，返回404
        return ResponseEntity.notFound().build();
    }

    //修改checkState
    @PatchMapping("/pairs/{pairAddress}/check-status")
    public ResponseEntity<Void> updateCheckStatus(
            @PathVariable String pairAddress,
            @RequestParam Integer status) {
        try {
            uniswapPairService.updateCheckStatus(pairAddress, status);
        }catch(NoSuchElementException e){
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok().build();
    }

    
    @PatchMapping("/pairs/acknowledge-automation")
    @Transactional
    public ResponseEntity<Void> acknowledgeAuto() {
        try {
            uniswapPairRepository.acknowledgeAutoFilter();
            return ResponseEntity.ok().build();
        } catch (Exception e) {
            e.printStackTrace(System.out);
            return ResponseEntity.internalServerError().build();
        }
    }

    @GetMapping("/senders/paged")
    public ResponseEntity<Page<ThreeSender>> getAllSendersPaged(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "200") int size,
            @RequestParam(defaultValue = "-1") short status,
            @RequestParam(defaultValue = "1") short chainId
            ) {
        
        Pageable pageable = PageRequest.of(page, size);
        Page<ThreeSender> pairs;
        if (status==-1)
            pairs = threeSenderRepository.findByCodeGotGreaterThanAndChainId((short)1, (short)chainId, pageable);
        else
            pairs = threeSenderRepository.findByCodeGotGreaterThanAndStatusAndChainId((short)1, status, (short)chainId, pageable);
        return ResponseEntity.ok(pairs);
    }

    //修改checkState
    @PatchMapping("/senders/{address}/status")
    public ResponseEntity<Void> updateStatus(
            @PathVariable String address,
            @RequestParam Integer status) {
        Optional<ThreeSender> sender = threeSenderRepository.findById(address);
        if (sender.isPresent()){
            sender.get().setStatus(status);
            threeSenderRepository.save(sender.get());
        }else
            return ResponseEntity.notFound().build();        
        return ResponseEntity.ok().build();
    }

    // 按状态获取任务
    @GetMapping("/senders/tasks/paged")
    public ResponseEntity<Page<SwapCallbackTask>> getSenderTasksByStatus(
        @RequestParam(defaultValue = "0") int page,
        @RequestParam(defaultValue = "200") int size,
        @RequestParam(defaultValue = "-100") int status,
        @RequestParam(defaultValue = "1") int chainId,
        //@RequestParam(defaultValue = "") String type,
        @RequestParam(defaultValue = "startTime") String sortBy,
        @RequestParam(defaultValue = "desc") String direction){
        Pageable pageable = PageRequest.of(page, size, Sort.by(Sort.Direction.fromString(direction), sortBy));
        Page<SwapCallbackTask> tasks;
        if (status==-100)
            tasks = swapCallbackTaskRepository.findByChainId((short)chainId,pageable);
        else
            tasks = swapCallbackTaskRepository.findByStatusAndChainId(status,(short)chainId,pageable);
        return ResponseEntity.ok(tasks);
    }

    @PostMapping("/senders/tasks/send/{taskId}")
    public ResponseEntity<String> sendTaskWithChainId(@PathVariable int taskId,@RequestParam(defaultValue = "1") int chainId) {
        try {
            System.out.println("收到taskId："+taskId);
            taskCreateService.sendTaskMessageWithChainId(taskId,chainId);
            return ResponseEntity.ok(String.format("任务 %d 发送成功", taskId));
        } catch (IllegalArgumentException e) {
            return ResponseEntity.badRequest().body(e.getMessage());
        } catch (Exception e) {
            return ResponseEntity.internalServerError()
                .body("发送失败: " + e.getMessage());
        }
    }

    /*
    @GetMapping
    public ResponseEntity<List<UniswapPair>> getAllPairs() {
        List<UniswapPair> pairs = pairService.getAllPairs();
        return ResponseEntity.ok(pairs);
    }
    
    // 获取活跃的交易对（deleted=0）
    @GetMapping("/pairs/active")
    public ResponseEntity<List<UniswapPair>> getActivePairs() {
        List<UniswapPair> pairs = pairService.getActivePairs();
        return ResponseEntity.ok(pairs);
    }
    
    // 根据pair_address获取特定交易对
    @GetMapping("/pairs/{pairAddress}")
    public ResponseEntity<UniswapPair> getPairByAddress(@PathVariable String pairAddress) {
        return pairService.getPairByAddress(pairAddress)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }
    
    // 根据token_address查询交易对
    @GetMapping("/pairs/token/{tokenAddress}")
    public ResponseEntity<List<UniswapPair>> getPairsByToken(@PathVariable String tokenAddress) {
        List<UniswapPair> pairs = pairService.getPairsByTokenAddress(tokenAddress);
        return ResponseEntity.ok(pairs);
    }
    
    // 获取价值大于指定值的交易对
    @GetMapping("/pairs/value/greater-than/{minValue}")
    public ResponseEntity<List<UniswapPair>> getPairsWithValueGreaterThan(@PathVariable Integer minValue) {
        List<UniswapPair> pairs = pairService.getPairsWithValueGreaterThan(minValue);
        return ResponseEntity.ok(pairs);
    }
    
    // 创建新交易对
    @PostMapping
    public ResponseEntity<UniswapPair> createPair(@RequestBody UniswapPair pair) {
        UniswapPair savedPair = pairService.savePair(pair);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedPair);
    }
    
    // 更新交易对信息
    @PutMapping("/pairs/{pairAddress}")
    public ResponseEntity<UniswapPair> updatePair(@PathVariable String pairAddress, @RequestBody UniswapPair pairDetails) {
        UniswapPair updatedPair = pairService.updatePair(pairAddress, pairDetails);
        if (updatedPair != null) {
            return ResponseEntity.ok(updatedPair);
        }
        return ResponseEntity.notFound().build();
    }
    
    // 删除交易对
    @DeleteMapping("/pairs/{pairAddress}")
    public ResponseEntity<Void> deletePair(@PathVariable String pairAddress) {
        pairService.deletePair(pairAddress);
        return ResponseEntity.noContent().build();
    } */
}
