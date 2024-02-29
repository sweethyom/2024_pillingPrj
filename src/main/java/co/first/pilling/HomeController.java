package co.first.pilling;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

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

	// 제품구매리스트로 이동
	@RequestMapping("productpurchase")
	public String productPurchase(Model model) {
		return "pilling/menu/productpurchase";
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

    
  //고객센터 이동
  @RequestMapping("customerservice")
	public String customerService(Model model) {
		return "pilling/menu/customerservice";
	}

	// 방문예약 페이지 이동
	@RequestMapping("book")
	public String book(Model model) {
		return "pilling/menu/book";

	}

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
	

	@RequestMapping("myinfo")
	public String myinfo(Model model) {
		return "pilling/mypage/myinfo";
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
}
