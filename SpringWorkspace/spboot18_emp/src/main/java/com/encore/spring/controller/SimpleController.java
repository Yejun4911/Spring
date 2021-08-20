package com.encore.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.encore.spring.domain.EmployeeDto;
import com.encore.spring.service.EmpService;

@Controller
public class SimpleController {
	
	@Autowired
	private EmpService empService;
	
	@GetMapping("index")
	public String index(Model model) {
		model.addAttribute("data","Boot...Simple Controller");
		
		return "result";
	}
	
	@GetMapping("emps")
	public String allEmps(Model model) throws Exception {
		List<EmployeeDto> list = empService.findAllEmployees();
		model.addAttribute("list",list.toString());
		
		return "list";
	}
}
