package co.first.pilling;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	//홈으로 이동
	@RequestMapping("/")
	public String home(Model model) {
		return "home/home";
	}
	
	//홈으로 이동
	@RequestMapping("home")
	public String mainhome(Model model) {
		return "home/home";
	}
	
	//제품구매리스트로 이동
	@RequestMapping("productpurchase")
	public String productPurchase(Model model) {
		return "pilling/menu/productpurchase";
	}
	
	//로그인페이지 이동
	@RequestMapping("login")
	public String userLogin(Model model) {
		return "pilling/menu/login";
	}
	
	//회원가입페이지 이동
	@RequestMapping("registerpage")
	public String userRegister(Model model) {
		return "pilling/menu/register";
	}
	
	// 제품상세페이지 이동
	@RequestMapping("productdetailpage")
	public String productDetailPage(Model model) {
		return "pilling/product/productdetailpage";
  
	@RequestMapping("mypage")
	public String myPage(Model model) {
		return "pilling/menu/mypage";
	}
	
	@RequestMapping("book")
	public String book(Model model) {
		return "pilling/menu/book";
	}
}
