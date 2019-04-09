package kr.goott.gymcarry.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommunityController {
	private static final Logger logger = LoggerFactory.getLogger(CommunityController.class);
	
	
	@RequestMapping(value="community.do")
	public String community(Model model) {
		String result="yaya";
		model.addAttribute("result",result);
		return "community/list";
	}
}
