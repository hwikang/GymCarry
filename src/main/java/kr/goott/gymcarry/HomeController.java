package kr.goott.gymcarry;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.goott.gymcarry.model.dao.CommunityDAO;
import kr.goott.gymcarry.model.dto.CommunityDTO;



@Controller
public class HomeController {
	@Inject
	CommunityDAO communityDAO;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		/*List<CommunityDTO> list = communityDAO.comList();
		logger.info(list.get(0).getComImage()+"==========");
		model.addAttribute("uploadPath", "");
		model.addAttribute("list", list);  //占쏙옙占� 커占승댐옙티 占쏙옙占쏙옙트*/
		
	
		return "home";
	}
	
	
}
