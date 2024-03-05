package co.first.pilling.customerservice.web;

import javax.servlet.http.HttpSession;

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
		int pageSize = 5;
		int pageOffset = vo.getCurrentPageNo(); // 페이지 초기화
		if (pageOffset != 0) {
			pageOffset = (pageOffset - 1) * 5;
		}
		if (pageOffset < 0) {
			pageOffset = 0;
		}
		System.out.println("페이지오프셋(현재페이지): " + pageOffset);
		vo = cs.selectCount(); // 전체 갯수를 가져오고
		int totalRecordCount = vo.getTotalRecordCount(); // 전체 레코드 수
		System.out.println("토탈레코드카운트: " + totalRecordCount);
		int totalPageCount = ((totalRecordCount - 1) / 5) + 1; // 한 페이지에 보여줄 리스트 개수
		System.out.println("토탈페이지카운트: " + totalPageCount);
		int firstPage = (pageOffset / 25) * pageSize + 1; // 시작페이지 페이지네이션 갯수
		System.out.println("퍼스트페이지: " + firstPage);
		int lastPage = firstPage + pageSize - 1; // 페이지 리스트에 보여줄 갯수
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

	@RequestMapping("noticedetail")
	public String noticedetail(NoticeVO vo, Model model) {
		model.addAttribute("notice", cs.noticeDetail(vo));
		return "pilling/board/noticedetail";
	}

	@RequestMapping("noticeform")
	public String noticeform() {
		return "pilling/board/noticeform";
	}

	@RequestMapping("noticeinsert")
	public String noticeinsert(NoticeVO vo, Model model) {
		model.addAttribute(cs.noticeInsert(vo));
		return "redirect:/customerservice";
	}

	@RequestMapping("noticeeditform")
	public String noticeeditform(NoticeVO vo, Model model) {
		model.addAttribute("notice", cs.noticeDetail(vo));
		return "pilling/board/noticeeditform";
	}

	@RequestMapping("noticeupdate")
	public String noticeupdate(NoticeVO vo, Model model) {
		model.addAttribute(cs.noticeUpdate(vo));
		model.addAttribute("notice", cs.noticeDetail(vo));
		return "pilling/board/noticedetail";
	}

	@RequestMapping("noticedelete")
	public String noticedelete(NoticeVO vo, Model model) {
		model.addAttribute(cs.noticeDelete(vo));
		return "redirect:/customerservice";
	}
}
