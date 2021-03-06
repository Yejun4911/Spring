package com.encore.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class IndexController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mv = new ModelAndView(); // 뷰 페이지 이름, 이동 경로(디폴트가 무조건 forward), 데이터 바인딩까지 다 할 수 있는 라이브러리
		
		mv.setViewName("result"); // 확장자 안써도된다.
		mv.addObject("message", "Hello SpringMVC Framework!!");
		
		return mv;
	}

}
