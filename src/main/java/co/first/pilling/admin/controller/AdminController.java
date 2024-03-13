package co.first.pilling.admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import co.first.pilling.admin.productmanagement.service.ProductManagementService;
import co.first.pilling.admin.productmanagement.service.ProductManagementVO;

@Controller
public class AdminController {
	
	@Autowired
	ProductManagementService pms;
	
	
	// 관리자 페이지로 이동
	@GetMapping("admin")
	public String admin() {
		return "admin/adminhome";
	}
	
	@RequestMapping("adminproductlist")
	public ModelAndView adminProductList(ModelAndView mav) {
		List<ProductManagementVO> productList = pms.productAllList();
		
		// 모델과 뷰에 값 실어주기
		mav.addObject("productlist", productList);
		mav.setViewName("admin/productmanagement/adminproductlist");
		// 정의된 값 return
		return mav;
	}
	
	// 상품등록 페이지로 이동
	@GetMapping("productaddpage")
	public String productAddPage() {
		return "admin/productmanagement/productadd";
	}

	// 상품등록 알고리즘
	@PostMapping("productadd")
	@ResponseBody
	public String productAdd(ProductManagementVO vo, @RequestParam("productMainImage") CommonsMultipartFile mainImage, @RequestParam("productSubImage") CommonsMultipartFile subImage, Model model) {		
		// 메인이미지를 저장할 경로
		String mainImagePath = saveFile(mainImage, "C:\\DEV\\eclipse_202103\\workspace\\PillingProject\\src\\main\\webapp\\resources\\pilling\\img\\productmainimage");
		vo.setFilename1(mainImage.getOriginalFilename());
		vo.setFilepath1(mainImagePath);
		
		// 서브이미지를 저장할 경로
		String subImagePath = saveFile(subImage, "C:\\DEV\\eclipse_202103\\workspace\\PillingProject\\src\\main\\webapp\\resources\\pilling\\img\\productsubimage");
		vo.setFilename2(subImage.getOriginalFilename());
		vo.setFilepath2(subImagePath);
		
		//DB에 저장하기 위한 코드
		pms.productInsert(vo);
		pms.keywordInsert(vo);
		
		String str = "Yes";
		return str;
	}
	
	// 파일 이름 변경과 저장을 위한 알고리즘
	private String saveFile(CommonsMultipartFile file, String directoryPath) {
		
		//UUID를 랜덤으로 생성해, 파일 명의 중복을 예방
	    UUID uuid = UUID.randomUUID();
	    
	    //생성된 UUID와 파일이름을 합쳐서 파일이름을 구성
	    String fileName = uuid + "_" + file.getOriginalFilename();
	    File saveFile = new File(directoryPath, fileName);
	    
	    try {
	        file.transferTo(saveFile);
	    } catch (IllegalStateException | IOException e) {
	        e.printStackTrace();
	    }
	    return directoryPath + "\\" + fileName; // 저장된 파일의 전체 경로 반환
	}
	@PostMapping("stockUpdate")
	@ResponseBody
	public String stockUpdate(ProductManagementVO vo) {
		pms.stockUpdate(vo);

		String str = "Yes";
		return str;
	}
	
	@PostMapping("productdelete")
	@ResponseBody
	public String productDelete(@RequestBody ProductManagementVO vo) {
		pms.productDelete(vo);
		
		return "Yes";
	}
}
