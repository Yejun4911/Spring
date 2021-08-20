package com.peach.communtiy;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.peach.community.domain.BoardVO;
import com.peach.community.domain.PriceVO;
import com.peach.community.service.BoardService;
import com.peach.community.service.PriceService;


@Controller
public class HomeController {
	
	@Autowired
	private BoardService service;
	@Autowired
	private PriceService service2;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model,PriceVO vo) throws Exception{
		List<BoardVO> list = null;
	 	list = service.best();	
	 	model.addAttribute("list", list);
	 	
	 	List<BoardVO> list2 = null;
	 	list2 = service.newboard();	
	 	model.addAttribute("list2", list2);
	 	
	 	PriceVO how=service2.price(vo);
	 	model.addAttribute("Price",how);
		
	
		return "home";
	}
	
}
