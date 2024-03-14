package co.first.pilling.review.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import co.first.pilling.order.service.OrderVO;
import co.first.pilling.order.service.OrderdetailService;
import co.first.pilling.order.service.OrderdetailVO;

import co.first.pilling.review.service.ReviewService;
import co.first.pilling.review.service.ReviewVO;


@Controller
public class ReviewController {

	@Autowired
	private ReviewService rs;
	
	@Autowired
	private OrderdetailService ods;


	@RequestMapping("orderlist")
	public String Orderlist(HttpSession session) {
		List<OrderVO> orderlist = ods.orderdetailSelectList(); 
		
		if(orderDetailList != null) {
		
		for (OrderdetailVO orderDetail : orderDetailList) {

			String userId = (String) session.getAttribute("userId");
			int userNo = rs.reviewSearchId(userId);
			
		ReviewVO rv=new ReviewVO();
		rv.setUserNo(userNo);	
		rv.setProductId(orderDetail.getProductId());
		rv.setRating(0);
		rv.setReviewContent("");
		
		rs.reviewInsert(rv);
		}
	
	}
		return "redirect:/mypage/myreview";
	}
}