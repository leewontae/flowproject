package com.jhta.gongi.controller;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.reflection.SystemMetaObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jhta.gongi.service.GongiService;
import com.jhta.gongi.vo.GongiVo;
import com.jhta.util.PageUtil;

@Controller
public class ListController {

	@Autowired private GongiService service; 
	
	
	@RequestMapping("/list")
	public ModelAndView list(@RequestParam(value="pageNum",defaultValue="1") int pageNum, String keyword,  String field) {
		
		int totalRowCount =0;
		List<GongiVo> list = null;	
		PageUtil pu;
			HashMap<String, Object> map = new HashMap<String, Object>();
			if(field == null) {
				
				map.put("field", field);
				map.put("keyword", keyword);
				totalRowCount = service.getCount(map);
			    pu = new PageUtil(pageNum, 5, 5, totalRowCount);
				int startRow = pu.getStartRow();
				int endRow = pu.getEndRow();
				
				map.put("startRow", startRow);
				map.put("endRow", endRow);
				
				list =  service.list(map);
				
			}else if(field.equals("all")) {
				
				System.out.println("all" + "keyword"+keyword);
				map.put("field", field);
				map.put("keyword", keyword);
				totalRowCount = service.allgetCount(map);
				System.out.println("totalRowCount" + totalRowCount);
			    pu = new PageUtil(pageNum, 5, 5, totalRowCount);
				int startRow = pu.getStartRow();
				int endRow = pu.getEndRow();
				System.out.println("startRow" + startRow);
				System.out.println("endRow" + endRow);
				map.put("startRow", startRow);
				map.put("endRow", endRow);
				
				list =  service.alllist(map);
			}
			else {
				
				map.put("field", field);
				map.put("keyword", keyword);
				
				totalRowCount = service.getCount(map);
			
				pu = new PageUtil(pageNum, 5, 5, totalRowCount);
				
				int startRow = pu.getStartRow();
				int endRow = pu.getEndRow();
				
				map.put("startRow", startRow);
				map.put("endRow", endRow);
				
				list =  service.list(map);
			}
			
			
			ModelAndView mv = new ModelAndView("list");
			
			mv.addObject("list", list);
			mv.addObject("pu",pu);
			mv.addObject("field",field);
			mv.addObject("keyword",keyword);
			
			
			
		
		return mv;
		
		
		
	}
}
