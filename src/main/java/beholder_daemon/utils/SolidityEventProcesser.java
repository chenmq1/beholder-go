package beholder_daemon.utils;
import java.util.List;

import org.web3j.protocol.core.methods.request.EthFilter;
import org.web3j.protocol.core.methods.response.EthLog;
import org.web3j.protocol.core.methods.response.EthLog.LogResult;

public interface SolidityEventProcesser {
    public EventProcessResult processEvents(List<LogResult> listLogResult,EthFilter original);
}
