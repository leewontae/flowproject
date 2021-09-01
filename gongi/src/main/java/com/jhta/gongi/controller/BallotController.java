package com.jhta.gongi.controller;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.Date;
import java.sql.Time;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.apache.ibatis.reflection.SystemMetaObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.jhta.gongi.service.BallotService;
import com.jhta.gongi.service.ItemService;

@Controller
public class BallotController {
	@Autowired
	ServletContext sc;

	@GetMapping("/ballot")
	public String ballot() {
		
		
		return "ballot";
	}
	
	@Autowired BallotService ballotservice; 
	@Autowired ItemService itemservice; 
	@PostMapping("/ballot")
	public String balloradd(String title, String content, @RequestParam(value = "itemname[]") List<String> itemname,  @RequestParam(value = "file1[]") List<MultipartFile> file1, Model model,
			 String choicedate, String choicetime , String e_alarmcheck , String o_plural, String anonymity , int alarmval) {
		System.out.println("title : "+title +"content : "+content +"itemname : "+itemname +"file1 : "+file1);
		System.out.println("@@@@@@@@@@@@@@@@choicedate : "+choicedate +"choicetime : "+choicetime +"e_alarmcheck : "+e_alarmcheck);
		System.out.println("@@@@@@@@@@@@@@@@o_plural : "+o_plural +"anonymity : "+anonymity +"o_listaddcheck : "+alarmval);
		
		// db저장 하면된다. 
		HashMap<String, Object> ballotmap= new HashMap<String, Object>(); 
		HashMap<String, Object> itemmap= new HashMap<String, Object>(); 
		ballotmap.put("b_title", title);
		ballotmap.put("b_content", content);
		
		int itemnamesize = itemname.size();
		System.out.println("아이템 사이즈 : " + itemnamesize );
		
		int n = ballotservice.ballotinsert(ballotmap);
		if(n>0) {
			System.out.println("투표 정보 저장 ");
		}
		
		int b_num = ballotservice.getnum();
		String path= sc.getRealPath("/resources/img");  
		System.out.println("이미지저장경로 " + path);
		
		
		String e_orgimg="";
		String e_saveimg="";
		String i_name="";
		for(int i=0; i<itemnamesize; i++) {
			i_name = itemname.get(i);
			e_orgimg = file1.get(i).getOriginalFilename();
			e_saveimg = UUID.randomUUID() + "_" + e_orgimg;
			itemmap.put("i_name", i_name);
			itemmap.put("i_orgimg", e_orgimg);
			itemmap.put("i_saveimg", e_saveimg);
			itemmap.put("b_num", b_num);
			itemservice.iteminsert(itemmap);
			
		}
		
		try {
			for(int i=0; i<itemnamesize; i++) {
				InputStream is = file1.get(i).getInputStream();
				FileOutputStream fos = new FileOutputStream(path + "\\" + e_saveimg);
				FileCopyUtils.copy(is, fos);
				is.close();
				fos.close();
			}
			model.addAttribute("code","success");
			System.out.println("등록성공");
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("code","fail");
			System.out.println("등록실패");
		}
		
		return "home";
	}
}
