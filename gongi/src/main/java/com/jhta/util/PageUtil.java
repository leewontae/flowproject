package com.jhta.util;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data

public class PageUtil {
	private int pageNum; //������ ��ȣ
	private int startRow;  //������ ��ȣ
	private int endRow;  //�����ȣ
	private int totalPageCount; //��ü ����������
	private int startPageNum; //������������ȣ
	private int endPageNum; //�������� ��ȣ
	private int rowBlockCount; //���� �������� ������ ���ǰ���
	private int pageBlockCount;  //���� �������� ������ �������� ����
	private int totalRowCount;  // ��ü���� ����
	
	/**  ������ ��ǥ�ΰ� �� ���� ���� ġ�� ���´�.
	 * @param pageNum ������ ��ȣ
	 * @param rowBlockCount ������ ���� ����
	 * @param pageBlockCount ������ ������ ����
	 * @param totalRowCount ��ü ���� ���� 
	 */
	
	public PageUtil(int pageNum, int rowBlockCount, int pageBlockCount, int totalRowCount) {
		
		this.pageNum= pageNum;
		this.rowBlockCount = rowBlockCount ;
		this.pageBlockCount = pageBlockCount; 
		this.totalRowCount = totalRowCount;
		
		startRow = (pageNum-1)*rowBlockCount+1; 
		endRow= startRow+ rowBlockCount-1; 
		totalPageCount = (int) Math.ceil(totalRowCount/(double)rowBlockCount);
		startPageNum = (pageNum-1)/pageBlockCount* pageBlockCount+1; 
		endPageNum=startPageNum+pageBlockCount-1;
		if(totalPageCount< endPageNum) {
			endPageNum=totalPageCount;
		}
		
	}
}