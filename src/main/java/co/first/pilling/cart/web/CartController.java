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
import co.first.pilling.coupon.service.CouponService;
import co.first.pilling.coupon.service.CouponVO;
import co.first.pilling.order.service.OrderService;
import co.first.pilling.user.service.UserService;
import co.first.pilling.user.service.UserVO;

@Controller
public class CartController {
	@Autowired
	private CartService cs;

	@Autowired
	private UserService us;

	@Autowired
	private OrderService os;
	
	@Autowired
	private CouponService cps;

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
		for (CartVO cart : cartList) {
			String webPath = cart.getFilepath()
					.replace("C:\\DEV\\eclipse_202103\\workspace\\PillingProject\\src\\main\\webapp\\", "");
			webPath = webPath.replace("\\", "/");
			cart.setFilepath(webPath);
		}

		model.addAttribute("carts", cartList);

		return "pilling/menu/cart";
	}

	@RequestMapping("order")
	public String order(CartVO cv, UserVO uv, Model model) {
		List<CartVO> cartList = cs.cartSelectList(cv);
		for (CartVO cart : cartList) {
			String webPath = cart.getFilepath()
					.replace("C:\\DEV\\eclipse_202103\\workspace\\PillingProject\\src\\main\\webapp\\", "");
			webPath = webPath.replace("\\", "/");
			cart.setFilepath(webPath);
		}

		int orderId = os.createOrderNo();

		// 가지고 있는 쿠폰 정보를 보내준다.
		List<CouponVO> couponList = cps.couponSelectList(uv.getUserNo());

		model.addAttribute("carts", cartList);
		model.addAttribute("user", us.userSelect(uv));
		model.addAttribute("newOrderId", orderId);
		model.addAttribute("couponList", couponList);
		
		return "pilling/product/order";
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
