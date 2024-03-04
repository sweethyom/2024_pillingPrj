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
		int pageOffset = vo.getCurrentPageNo(); //페이지 초기화
		if(pageOffset != 0) {
			pageOffset = (pageOffset - 1) * 5;
		}
		vo = cs.selectCount(); //전체 갯수를 가져오고
		int totalRecordCount = vo.getTotalRecordCount(); //전체 레코드 수
		int totalPageCount = ((totalRecordCount-1)/5)+1; //한 페이지에 보여줄 리스트 개수 
		int firstPage = ((pageOffset-1)/10) * 10+1; //시작페이지 페이지네이션 갯수 
		int lastPage = firstPage+10-1; //페이지 리스트에 보여줄 갯수
		if(lastPage > totalPageCount) {
			lastPage = totalPageCount;
		}
		
		vo.setFirstPageNoOnPageList(firstPage);
		vo.setLastPageNoOnPageList(lastPage);
		
		model.addAttribute("p", vo);
		model.addAttribute("notices",cs.noticeSelectList(pageOffset));
		return "pilling/menu/customerservice";
	}
	
	@RequestMapping("noticedetail")
	public String noticedetail(NoticeVO vo, Model model) {
		model.addAttribute("notice", cs.noticeDetail(vo));
		return "pilling/board/noticedetail";
	}
	
	@RequestMapping("noticeinsert")
	public String noticeinsert(NoticeVO vo, Model model) {
		model.addAttribute("notice", cs.noticeInsert(vo));
		return "pilling/board/noticeform";
	}
}
