package ru.ya.creedence8;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.math.BigInteger;
import java.util.concurrent.ExecutionException;

/**
 * Created by Cole S' Offe on 12.10.2017.
 */
@Controller
public class MainController {
    Web3Entity web3Entity;

    @RequestMapping("/")
    public String renderingGeneric(Model model) throws ExecutionException, InterruptedException {
        try {
            web3Entity = new Web3Entity();
            model.addAttribute("error", "");
            model.addAttribute("clientVersion", web3Entity.getClientVersion());
            model.addAttribute("address", web3Entity.getAddress());
            model.addAttribute("balance", web3Entity.getBalance());
            model.addAttribute("balanceInETH", web3Entity.getBalanceInETH());
        }
        catch (Exception e) {
            model.addAttribute("error", "Невозможно установить соединение с клиентом эфириума!");
            model.addAttribute("clientVersion", "");
            model.addAttribute("address","");
            model.addAttribute("balance","");
            model.addAttribute("balanceInETH", "");
        }
        return "generic";

    }

    @RequestMapping("/example")
    public String renderingIndex() {

        return "index";

    }


}
