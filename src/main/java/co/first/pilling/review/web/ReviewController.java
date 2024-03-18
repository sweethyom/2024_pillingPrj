package co.first.pilling.review.web;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.first.pilling.order.service.OrderService;
import co.first.pilling.order.service.OrderVO;
import co.first.pilling.order.service.OrderdetailService;
import co.first.pilling.order.service.OrderdetailVO;
import co.first.pilling.review.service.ReviewVO;
import co.first.pilling.user.service.UserService;



@Controller
public class ReviewController {

	
	@Autowired
	private OrderdetailService ods;
	
	@Autowired
	private OrderService os;
	
	@Autowired
	private UserService us;
	
	@RequestMapping("mypurchasedetail")
	public String purchaseList(OrderdetailVO odv, OrderVO ov, Model model, HttpSession session) {
		String userId=(String)session.getAttribute("userId");
		int userNo = us.getUserNoByUserId(userId);
		session.setAttribute("orderId", ov.getOrderId());
		//주문 목록 가져오기
		List<OrderVO> orderList = os.getOrderListByUserNo(userNo);
		
		//주문 목록 모델에 추가
		model.addAttribute("orderList", orderList);

		
		//주문상세목록
		List<OrderdetailVO> orderDetailList = ods.orderdetailList();
		model.addAttribute("orderDetailList", orderDetailList);
		for(int i =0; i<orderDetailList.size(); i++) {			
	}
		return "pilling/mypage/mypurchasedetail";
	}
	
	@RequestMapping("newreview")
	public String reviewList(@RequestParam("orderId") int orderId, @RequestParam("productName") String productName, ReviewVO vo, OrderVO ov, Model model, HttpSession session, HttpServletRequest hsrequest) {
		//int orderId = Integer.parseInt(hsrequest.getParameter("orderId"));
		
		//주문 목록 가져오기
		OrderVO newVo= new OrderVO() ;
		newVo.setOrderId(orderId);
		OrderVO order = os.orderSelect(newVo);
		
		//주문 목록 모델에 추가
		model.addAttribute("order", order);
		model.addAttribute("productName", productName);
		
		//주문상세목록
		List<OrderdetailVO> orderDetailList = ods.getOrderdetailListByOrderId(orderId);
		model.addAttribute("orderDetailList", orderDetailList);

		return "pilling/mypage/newreview";
	
	}
}