package com.peach.community.controller;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.peach.community.domain.UserVO;
import com.peach.community.service.MemberService;

@Controller
@RequestMapping("/login/*")
public class MemberController {
	@Inject
	MemberService service;
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
 	public void loginForm() throws Exception {}
	
	@RequestMapping(value = "/loginForm", method = RequestMethod.POST)
	public String login(UserVO vo, HttpServletRequest req,RedirectAttributes rttr) throws Exception {
	 
		HttpSession session = req.getSession();
		UserVO login = service.login(vo);
	 
		if(login == null) {
			session.setAttribute("user", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:/login/loginForm";
		} else {
			session.setAttribute("user", login);
			return "redirect:/";
		}
	}
	@RequestMapping(value = "/signupForm", method = RequestMethod.GET)
 	public void signupForm() throws Exception {}
	@RequestMapping(value = "/signupForm", method = RequestMethod.POST)
 	public String postsignupForm(UserVO vo) throws Exception {
		
		service.register(vo);
		
		return "redirect:/";
	}

	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
	 
	 session.invalidate();
	   
	 return "redirect:/";
	}

	//회원정보 수정
	@RequestMapping(value="/memberUpdateView", method = RequestMethod.GET)
	public String registerUpdateView() throws Exception{
		
		return "login/memberUpdateView";
	}

	@RequestMapping(value="/memberUpdate", method = RequestMethod.POST)
	public String registerUpdate(UserVO vo, HttpSession session) throws Exception{
		
		service.memberUpdate(vo);
		
		session.invalidate();
		
		return "redirect:/";
	}
}