package co.first.pilling.cart.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
		List<CartVO> cartList = cs.cartSelectList(vo);
		for(CartVO cart : cartList) {
			String webPath = cart.getFilepath().replace("C:\\DEV\\eclipse_202103\\workspace\\PillingProject\\src\\main\\webapp\\", "");
			webPath = webPath.replace("\\", "/");
			cart.setFilepath(webPath);
		}
		
		model.addAttribute("carts", cartList);
		
		return "pilling/menu/cart";
	}
	
	@PostMapping("removecart")
	@ResponseBody
	public String removecart(CartVO vo) {
		cs.cartDelete(vo);
		String str = "Yes";
		return str;
	}
	
	@PostMapping("minuscart")
	@ResponseBody
	public String minuscart(CartVO vo) {
		cs.cartUpdateMinus(vo);
		String str = "Yes";
		return str;
	}
	
	@PostMapping("pluscart")
	@ResponseBody
	public String pluscart(CartVO vo) {
		cs.cartUpdatePlus(vo);
		String str = "Yes";
		return str;
	}
	
	@PostMapping("updatecart")
	@ResponseBody
	public String updatecart(CartVO vo) {
		cs.cartUpdate(vo);
		String str = "Yes";
		return str;
	}
}
