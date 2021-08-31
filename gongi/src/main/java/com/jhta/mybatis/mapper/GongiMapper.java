package com.jhta.mybatis.mapper;

import java.util.HashMap;
import java.util.List;

import com.jhta.gongi.vo.GongiVo;

public interface GongiMapper{
	
int insert(GongiVo vo);
int delete(int num);
int count(HashMap<String, Object> map);

List<GongiVo> list(HashMap<String, Object> map);


int allcount(HashMap<String, Object> map);

List<GongiVo> alllist(HashMap<String, Object> map);



}
