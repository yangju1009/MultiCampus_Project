package com.multi.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {

    @Autowired
    private LoginDAO loginDAO;

    public void insert(LoginVO loginVO) {
        loginDAO.insert(loginVO);
    }
}
