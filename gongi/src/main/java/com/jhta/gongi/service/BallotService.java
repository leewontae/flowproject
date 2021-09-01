package com.jhta.gongi.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.jhta.mybatis.mapper.BallotMapper;


@Service
public class BallotService {

	
	@Autowired
	private BallotMapper ballotmapper;
	
	public int ballotinsert(HashMap<String, Object>map) {
		
		return ballotmapper.ballotinsert(map);
	}
	public int getnum() {
		return ballotmapper.getnum();
	}

	
	
}
