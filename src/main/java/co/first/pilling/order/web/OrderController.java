package co.first.pilling.order.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.first.pilling.cart.service.CartService;
import co.first.pilling.cart.service.CartVO;
import co.first.pilling.coupon.service.CouponService;
import co.first.pilling.coupon.service.CouponVO;
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

	@Autowired
	private CouponService cps;

	// 장바구니 물품 결제완료 후 order, shipping, orderdetail 테이블에 데이터 삽입
	@RequestMapping("makepayment")
	public String makepayment(@RequestParam("usePoint") int usePoint, OrderVO ov, ShippingVO sv, CartVO cv,
			OrderdetailVO odv, CouponVO cpv) {
		os.orderInsert(ov);
		ss.shippingInsert(sv);

		int orderId = ov.getOrderId();
		List<CartVO> cartList = cs.cartSelectList(cv);
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

		// 사용한 쿠폰 삭제
		System.out.println(cpv.getCouponId());
		cps.couponDelete(cpv);

		// 사용한 적립금 차감

		UserVO uv = new UserVO();
		uv.setUserNo(vo.getUserNo());

		System.out.println(usePoint);
		System.out.println(uv.getUserNo());

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("usePoint", usePoint);
		map.put("userNo", uv.getUserNo());

		us.updateUserPoint(map);

		return "redirect:/orderresult";
	}

	// 제품 바로구매->결제완료 후 order, shipping, orderdetail 테이블에 데이터 삽입
	@RequestMapping("makepaymentdirect")
	public String makepaymentdirect(@RequestParam("usePoint") int usePoint, OrderVO ov, OrderdetailVO odv, ShippingVO sv, CouponVO cpv) {
		os.orderInsert(ov);
		ods.orderdetailInsert(odv);
		ss.shippingInsert(sv);

		// 사용한 쿠폰 삭제
		System.out.println(cpv.getCouponId());
		cps.couponDelete(cpv);

		// 사용한 적립금 차감

		UserVO uv = new UserVO();
		uv.setUserNo(ov.getUserNo());

		System.out.println(usePoint);
		System.out.println(uv.getUserNo());

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("usePoint", usePoint);
		map.put("userNo", uv.getUserNo());

		us.updateUserPoint(map);

		return "redirect:/orderresult";
	}

	// 결제 완료 페이지로 이동
	@RequestMapping("orderresult")
	public String orderresult() {
		return "pilling/product/orderresult";
	}

	// 제품 페이지에서 바로주문
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
		cart.setFilepath(product.getFilepath1());

		int orderId = os.createOrderNo();

		// 가지고 있는 쿠폰 정보를 보내준다.
		List<CouponVO> couponList = cps.couponSelectList(uv.getUserNo());

		model.addAttribute("cart", cart);
		model.addAttribute("user", us.userSelect(uv));
		model.addAttribute("newOrderId", orderId);
		model.addAttribute("couponList", couponList);
		return "pilling/product/orderdirect";
	}
}
