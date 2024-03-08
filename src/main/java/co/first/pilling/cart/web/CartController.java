package co.first.pilling.cart.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import co.first.pilling.cart.service.CartService;
import co.first.pilling.cart.service.CartVO;

@Controller
public class CartController {
	@Autowired
	private CartService cs;
	
	@PostMapping("addcart")
	@ResponseBody
	public String addcart(CartVO vo) {
		cs.cartInsert(vo);
		String str = "Yes";
		return str;
	}
	
	@RequestMapping("cart")
	public String movecart(CartVO vo, Model model) {
		model.addAttribute("carts", cs.cartSelectList(vo));
		return "pilling/menu/cart";
	}
	
	@PostMapping("removecart")
	@ResponseBody
	public String removecart(CartVO vo) {
		cs.cartDelete(vo);
		String str = "Yes";
		return str;
	}
}
