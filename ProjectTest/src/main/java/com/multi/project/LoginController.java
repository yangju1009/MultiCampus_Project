package com.multi.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

    @Autowired
    private LoginService loginService;

    @RequestMapping("/insert.login")
    public String insert(LoginVO loginVO, Model model) {
        System.out.println("Received Data: " + loginVO.toString());
        loginService.insert(loginVO);
        model.addAttribute("message", "Registration successful");
        return "RegisterSuccess";
    }
}

