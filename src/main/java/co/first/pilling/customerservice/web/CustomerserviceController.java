package co.first.pilling.customerservice.web;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import co.first.pilling.common.PageVO;
import co.first.pilling.customerservice.service.CustomerserviceService;
import co.first.pilling.customerservice.service.NoticeVO;
import co.first.pilling.customerservice.service.QuestionService;
import co.first.pilling.customerservice.service.QuestionVO;
import co.first.pilling.customerservice.service.QuestionreplyService;
import co.first.pilling.customerservice.service.QuestionreplyVO;

@Controller
public class CustomerserviceController {
	@Autowired
	private CustomerserviceService cs;

	@Autowired
	private QuestionService qs;
	
	@Autowired
	private QuestionreplyService qrs;

	@RequestMapping("customerservice")
	public String customerservice(Model model, PageVO vo, PageVO qvo, @RequestParam(defaultValue="1") int currentPageNo, @RequestParam (defaultValue="1") int currentPageNoQuestion) {
		int pageSize = 5; // 페이지 바에 보여줄 페이지 개수 (ex- pageSize가 5면 1,2,3,4,5가 표시되고, 다음을 누르면 6,7,8,9,10이 표시됨)
		int boardSize = 5; // 한 페이지 당 나오는 게시글 개수, mapper.xml의 select문 limit와 맞춰줘야 한다.
		int pageOffset = currentPageNo; // 직전의 페이지 정보를 가져온다. 아래 if코드는 예외처리.
		if (pageOffset != 0) {
			pageOffset = (pageOffset - 1) * boardSize;
		}
		if (pageOffset < 0) {
			pageOffset = 0;
		}
		System.out.println("N 페이지오프셋(현재페이지): " + pageOffset);

		vo = cs.selectCount(); // 전체 게시글 수를 가져온다.
		// 전체 게시글 수 구하기
		int totalRecordCount = vo.getTotalRecordCount();
		System.out.println("N 토탈레코드카운트: " + totalRecordCount);

		// 총 페이지 수가 몇인지 구하기
		int totalPageCount = ((totalRecordCount - 1) / boardSize) + 1;
		System.out.println("N 토탈페이지카운트: " + totalPageCount);

		// 페이지네이션 첫번째 인덱스(페이지넘버)
		int firstPage = (pageOffset / (pageSize * boardSize)) * pageSize + 1;
		System.out.println("N 퍼스트페이지: " + firstPage);

		// 페이지네이션 마지막 인덱스(페이지넘버), if는 예외처리.
		int lastPage = firstPage + pageSize - 1;
		if (lastPage > totalPageCount) {
			lastPage = totalPageCount;
		}
		System.out.println("N 라스트페이지: " + lastPage);

		vo.setFirstPageNoOnPageList(firstPage);
		vo.setLastPageNoOnPageList(lastPage);
		vo.setTotalPageCount(totalPageCount);

		model.addAttribute("p", vo);
		model.addAttribute("notices", cs.noticeSelectList(pageOffset));
		// 공지 board END

		// 문의 board STRAT
		int pageSizeQ = 5;
		int boardSizeQ = 5;
		int pageOffsetQ = currentPageNoQuestion;
		if (pageOffsetQ != 0) {
			pageOffsetQ = (pageOffsetQ - 1) * boardSizeQ;
		}
		if (pageOffsetQ < 0) {
			pageOffsetQ = 0;
		}

		qvo = qs.questionSelectCount();
		// 전체 게시글 수 구하기
		int totalRecordCountQ = qvo.getTotalRecordCount();
		System.out.println("Q 토탈레코드카운트: " + totalRecordCountQ);

		// 총 페이지 수가 몇인지 구하기
		int totalPageCountQ = ((totalRecordCountQ - 1) / boardSizeQ) + 1;
		System.out.println("Q 토탈페이지카운트: " + totalPageCountQ);

		// 페이지네이션 첫번째 인덱스(페이지넘버)
		int firstPageQ = (pageOffsetQ / (pageSizeQ * boardSizeQ)) * pageSizeQ + 1;
		System.out.println("Q 퍼스트페이지: " + firstPageQ);

		// 페이지네이션 마지막 인덱스(페이지넘버), if는 예외처리.
		int lastPageQ = firstPageQ + pageSizeQ - 1;
		if (lastPageQ > totalPageCountQ) {
			lastPageQ = totalPageCountQ;
		}

		qvo.setFirstPageNoOnPageList(firstPageQ);
		qvo.setLastPageNoOnPageList(lastPageQ);
		qvo.setTotalPageCount(totalPageCountQ);

		model.addAttribute("qp", qvo);
		model.addAttribute("questions", qs.questionSelectList(pageOffsetQ));
		// 문의 board END
		return "pilling/menu/customerservice";
	}

