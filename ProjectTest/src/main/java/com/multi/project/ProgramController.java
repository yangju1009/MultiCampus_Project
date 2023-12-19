package com.multi.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProgramController {

	@Autowired
	ProgramService programService;

	@RequestMapping("list.program")
	public String list(Model model, ProgramVO programVO) {
		List<ProgramVO> list = programService.list(programVO);
		model.addAttribute("list", list);
		System.out.println(list);
		return "Program_list"; // 이동할 JSP 파일명을 반환
	}

	@RequestMapping("search.program")
	public String search(Model model, ProgramVO programVO) {
		List<ProgramVO> searchResults = programService.search(programVO);
		model.addAttribute("searchResults", searchResults);
		model.addAttribute("keyword", programVO.getKeyword()); // 추가된 부분
		return "Program_search"; // JSP 파일명을 반환
	}

	@RequestMapping("/Museum_list")
	public String showMuseumList() {
		// 컨트롤러 로직
		return "Museum_list"; // 이 부분은 실제 뷰의 이름일 수 있습니다.
	}

	@RequestMapping("/delete")
	public String delete(ProgramVO programVO, Model model) {
		programService.delete(programVO);
		return "Program_list";
	}

}
