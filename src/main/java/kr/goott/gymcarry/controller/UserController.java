package kr.goott.gymcarry.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.goott.gymcarry.auth.SNSLogin;
import kr.goott.gymcarry.auth.SnsValue;
import kr.goott.gymcarry.model.dao.UserDAO;
import kr.goott.gymcarry.model.dto.UserDTO;

@Controller
public class UserController{
	final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Inject
	UserDAO userDAO;
	
	@Inject
	private SnsValue naverSns;
	
	@RequestMapping(value="/userJoin.do", method=RequestMethod.GET)
	public String userJoin(Model model) {
		logger.info("login GET ...");
		SNSLogin snsLogin = new SNSLogin(naverSns);
		model.addAttribute("naver_url", snsLogin.getNaverAuthURL());
		System.out.println(snsLogin.getNaverAuthURL());
		return "user/userJoin";
	}
	
	@RequestMapping(value="/user/naverLogin.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String naverLogin(Model model, @RequestParam String code) throws Exception {
		//1. code를 이용해서 access_token 받기
		//2. access_token을 이용해서 사용자 profile 정보 가져오기
		SNSLogin snsLogin = new SNSLogin(naverSns);
		UserDTO profile = snsLogin.getAccessToken(code);
		System.out.println("profile"+profile);
		model.addAttribute("result",profile);
		//model.addAttribute("result",profile);
		//3. DB 해당 유저가 존재하는 체크 (naverid 컬럼 추가)
		//User
		//4. 존재하면 강제 로그인, 미존재시 가입페이지로!
		return "user/naverLogin";
	}
	
	@RequestMapping(value="/user/emailLogin.do")
	public String emailLogin() {
		return "user/emailLogin";
	}
}