	// 공지 조회
	@RequestMapping("noticedetail")
	public String noticedetail(NoticeVO vo, Model model) {
		model.addAttribute(cs.noticeUpdateHit(vo));
		model.addAttribute("notice", cs.noticeDetail(vo));
		return "pilling/board/noticedetail";
	}

	// 공지 작성 폼 호출
	@RequestMapping("noticeform")
	public String noticeform() {
		return "pilling/board/noticeform";
	}

	// 공지 삽입
	@RequestMapping("noticeinsert")
	public String noticeinsert(NoticeVO vo, Model model) {

		model.addAttribute(cs.noticeInsert(vo));
		return "redirect:/customerservice";
	}

	// 공지 수정 폼 호출
	@RequestMapping("noticeeditform")
	public String noticeeditform(NoticeVO vo, Model model) {
		model.addAttribute("notice", cs.noticeDetail(vo));
		return "pilling/board/noticeeditform";
	}

	// 공지 업데이트
	@RequestMapping("noticeupdate")
	public String noticeupdate(NoticeVO vo, Model model) {
		model.addAttribute(cs.noticeUpdate(vo));
		model.addAttribute("notice", cs.noticeDetail(vo));
		return "pilling/board/noticedetail";
	}

	// 공지 딜리트
	@RequestMapping("noticedelete")
	public String noticedelete(NoticeVO vo, Model model) {
		model.addAttribute(cs.noticeDelete(vo));
		return "redirect:/customerservice";
	}

	// 문의 조회
	@RequestMapping("questiondetail")
	public String questiondetail(QuestionVO vo, Model model) {
		model.addAttribute(qs.questionUpdateHit(vo));
		model.addAttribute("question", qs.questionDetail(vo));
		model.addAttribute("questionreply", qrs.questionreplySelectList(vo));
		return "pilling/board/questiondetail";
	}

	// 문의 작성 폼 호출
	@RequestMapping("questionform")
	public String questionform() {
		return "pilling/board/questionform";
	}

	// 문의 수정 폼 호출
	@RequestMapping("questioneditform")
	public String questioneditform(QuestionVO vo, Model model) {
		model.addAttribute("question", qs.questionDetail(vo));
		return "pilling/board/questioneditform";
	}

	// 문의 삽입
	@RequestMapping("questioninsert")
	public String questioninsert(QuestionVO vo, Model model) {
		model.addAttribute(qs.questionInsert(vo));
		return "redirect:/customerservice";
	}

	// 문의 업데이트 (2024년 3월 18일 오후 8시 50분 수정) // 수정한 부분 : return 값을 redirect로 변경 (리다이렉트 안하니까 값 제대로 나오지 않음)
	@RequestMapping("questionupdate")
	public String questionupdate(QuestionVO vo, Model model) {
		model.addAttribute(qs.questionUpdate(vo));
		model.addAttribute("question", qs.questionDetail(vo));
		return "redirect:/customerservice";
	}

	// 문의사항 삭제 (2024년 3월 18일 오후 8시 29분 수정) // 수정한 부분 : 주석 이름만 변경
	@RequestMapping("questiondelete")
	public String questiondelete(QuestionVO vo, Model model) {
		model.addAttribute(qs.questionDelete(vo));
		return "redirect:/customerservice";
	}
	
	// 문의사항 댓글 삽입
	@RequestMapping("questionreplyinsert")
	public String questionreplyinsert(QuestionreplyVO vo, Model model) {
		model.addAttribute("questionreply", qrs.questionreplyInsert(vo));
		return "redirect:/questionreplyreload?questionId=" + vo.getQuestionId();
	}
	
	// 문의사항 답변 삭제 (2024년 3월 18일 오후 8시 21분 수정) // 수정한 부분 : 주석 이름만 변경
	@RequestMapping("questionreplydelete")
	public String questionreplydelete(QuestionreplyVO vo, Model model) {
		model.addAttribute(qrs.questionreplyDelete(vo));
		return "redirect:/questionreplyreload?questionId=" + vo.getQuestionId();
	}
	
	// 문의 댓글 삽입/삭제 후 페이지 다시 불러오기
	@RequestMapping("questionreplyreload")
	public String questionreplyreload(QuestionVO vo, Model model) {
		model.addAttribute("question", qs.questionDetail(vo));
		model.addAttribute("questionreply", qrs.questionreplySelectList(vo));
		return "pilling/board/questiondetail";
	}
}
