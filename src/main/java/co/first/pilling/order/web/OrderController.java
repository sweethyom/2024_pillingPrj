package co.first.pilling.order.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.first.pilling.cart.service.CartService;
import co.first.pilling.cart.service.CartVO;
import co.first.pilling.order.service.OrderService;
import co.first.pilling.order.service.OrderVO;
import co.first.pilling.order.service.OrderdetailService;
import co.first.pilling.order.service.OrderdetailVO;
import co.first.pilling.productdetail.service.ProductDetailService;
import co.first.pilling.productdetail.service.ProductDetailVO;
import co.first.pilling.shipping.service.ShippingService;
import co.first.pilling.shipping.service.ShippingVO;
import co.first.pilling.user.service.UserService;
import co.first.pilling.user.service.UserVO;

@Controller
public class OrderController {
	@Autowired
	private OrderService os;

	@Autowired
	private OrderdetailService ods;

	@Autowired
	private ShippingService ss;

	@Autowired
	private CartService cs;
	
	@Autowired
	private ProductDetailService pds;
	
	@Autowired
	private UserService us;

	@RequestMapping("makepayment")
	public String makepayment(OrderVO ov, ShippingVO sv, CartVO cv, HttpSession session) {
		os.orderInsert(ov);
		ss.shippingInsert(sv);
		
		List<CartVO> cartList = cs.cartSelectList(cv);
		session.setAttribute("cartList", cartList);
		session.setAttribute("orderId", ov.getOrderId());
		
		return "redirect:/orderresult";
	}

	@RequestMapping("orderresult")
	public String orderresult(OrderdetailVO odv, HttpSession session) {
		List<CartVO> cartList = (List<CartVO>)session.getAttribute("cartList");
		int orderId = (int)session.getAttribute("orderId");
		
		// 각 상품에 대한 주문 상세 정보를 orderdetail 테이블에 삽입
		for (CartVO cart : cartList) {
			odv.setOrderId(orderId);
			odv.setProductId(cart.getProductId());
			odv.setOrderdetailPrice(cart.getProductPrice());
			odv.setOrderdetailCount(cart.getCartProdcnt());
			ods.orderdetailInsert(odv);
		}

		// 카트 전체 삭제
		CartVO vo = cartList.get(0);
		cs.cartDeleteAll(vo);
		session.removeAttribute("cartList");

		return "pilling/product/orderresult";
	}
	
	@RequestMapping("orderdirect")
	public String orderdirect(UserVO uv, CartVO cv, ProductDetailVO pv, Model model) {
		ProductDetailVO product = new ProductDetailVO();
		product = pds.productDetail(pv.getProductId());
		
		CartVO cart = new CartVO();
		cart.setUserNo(uv.getUserNo());
		cart.setProductId(product.getProductId());
		cart.setProductName(product.getProductName());
		cart.setProductPrice(product.getProductPrice());
		cart.setCartProdcnt(cv.getCartProdcnt());
		cart.setFilepath(product.getFilename1());
		
		int orderId = os.createOrderNo();
		
		model.addAttribute("cart", cart);
		model.addAttribute("user", us.userSelect(uv));
		model.addAttribute("newOrderId", orderId);
		return "pilling/product/orderdirect";
	}
}
