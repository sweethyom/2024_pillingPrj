package co.first.pilling;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.first.pilling.user.service.UserService;
import co.first.pilling.user.service.UserVO;

@Controller
public class HomeController {
	
	@Autowired
	private UserService userService;

	// 홈으로 이동
	@RequestMapping("/")
	public String home(Model model) {
		return "home/home";
	}

	// 홈으로 이동
	@RequestMapping("home")
	public String mainhome(Model model) {
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

	// 제품상세페이지 이동
	@RequestMapping("productdetailpage")
	public String productDetailPage(Model model) {
		return "pilling/product/productdetailpage";
	}

	// 마이페이지 이동
	@RequestMapping("mypage")
	public String myPage(Model model) {
		return "pilling/menu/mypage";
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

	// 장바구니 페이지 이동
	@RequestMapping("cart")
	public String cart(Model model) {
		return "pilling/menu/cart";
	}

	// 주문 페이지 이동
	@RequestMapping("order")
	public String order(Model model) {
		return "pilling/product/order";
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

	// 나의 주문상세내역 이동
	@RequestMapping("myorderdetail")
	public String myorderdetail(Model model) {
		return "pilling/mypage/myorderdetail";
	}

	// 나의 구매상세내역 이동
	@RequestMapping("mypurchasedetail")
	public String mypurchasedetail(Model model) {
		return "pilling/mypage/mypurchasedetail";
	}
}
