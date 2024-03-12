package co.first.pilling.order.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import co.first.pilling.order.service.OrderService;

@Controller
public class OrderController {
	@Autowired
	private OrderService os;
	
	
}
