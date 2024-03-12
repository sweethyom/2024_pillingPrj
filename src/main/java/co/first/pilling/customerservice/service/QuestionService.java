package co.first.pilling.customerservice.service;

import java.util.List;

import co.first.pilling.common.PageVO;

public interface QuestionService {
	List<QuestionVO> questionSelectList(int offSet); // 문의 리스트 보기

	List<QuestionVO> questionSearchList(QuestionVO vo); // 리스트내 검색

	QuestionVO questionDetail(QuestionVO vo); // 문의 상세보기

	int questionInsert(QuestionVO vo); // 문의 작성

	int questionUpdate(QuestionVO vo); // 문의 수정

	int questionDelete(QuestionVO vo); // 문의 삭제

	PageVO questionSelectCount(); // 문의 페이지네이션
	
	int questionUpdateHit(QuestionVO vo); // 문의 조회수 올리기
}
