package co.first.pilling;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String home(Model model) {
		return "home/home";
	}
	
	@RequestMapping("home")
	public String mainhome(Model model) {
		return "home/home";
	}
	
	@RequestMapping("productpurchase")
	public String productPurchase(Model model) {
		return "pilling/menu/productpurchase";
	}
	
	@RequestMapping("login")
	public String userLogin(Model model) {
		return "pilling/menu/login";
	}
	
	@RequestMapping("registerpage")
	public String userRegister(Model model) {
		return "pilling/menu/register";
	}
}
