package co.first.pilling.productdetail.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.first.pilling.productdetail.service.ProductDetailService;
import co.first.pilling.productdetail.service.ProductDetailVO;

@Controller
public class ProductDetailController {

	@Autowired
	private ProductDetailService pds;

	@RequestMapping("productdetailpage")
	public String productDetail(Model model, @RequestParam("productId") int productId) {
	    model.addAttribute("detail", pds.productDetail(productId));
	    return "pilling/product/productdetailpage";
	}

}
