package beholder_daemon.utils;

import org.web3j.protocol.core.methods.request.EthFilter;

public class EventProcessResult {
    public EthFilter newFilter = null;
    public boolean shouldContinue = true;
}
