package co.first.pilling.common;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PageVO {
	private int currentPageNo; //현재 페이지 번호
	private int recordCountPerPage; //페이지에 보여줄 게시글 갯수
	private int pageSize; //페이지 리스트에 게시되는 페이지 건수 - SQL에서 가져온다
	private int totalRecordCount; //전체 게시물 건수(totalRecordCount -1) / recordCountPerPage + 1
	private int totalPageCount; //총 페이지 수
	private int firstPageNoOnPageList; //페이지리스트 시작페이지
										// (currentPageNo-1)/pageSize)*pageSize+1
	private int lastPageNoOnPageList; //페이지리스트 마지막페이지 번호
}
