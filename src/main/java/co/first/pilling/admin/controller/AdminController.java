package co.first.pilling.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	@ResponseBody
	public String productAdd(ProductManagementVO vo, Model model) {
		pms.productInsert(vo);
		pms.keywordInsert(vo); // 키워드 mapping테이블에 insert
		
		String str = "Yes";
		return str;
	}
	
}
