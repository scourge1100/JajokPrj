package com.Jajok.web.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Jajok.web.entity.Member;

//코스 컨트롤
@Controller
@RequestMapping("/member/course/")
public class MemberCourseController {

	@RequestMapping("index")
	public String memberIndex(Model model) {
		model.addAttribute("test","Hello");
		return "course/index.jsp";
	}

	@RequestMapping("myList")
	public String myList(Member member) {
		return "course/myList";
	}
}