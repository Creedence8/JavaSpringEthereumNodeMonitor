package ru.ya.creedence8;

import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.DefaultBlockParameter;
import org.web3j.protocol.core.methods.response.Web3ClientVersion;
import org.web3j.protocol.http.HttpService;

import java.math.BigInteger;
import java.util.concurrent.ExecutionException;

/**
 * Created by Cole S' Offe on 12.10.2017.
 */
public class Web3Entity {

    String  clientVersion;
    String address;
    Web3j web3;

    public  Web3Entity() {
        try {
            web3 = Web3j.build(new HttpService());  // defaults to http://localhost:8545/
        }
        catch (Exception exc) {
            throw new RuntimeException();
        }
    }

    public String getClientVersion() throws ExecutionException, InterruptedException {
        Web3ClientVersion web3ClientVersion = web3.web3ClientVersion().sendAsync().get();
        return clientVersion = web3ClientVersion.getWeb3ClientVersion();
    }

    public String getAddress() throws ExecutionException, InterruptedException {
        return address = web3.ethCoinbase().sendAsync().get().getAddress();
    }

    public BigInteger getBalance() throws ExecutionException, InterruptedException {
        return web3.ethGetBalance(address, DefaultBlockParameter.valueOf("latest")).sendAsync().get().getBalance();
    }

    public BigInteger getBalanceInETH() throws ExecutionException, InterruptedException {
        return web3.ethGetBalance(address, DefaultBlockParameter.valueOf("latest")).sendAsync().get().getBalance().divide(BigInteger.valueOf(1000000000)).divide(BigInteger.valueOf(1000000000));
    }
}
