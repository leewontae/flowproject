package com.jhta.gongi.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.mybatis.mapper.BallotMapper;
import com.jhta.mybatis.mapper.ItemMapper;

@Service
public class ItemService {

	@Autowired
	private ItemMapper itemmapper;
	
	public int iteminsert(HashMap<String, Object>map) {
		
		
		return itemmapper.iteminsert(map);
	}
}
