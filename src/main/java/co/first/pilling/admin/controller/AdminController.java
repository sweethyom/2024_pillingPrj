package co.first.pilling.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import co.first.pilling.admin.productmanagement.service.ProductManagementService;
import co.first.pilling.admin.productmanagement.service.ProductManagementVO;

@Controller
public class AdminController {
	
	@Autowired
	ProductManagementService pms;
	

	
	// 상품등록 페이지로 이동
	@GetMapping("productaddpage")
	public String productAddPage() {
		return "pilling/admin/productadd";
	}

	// 상품등록 알고리즘
	@PostMapping("productadd")
	public String productAdd(ProductManagementVO vo) {
		pms.productInsert(vo);
		pms.keywordInsert(vo); // 키워드 mapping테이블에 insert
		return "redirect:productpurchase";
	}
	
}
