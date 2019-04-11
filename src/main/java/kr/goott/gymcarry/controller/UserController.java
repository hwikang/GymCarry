package kr.goott.gymcarry.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.goott.gymcarry.model.dao.UserDAO;

@Controller
public class UserController{
	final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Inject
	UserDAO userDAO;
	
	@RequestMapping("/userJoin.do")
	public String userJoin() {
		return "user/userJoin";
	}
	@RequestMapping(value="/login.do",method = {RequestMethod.GET, RequestMethod.POST})
	public String login(HttpServletResponse res, Model model) {
		return "user/login";
	}

}
