package co.first.pilling.admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

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
	public String productAdd(ProductManagementVO vo, @RequestParam("productMainImage") CommonsMultipartFile file) {		
		// 업로드된 파일을 저장할 경로
		String insertPath = "C:\\DEV\\eclipse_202103\\workspace\\PillingProject\\src\\main\\webapp\\resources\\pilling\\img\\uploadimage";
		System.out.println(file.getOriginalFilename());
		System.out.println(insertPath);
		
		// 파일 업로드 구현
		// UUID를 랜덤으로 만들어 주는 것
		UUID uuid = UUID.randomUUID();
		// 파일 이름을 안겹치도록 만들기 위한 알고리즘
		String fileName = uuid + "_" + file.getOriginalFilename();
		
		File saveFile = new File(insertPath, fileName);
		
		System.out.println(saveFile + "==================================");
		
		try {
			file.transferTo(saveFile);
			vo.setFilename1(fileName);
			vo.setFilepath1(insertPath);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
		pms.productInsert(vo);
		pms.keywordInsert(vo);
		
		String str = "Yes";
		return str;
	}
	
}
