package com.jhta.gongi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.jhta.gongi.service.GongiService;
import com.jhta.gongi.vo.GongiVo;

@Controller
public class InsertController {

	@Autowired 
	private GongiService service; 
	
	
	@GetMapping("/insert")
	public String insertform() {
		
		return "insert";
	}
	
	@PostMapping("/insert")
	public String insert(GongiVo vo, Model model) {
		
		try {
			service.insert(vo);
		
			
		}catch (Exception e) {
			
			e.getMessage();
		
		}
		
		
		return "redirect:list";
	}
}
