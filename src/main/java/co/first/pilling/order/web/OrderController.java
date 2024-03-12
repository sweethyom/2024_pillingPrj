package co.first.pilling.order.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.first.pilling.order.service.OrderService;
import co.first.pilling.order.service.OrderVO;
import co.first.pilling.shipping.service.ShippingService;
import co.first.pilling.shipping.service.ShippingVO;

@Controller
public class OrderController {
	@Autowired
	private OrderService os;
	
	@Autowired
	private ShippingService ss;
	
	@RequestMapping("makepayment")
	public String makepayment(OrderVO ov, ShippingVO sv, Model model) {
		os.orderInsert(ov);
		ss.shippingInsert(sv);
		model.addAttribute("order", os.orderSelect(ov));
		model.addAttribute("shipping", sv.getShippingId());
		return "pilling/product/orderresult";
	}
}
