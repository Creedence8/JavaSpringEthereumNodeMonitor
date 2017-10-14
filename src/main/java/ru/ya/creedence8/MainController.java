package ru.ya.creedence8;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Cole S' Offe on 14.10.2017.
 */
@Controller
public class MainController {
    Web3Entity web3Entity;

    @RequestMapping("/")
    public String render(Model model) {
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
}
