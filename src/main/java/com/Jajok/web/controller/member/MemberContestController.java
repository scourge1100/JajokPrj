package com.Jajok.web.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Jajok.web.entity.Member;

@Controller
@RequestMapping("/member/contest/")
public class MemberContestController {

	@RequestMapping("index")
	public String contestIndex() {
		return"contest/index";
	}
	@RequestMapping("insert")
	public String contestInsert(Member member) {
		return"contest/insert";
	}
}
