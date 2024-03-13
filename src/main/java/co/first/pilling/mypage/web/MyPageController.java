package co.first.pilling.mypage.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.first.pilling.user.service.UserService;
import co.first.pilling.user.service.UserVO;

@Controller
public class MyPageController {
	// 회원정보확인창으로 이동

	@Autowired
	UserService udao;

	@RequestMapping(value = "myinfochk", method = RequestMethod.GET)
	public void getMyInfoChk() {
	}

	// 나의 정보 창으로 이동
	@RequestMapping(value = "myinfochk", method = RequestMethod.POST)
	public String postMyInfoChk(Model model, UserVO vo, HttpSession session) {
		String viewPage = null;
		vo.setUserId((String) session.getAttribute("userId"));
		vo = udao.userPassword(vo);
		if (vo != null) {
			session.setAttribute("userId", vo.getUserId());
			session.setAttribute("userLastname", vo.getUserLastname());
			session.setAttribute("userFirstname", vo.getUserFirstname());
			session.setAttribute("userBirthdate", vo.getUserBirthdate());
			session.setAttribute("userGender", vo.getUserGender());
			session.setAttribute("userTel", vo.getUserTel());
			session.setAttribute("userEmail", vo.getUserEmail());
			session.setAttribute("userAddr", vo.getUserAddr());
			session.setAttribute("userAddrdetail", vo.getUserAddrdetail());
			session.setAttribute("userTotalamount", vo.getUserTotalamount());
			session.setAttribute("userMarketingYn", vo.getUserMarketingYn());
			viewPage = "redirect:myinfopage";
		} else {
			model.addAttribute("message", "잘못된 비밀번호 입니다.");
			viewPage = "pilling/mypage/myinfo";
		}
		return viewPage;
	}

	@RequestMapping(value = "myinfoedit", method = RequestMethod.GET)
	public String getmyinfoedit(UserVO vo, Model model, HttpSession session) {
		model.addAttribute("userVO", udao.userRead((String) session.getAttribute("userId")));
		return "mypage/myinfopage";
	}

	@RequestMapping("outmyinfo")
	public String outmyinfo(HttpSession session, Model model, UserVO vo) {
		session.removeAttribute("userLastname");
		session.removeAttribute("userBirthdate");
		session.removeAttribute("userGender");
		session.removeAttribute("userTel");
		session.removeAttribute("userEmail");
		session.removeAttribute("userAddr");
		session.removeAttribute("userAddrdetail");
		session.removeAttribute("userTotalamount");
		session.removeAttribute("userMarketingYn");
		session.setAttribute("author", vo.getUserAuthor());
		return "redirect:mypage";
	}
	
	@RequestMapping(value = "myinfoedit", method = RequestMethod.POST)
	public String postmyinfoedit(UserVO vo, HttpSession session, Model model) throws Exception {
		vo.setUserId((String) session.getAttribute("userId"));
		udao.userUpdate(vo);
		return "mypage/myinfopage";
	}

	@RequestMapping(value="pswdedit", method = RequestMethod.POST)
	public String postpswdedit(UserVO vo, HttpSession session, Model model) {
		vo.setUserId((String) session.getAttribute("userId"));
		udao.userPswdUpdate(vo);
		String viewPage="pilling/mypage/myinfopage";
				return viewPage;
	}
	
	@RequestMapping(value = "memberwithdrawal", method = RequestMethod.GET)
	public void WithdrawGet() {
	}

	@RequestMapping(value = "memberwithdrawal", method = RequestMethod.POST)
	public String WithdrawPost(HttpSession session, UserVO vo, Model model, RedirectAttributes attr) throws Exception {
		String viewPage=null;
		vo.setUserId((String) session.getAttribute("userId"));
		vo = udao.userPassword(vo);
		if (vo != null) {
			udao.userWithdraw(vo);
			udao.userWithdrawinsert(vo);
			session.invalidate();

			viewPage="redirect:/";
		} else {
			model.addAttribute("message", "잘못된 비밀번호 입니다.");
			viewPage = "pilling/mypage/myinfo";
		}
		return viewPage;
	}
	
	@RequestMapping(value = "")
	
	
}