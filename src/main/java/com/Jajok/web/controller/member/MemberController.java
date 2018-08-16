package com.Jajok.web.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping("/member/course/list")
	public String list(){
		return"WEB-INF/views/member/course/list.jsp";
	}
	@RequestMapping("/member/course/myList")
	public String myList() {
		return"WEB-INF/views/member/course/myList";
	}

}
