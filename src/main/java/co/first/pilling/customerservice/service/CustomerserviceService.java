package co.first.pilling.customerservice.service;

import java.util.List;

import co.first.pilling.common.PageVO;

public interface CustomerserviceService {
	List<NoticeVO> noticeSelectList(int offSet);

	List<NoticeVO> noticeSearchList(NoticeVO vo); // 리스트내 검색

	NoticeVO noticeDetail(NoticeVO vo); // 공지 상세보기

	int noticeInsert(NoticeVO vo); // 공지 작성

	int noticeUpdate(NoticeVO vo); // 공지 수정

	int noticeDelete(NoticeVO vo); // 공지 삭제

	PageVO selectCount();
}
