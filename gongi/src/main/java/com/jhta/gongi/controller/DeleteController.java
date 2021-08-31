package com.jhta.gongi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.gongi.service.GongiService;
@Controller
public class DeleteController {
	@Autowired
	private GongiService service; 
	
	@RequestMapping("/delete")
	public String delete(int num) {
		
		service.delete(num);
		
		return "redirect:/list";
	
	}
}
