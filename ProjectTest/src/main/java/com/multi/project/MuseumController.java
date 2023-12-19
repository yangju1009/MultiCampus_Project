package com.multi.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MuseumController {

    @Autowired
    MuseumDAO dao;

    @RequestMapping("list.museum")
    public String list(Model model, MuseumVO museumVO) {
        List<MuseumVO> list = dao.list(museumVO);
        model.addAttribute("list", list);
        System.out.println(list);
        return "Museum_list"; // 이동할 JSP 파일명을 반환
    }
}
