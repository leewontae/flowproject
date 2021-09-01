package com.jhta.mybatis.mapper;

import java.util.HashMap;

public interface BallotMapper {

	int ballotinsert(HashMap<String, Object> map);
	int getnum();
	
}
