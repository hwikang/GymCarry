package kr.goott.gymcarry.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PartnerController {
	
	
	@GetMapping(value="partner.do")
	public ModelAndView viewPartner(ModelAndView mav) {
		mav.setViewName("partner/partnerList");
		return mav;
	}
}
