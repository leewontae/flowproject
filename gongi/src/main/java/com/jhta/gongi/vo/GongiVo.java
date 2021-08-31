package com.jhta.gongi.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class GongiVo {
	
	private int num;
	private String writer;
	private String title;
	private String content;
	private Date regdata;
	//스프링에서 date 수정 해줄라면 디폴트 있는 util만 가능하다. 
	//sql인 date는 디폴트 생성자가 없어서 사용 할수 없다. 
	
}