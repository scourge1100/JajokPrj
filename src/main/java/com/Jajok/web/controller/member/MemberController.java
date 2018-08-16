package com.Jajok.web.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping("/member/course/index")
	public String memberIndex(){
		return"WEB-INF/views/member/course/index.jsp";
	}
	@RequestMapping("/member/course/myList")
	public String myList() {
		return"WEB-INF/views/member/course/myList";
	}
	@RequestMapping("member/contest/index")
	public String contestIndex() {
		return"WEB-INF/views/member/contest/index";
	}
	@RequestMapping("member/group/index")
	public String groupIndex() {
		return"WEB-INF/views/member/group/index";
	}

}
