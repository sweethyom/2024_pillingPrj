package co.first.pilling.review.web;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.first.pilling.order.service.OrderService;
import co.first.pilling.order.service.OrderVO;
import co.first.pilling.order.service.OrderdetailService;
import co.first.pilling.order.service.OrderdetailVO;
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
		
		//주문 목록 가져오기
		List<OrderVO> orderList = os.getOrderListByUserNo(userNo);
		
		//주문 목록 모델에 추가
		model.addAttribute("orderList", orderList);
		
		return "pilling/mypage/mypurchasedetail";
	}
	
	@RequestMapping("orderdetail")
	public String purchaseDetailList(int orderId, Model model) {
		System.out.println("Received orderId: " + orderId); // 주문 ID 출력
		List<OrderdetailVO> orderDetailList = ods.getOrderdetailListByOrderId(orderId);
		
		model.addAttribute("orderDetailList", orderDetailList);
		
		return "mypurchasedetail";
	}
}