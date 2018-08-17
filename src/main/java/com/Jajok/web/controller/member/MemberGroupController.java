package com.Jajok.web.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Jajok.web.entity.Member;

@Controller
@RequestMapping("/member/group/")
public class MemberGroupController {
	@RequestMapping("index")
	public String groupIndex() {
		return"group/index";
	}
	@RequestMapping("insert")
	public String groupInsert(Member member) {
		return"group/insert";
	}

}
