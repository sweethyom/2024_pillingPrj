package co.first.pilling.admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

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
	
	@Autowired
	private ServletContext servletContext;
	
	
	// 관리자 페이지로 이동
	@GetMapping("admin")
	public ModelAndView admin(HttpServletRequest request) {
	    ModelAndView mav = new ModelAndView();
	    // 사용자 권한 확인 로직
	    String author = (String) request.getSession().getAttribute("author");
	    
	    // 접근권한 로직
	    if(!"ADMIN".equals(author)) {
	        mav.setViewName("redirect:/home");
	        return mav;
	    }

	    List<ProductManagementVO> productList = pms.productAllList();
	    
	    // 모델과 뷰에 값 실어주기
	    mav.addObject("productlist", productList);
	    mav.setViewName("admin/adminhome");

	    // 정의된 값 return
	    return mav;
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
	public String productAddPage(HttpServletRequest session) {
		// 사용자 권한 확인 로직
		String author = (String) session.getSession().getAttribute("author");
		
		// 접근권한 로직
		if(!"ADMIN".equals(author)) {
			return "redirect:/home";
		} else {
			return "admin/productmanagement/productadd";
		}
		
	}

	// 상품등록 알고리즘
	@PostMapping("productadd")
	@ResponseBody
	public String productAdd(ProductManagementVO vo, @RequestParam("productMainImage") CommonsMultipartFile mainImage, @RequestParam("productSubImage") CommonsMultipartFile subImage, Model model) {		
	    // 메인 이미지 저장 및 DB 경로 준비
	    String mainImagePathForDB = saveImageAndGetPathForDB(mainImage, "productmainimage");
	    vo.setFilename1(mainImage.getOriginalFilename());
	    vo.setFilepath1(mainImagePathForDB);

	    // 서브 이미지 저장 및 DB 경로 준비
	    String subImagePathForDB = saveImageAndGetPathForDB(subImage, "productsubimage");
	    vo.setFilename2(subImage.getOriginalFilename());
	    vo.setFilepath2(subImagePathForDB);

	    // DB에 상품 정보 저장
	    pms.productInsert(vo);
	    pms.keywordInsert(vo);

	    return "Yes";
	}
	
	@PostMapping("stockUpdate")
	@ResponseBody
	public String stockUpdate(ProductManagementVO vo) {
		pms.stockUpdate(vo);

		return "Yes";
	}
	
	@PostMapping("productdelete")
	@ResponseBody
	public String productDelete(@RequestBody ProductManagementVO vo) {
		pms.productDelete(vo);
		
		return "Yes";
	}
	
	
	// 제품 수정 폼으로 가기
	@RequestMapping("productupdatepage")
	public String productUpdatePage(Model model, @RequestParam("productId") int productId) {
		
		
		ProductManagementVO productlist = pms.getProductById(productId);
		List<Integer> keywordIds = pms.productKeywordMapping(productId);
		
		ProductManagementVO product = new ProductManagementVO();
		product.setKeywordIds(keywordIds);
		
		model.addAttribute("product", productlist);
		model.addAttribute("selectedKeywordIds", keywordIds);
		
		
		return "admin/productmanagement/productupdate";
	}
	
	// 상품수정 알고리즘
	@PostMapping("productupdate")
	@ResponseBody
	public String productUpdate(ProductManagementVO vo, @RequestParam("productId") int productId, @RequestParam("productMainImage") CommonsMultipartFile mainImage, @RequestParam("productSubImage") CommonsMultipartFile subImage, Model model) {
	    ProductManagementVO product = pms.getProductById(productId);
	    vo.setProductId(productId);

	    if (!mainImage.isEmpty()) {
	        // 메인 이미지 저장 및 DB 경로 준비
	        String mainImagePathForDB = saveImageAndGetPathForDB(mainImage, "productmainimage");
	        vo.setFilename1(mainImage.getOriginalFilename());
	        vo.setFilepath1(mainImagePathForDB);
	    } else {
	        // 메인 이미지를 업로드하지 않았을 경우, 기존 이미지 정보 유지
	        vo.setFilename1(product.getFilename1());
	        vo.setFilepath1(product.getFilepath1());
	    }

	    if (!subImage.isEmpty()) {
	        // 서브 이미지 저장 및 DB 경로 준비
	        String subImagePathForDB = saveImageAndGetPathForDB(subImage, "productsubimage");
	        vo.setFilename2(subImage.getOriginalFilename());
	        vo.setFilepath2(subImagePathForDB);
	    } else {
	        // 서브 이미지를 업로드하지 않았을 경우, 기존 이미지 정보 유지
	        vo.setFilename2(product.getFilename2());
	        vo.setFilepath2(product.getFilepath2());
	    }

	    // DB에 상품 정보 업데이트
	    pms.productUpadte(vo);
	    
	    
	    pms.keywordUpdateDelete(vo);
	    pms.keywordUpdateInsert(vo);

	    return "Yes";
	}

	
	// 이미지 파일을 저장하고 데이터베이스 저장을 위한 경로를 반환하는 메서드
	private String saveImageAndGetPathForDB(CommonsMultipartFile file, String directoryName) {
	    String realPath = servletContext.getRealPath("/resources/pilling/img/" + directoryName + "/");
	    UUID uuid = UUID.randomUUID();
	    String fileName = uuid + "_" + file.getOriginalFilename();
	    File saveFile = new File(realPath, fileName);

	    try {
	        file.transferTo(saveFile);
	    } catch (IllegalStateException | IOException e) {
	        e.printStackTrace();
	    }

	    // DB 저장을 위한 경로 반환
	    return "resources/pilling/img/" + directoryName + "/" + fileName;
	}
}
