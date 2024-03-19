package co.first.pilling.review.web;



import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import co.first.pilling.order.service.OrderService;
import co.first.pilling.order.service.OrderVO;
import co.first.pilling.order.service.OrderdetailService;
import co.first.pilling.order.service.OrderdetailVO;
import co.first.pilling.review.service.ReviewService;
import co.first.pilling.review.service.ReviewVO;
import co.first.pilling.user.service.UserService;




@Controller
public class ReviewController {

	
	@Autowired
	private OrderdetailService ods;
	
	@Autowired
	private OrderService os;
	
	@Autowired
	private UserService us;
	
	@Autowired
	private ReviewService rs;
	
	@Autowired
	private ServletContext servletContext;
	
	@RequestMapping("mypurchasedetail")
	public String purchaseList(OrderdetailVO odv, OrderVO ov, Model model, HttpSession session) {
		String userId=(String)session.getAttribute("userId");
		int userNo = us.getUserNoByUserId(userId);
		session.setAttribute("orderId", ov.getOrderId());
		//주문 목록 가져오기
		List<OrderVO> orderList = os.getOrderListByUserNo(userNo);
		
		//주문 목록 모델에 추가
		model.addAttribute("orderList", orderList);

		
		//주문상세목록
		List<OrderdetailVO> orderDetailList = ods.orderdetailList();
		model.addAttribute("orderDetailList", orderDetailList);
		for(int i =0; i<orderDetailList.size(); i++) {			
			System.out.println(orderDetailList.get(i));
	}
		return "pilling/mypage/mypurchasedetail";
	}
	
	@RequestMapping(value="newreview", method=RequestMethod.GET)
	public String reviewList(@RequestParam("orderId") int orderId, OrderdetailVO odv, ReviewVO vo, OrderVO ov, Model model, HttpSession session, HttpServletRequest hsrequest) {
		//int orderId = Integer.parseInt(hsrequest.getParameter("orderId"));
		
		//주문 목록 가져오기
		OrderVO newVo= new OrderVO() ;
		newVo.setOrderId(orderId);
		OrderVO order = os.orderSelect(newVo);
		
		//주문 목록 모델에 추가
		model.addAttribute("order", order);
		
		//주문상세목록
		List<OrderdetailVO> orderDetailList = ods.getOrderdetailListByOrderIdProductId(odv);
		model.addAttribute("orderDetailList", orderDetailList);
		for(int i = 0; i<orderDetailList.size(); i++) {
		System.out.println(orderDetailList.get(i));
		}
		
		return "pilling/mypage/newreview";
	}
	
	/*@RequestMapping(value="newreview", method = RequestMethod.POST)
	public String postNewReview(ReviewVO vo) {
		
		rs.reviewInsert(vo);
		
		return "redirect:myreview";
	}*/

	
	@RequestMapping(value="reviewwrite", method = RequestMethod.POST)
	public String postreviewWrite(Model model, ReviewVO vo,  @RequestParam("reviewImgFile") CommonsMultipartFile reviewImg, HttpSession session) {

		String userId=(String)session.getAttribute("userId");
		int userNo = us.getUserNoByUserId(userId);
		vo.setUserNo(userNo);
		
		System.out.println("출력");
		System.out.println(vo);
		if(reviewImg != null && reviewImg.getSize() > 0) {
			String reviewImagePathForDB = saveImageAndGetPathForDB(reviewImg, "reviewImg");
			vo.setReviewImg(reviewImagePathForDB);
		}
		    
		rs.reviewInsert(vo);
		    
		    
		return "redirect:myreview";
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
		
	@RequestMapping(value="myreview", method= RequestMethod.GET)
	public String myreviewList(Model model, ReviewVO vo, HttpSession session) {
		int userNo = (int)session.getAttribute("userNo");
		List<ReviewVO> reviewList=rs.reviewSelectByuserNo(userNo);
		System.out.println(reviewList);
		for(int i=0; i<reviewList.size(); i++) {
			System.out.println(reviewList.get(i));
		}
		
		model.addAttribute("reviewList", reviewList);
		
		return "pilling/mypage/myreview";
	}
	
}