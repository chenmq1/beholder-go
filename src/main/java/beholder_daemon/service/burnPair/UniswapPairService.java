package beholder_daemon.service.burnPair;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import beholder_daemon.entity.burnPair.UniswapPair;
import beholder_daemon.repository.burnPair.UniswapV2PairRepository;

@Service
public class UniswapPairService {
    @Autowired
    public UniswapV2PairRepository uniswapPairRepository;

    public void updateCheckStatus(String pairAddress, Integer checkStatus) {
        UniswapPair pair = uniswapPairRepository.findById(pairAddress).get();
        pair.setCheckState(checkStatus);
        uniswapPairRepository.save(pair); 
    }
}
