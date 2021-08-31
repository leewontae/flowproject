package com.jhta.gongi.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.gongi.vo.GongiVo;
import com.jhta.mybatis.mapper.GongiMapper;

@Service
public class GongiService {

	
	@Autowired
	private GongiMapper gogimapper; 
	
	public int insert(GongiVo vo) {
		
		return gogimapper.insert(vo);
		
	}
	public List<GongiVo> list(HashMap<String, Object>map){
		
		return gogimapper.list(map);
	}
	public int getCount(HashMap<String, Object>map) {
		return gogimapper.count(map);
	}
public List<GongiVo> alllist(HashMap<String, Object>map){
		
		return gogimapper.alllist(map);
	}
	public int allgetCount(HashMap<String, Object>map) {
		return gogimapper.allcount(map);
	}
	public int delete(int num) {
		return gogimapper.delete(num);
	}
}
