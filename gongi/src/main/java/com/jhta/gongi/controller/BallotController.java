package com.jhta.gongi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BallotController {
 
	@RequestMapping("/ballot")
	public String ballot() {
		
		
		return "ballot";
	}
}
