package kr.goott.gymcarry.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.goott.gymcarry.auth.SNSLogin;
import kr.goott.gymcarry.auth.SnsValue;
import kr.goott.gymcarry.model.dao.UserDAOInterface;
import kr.goott.gymcarry.model.dto.UserDTO;

@Controller
@RequestMapping("/user/*")
public class UserController {
	final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Inject
	UserDAOInterface userDAO;

	@Inject
	private SnsValue naverSns;

	@RequestMapping(value = "userJoin.do", method = RequestMethod.GET)
	public String userJoin(Model model) {
		logger.info("login GET ...");
		SNSLogin snsLogin = new SNSLogin(naverSns);
		model.addAttribute("naver_url", snsLogin.getNaverAuthURL());
		System.out.println(snsLogin.getNaverAuthURL());
		return "user/userJoin";
	}

	@RequestMapping(value = "login.do")
	public String userLogin() {
		logger.info("userLogin page view...");
		return "user/userLogin";
	}

	@RequestMapping(value = "loginChk.do", method = RequestMethod.POST)
	public ModelAndView userLoginChk(UserDTO dto, HttpSession session) {
		logger.info("loginCheck page view...");
		// 일치하면 이름이 넘어오고 틀리면 null이 넘어옴
		UserDTO dto2 = userDAO.loginCheck(dto);
		if (dto2.getUsername() != null) { // 맞으면
			// 세션변수 등록
			session.setAttribute("userid", dto2.getUserid());
			session.setAttribute("username", dto2.getUsername());
			session.setAttribute("loginCheck", "Y");
			return new ModelAndView("/home");
		} else {
			return new ModelAndView("user/userLogin");
		}
	}

	@RequestMapping(value = "logout.do")
	public String logout(HttpSession session) {
		logger.info("logout success...");
		session.invalidate();
		return "/home";
	}

	@RequestMapping(value = "naverLogin.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String naverLogin(Model model, @RequestParam String code) throws Exception {
		// 1. code를 이용해서 access_token 받기
		// 2. access_token을 이용해서 사용자 profile 정보 가져오기
		SNSLogin snsLogin = new SNSLogin(naverSns);
		UserDTO profile = snsLogin.getAccessToken(code);
		System.out.println("profile" + profile);
		model.addAttribute("result", profile);
		// model.addAttribute("result",profile);
		// 3. DB 해당 유저가 존재하는 체크 (naverid 컬럼 추가)
		// User
		// 4. 존재하면 강제 로그인, 미존재시 가입페이지로!
		return "user/naverLogin";
	}

	@RequestMapping(value = "registerEmail.do")
	public String emailLogin() {
		logger.info("registerEmail page view...");
		return "user/registerEmail";
	}

	@RequestMapping(value = "direct.do", method = RequestMethod.POST)
	public ModelAndView registerEmail(@ModelAttribute UserDTO dto) {
		logger.info("registerDone page view...");
		userDAO.insertUser(dto);
		ModelAndView mav = new ModelAndView();
		mav.addObject("userid", dto.getUserid());
		System.out.println(dto.getUserid());
		mav.setViewName("user/registerDone");
		return mav;
	}

	@RequestMapping(value = "myProfile.do")
	public String myProfile() {
		logger.info("myprofile page view...");
		return "user/myProfile";
	}

	@RequestMapping(value = "regAddInfo.do")
	public ModelAndView regAddInfo(@RequestParam String userid) {
		logger.info("regAddInfo page view...");
		UserDTO dto = new UserDTO();
		System.out.println("reguserid=" + userid);
		dto = userDAO.userInfo(userid);
		return new ModelAndView("user/regAddInfo", "userDTO", dto);
	}

	@RequestMapping(value="regAddDone.do", method = RequestMethod.POST) public
	String regAddDone(@ModelAttribute UserDTO dto) {
	logger.info("regAddDone page view"); 
	logger.info(dto.toString());
	int cnt = userDAO.addInfoUser(dto);
		if(cnt==1) { 
			return "/home";
		}
		else { 
			return "redirect:/regAddInfo"; 
			} 
	}
	
	@RequestMapping(value = "findId.do")
	public String findId() {
		logger.info("findId page view...");
		return "user/findId";
	}
	@RequestMapping(value = "findIdSuccess.do")
	public String findIdSuccess(@ModelAttribute UserDTO dto) {
		return "";
	}
	@RequestMapping(value = "findPwd.do")
	public String findPwd() {
		logger.info("findPwd page view...");
		return "user/findPwd";
	}
}
