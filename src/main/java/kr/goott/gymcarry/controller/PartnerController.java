package kr.goott.gymcarry.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.goott.gymcarry.model.dao.PartnerDAO;
import kr.goott.gymcarry.model.dto.UserDTO;

@Controller
public class PartnerController {
	
	@Inject
	PartnerDAO partnerDAO;
	
	@GetMapping(value="partner.do")
	public ModelAndView viewPartner(ModelAndView mav) {
		mav.setViewName("partner/partnerList");
		List<UserDTO> list = partnerDAO.getAllUser();
		
		mav.addObject("list",list);
		return mav;
	}
}
