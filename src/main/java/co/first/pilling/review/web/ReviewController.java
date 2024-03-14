package co.first.pilling.review.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import co.first.pilling.order.service.OrderVO;
import co.first.pilling.order.service.OrderdetailService;
import co.first.pilling.order.service.OrderdetailVO;
import co.first.pilling.product.service.ProductVO;
import co.first.pilling.review.service.ReviewService;
import co.first.pilling.review.service.ReviewVO;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService rs;
	
	@Autowired
	private OrderdetailService ods;
	
	@RequestMapping("orderlist")
	public String Orderlist(ReviewVO rv, OrderVO ov, OrderdetailVO odv, ProductVO pv, HttpSession session) {
		int orderId = (int)session.getAttribute("orderId");
		odv = ods.orderdetailSelect(odv);
		
			
		}
	}

