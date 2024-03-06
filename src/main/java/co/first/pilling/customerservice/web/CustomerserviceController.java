package co.first.pilling.customerservice.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.first.pilling.common.PageVO;
import co.first.pilling.customerservice.service.CustomerserviceService;
import co.first.pilling.customerservice.service.NoticeVO;

@Controller
public class CustomerserviceController {
	@Autowired
	private CustomerserviceService cs;

	@RequestMapping("customerservice")
	public String customerservice(Model model, PageVO vo) {
							// sysout은 실행해보면서 콘솔 보고 어떻게 돌아가는지 이해하기 편하라고 넣어놨습니다.
		int pageSize = 5; // 페이지 바에 보여줄 페이지 개수 (ex- pageSize가 5면 1,2,3,4,5가 표시되고, 다음을 누르면 6,7,8,9,10이 표시됨) 
		int boardSize = 5; // 한 페이지 당 나오는 게시글 개수, mapper.xml의 select문 limit와 맞춰줘야 한다.
		int pageOffset = vo.getCurrentPageNo(); // 직전의 페이지 정보를 가져온다. 아래 if코드는 예외처리.
		if (pageOffset != 0) {
			pageOffset = (pageOffset - 1) * boardSize;
		}
		if (pageOffset < 0) {
			pageOffset = 0;
		}
		System.out.println("페이지오프셋(현재페이지): " + pageOffset);

		vo = cs.selectCount(); // 전체 게시글 수를 가져온다.
		// 전체 게시글 수 구하기
		int totalRecordCount = vo.getTotalRecordCount(); 
		System.out.println("토탈레코드카운트: " + totalRecordCount);

		// 총 페이지 수가 몇인지 구하기
		int totalPageCount = ((totalRecordCount - 1) / boardSize) + 1;
		System.out.println("토탈페이지카운트: " + totalPageCount);

		// 페이지네이션 첫번째 인덱스(페이지넘버)
		int firstPage = (pageOffset / (pageSize * boardSize)) * pageSize + 1;
		System.out.println("퍼스트페이지: " + firstPage);

		// 페이지네이션 마지막 인덱스(페이지넘버), if는 예외처리.
		int lastPage = firstPage + pageSize - 1;
		if (lastPage > totalPageCount) {
			lastPage = totalPageCount;
		}
		System.out.println("라스트페이지: " + lastPage);

		vo.setFirstPageNoOnPageList(firstPage);
		vo.setLastPageNoOnPageList(lastPage);

		model.addAttribute("p", vo);
		model.addAttribute("notices", cs.noticeSelectList(pageOffset));
		return "pilling/menu/customerservice";
	}

	//공지 조회
	@RequestMapping("noticedetail")
	public String noticedetail(NoticeVO vo, Model model) {
		model.addAttribute("notice", cs.noticeDetail(vo));
		return "pilling/board/noticedetail";
	}

	//공지 작성 폼 호출
	@RequestMapping("noticeform")
	public String noticeform() {
		return "pilling/board/noticeform";
	}

	//공지 삽입
	@RequestMapping("noticeinsert")
	public String noticeinsert(NoticeVO vo, Model model) {
		model.addAttribute(cs.noticeInsert(vo));
		return "redirect:/customerservice";
	}

	//공지 수정 폼 호출
	@RequestMapping("noticeeditform")
	public String noticeeditform(NoticeVO vo, Model model) {
		model.addAttribute("notice", cs.noticeDetail(vo));
		return "pilling/board/noticeeditform";
	}

	//공지 업데이트
	@RequestMapping("noticeupdate")
	public String noticeupdate(NoticeVO vo, Model model) {
		model.addAttribute(cs.noticeUpdate(vo));
		model.addAttribute("notice", cs.noticeDetail(vo));
		return "pilling/board/noticedetail";
	}

	//공지 딜리트
	@RequestMapping("noticedelete")
	public String noticedelete(NoticeVO vo, Model model) {
		model.addAttribute(cs.noticeDelete(vo));
		return "redirect:/customerservice";
	}
}
