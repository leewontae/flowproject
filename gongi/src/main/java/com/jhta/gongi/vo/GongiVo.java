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
	//���������� date ���� ���ٶ�� ����Ʈ �ִ� util�� �����ϴ�. 
	//sql�� date�� ����Ʈ �����ڰ� ��� ��� �Ҽ� ����. 
	
}