package co.first.pilling.customerservice.map;

import java.util.List;

import co.first.pilling.common.PageVO;
import co.first.pilling.customerservice.service.NoticeVO;
import co.first.pilling.question.service.QuestionVO;

public interface QuestionMapper {
	List<QuestionVO> questionSelectList(int offSet); // 문의 리스트 보기

	List<QuestionVO> questionSearchList(NoticeVO vo); // 리스트내 검색

	NoticeVO questionDetail(NoticeVO vo); // 문의 상세보기

	int questionInsert(NoticeVO vo); // 문의 작성

	int questionUpdate(NoticeVO vo); // 문의 수정

	int questionDelete(NoticeVO vo); // 문의 삭제

	PageVO questionSelectCount(); // 문의 페이지네이션
}
