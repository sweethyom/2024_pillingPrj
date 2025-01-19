package co.first.pilling;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.first.pilling.order.service.OrderService;
import co.first.pilling.user.service.UserService;
import co.first.pilling.user.service.UserVO;

@Controller
public class HomeController {

	@Autowired
	private UserService userService;

	// 홈으로 이동
	@RequestMapping("/")
	public String home(Model model, HttpSession session) {
		// 아래는 Boolean 타입으로 로그인을 해서 userId 세션이 있으면 참을 반환한다.
		Boolean isLoggedIn = (session.getAttribute("userId") != null);
		model.addAttribute("isLoggedIn", isLoggedIn);
		return "home/home";
	}

	// 홈으로 이동
	@RequestMapping("home")
	public String mainhome(Model model, HttpSession session) {
		// 아래는 Boolean 타입으로 로그인을 해서 userId 세션이 있으면 참을 반환한다.
		Boolean isLoggedIn = (session.getAttribute("userId") != null);
		model.addAttribute("isLoggedIn", isLoggedIn);
		return "home/home";
	}

	// 로그인페이지 이동
	@RequestMapping("login")
	public String userLogin(Model model) {
		return "pilling/menu/login";
	}

	// 회원가입페이지 이동
	@RequestMapping("registerpage")
	public String userRegister(Model model) {
		return "pilling/menu/register";
	}
	
	// 설문조사 페이지로 이동
	@RequestMapping("surveypage")
	public String surveyPage(Model model) {
		return "pilling/notiles/survey/surveypage";
	}

	// 브랜드소개 페이지 이동
	@RequestMapping("introduction")
	public String introduction(Model model) {
		return "pilling/menu/introduction";
	}

	// 회원정보확인 이동
	@RequestMapping("myinfo")
	public String myinfo(Model model) {
		return "pilling/mypage/myinfo";
	}

	// 회원정보수정 이동
	@RequestMapping("myinfopage")
	public String myinfopage(Model model) {
		return "pilling/mypage/myinfopage";
	}

	// 나의 리뷰 페이지 이동
	@RequestMapping("myreview")
	public String myreview(Model model) {
		return "pilling/mypage/myreview";
	}

	// 나의 문의 페이지 이동
	@RequestMapping("myinquiry")
	public String myinquiry(Model model) {
		return "pilling/mypage/myinquiry";

	}
	
	// 탈퇴페이지 이동
	@RequestMapping("withdrawal")
	public String withdrawal(Model model) {
		return "pilling/mypage/withdrawal";
	}
	
	
}
