package co.first.pilling.user.web;


import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.first.pilling.user.service.UserService;
import co.first.pilling.user.service.UserVO;

@Controller
public class UserController {
	
//private static final Logger logger = LoggerFactory.getLogger(UserController.class);
		
	@Autowired
	private UserService udao;
	
	@RequestMapping("loginresult")
		public String userLogin(Model model, UserVO vo, HttpSession session, HttpServletResponse response) {
			String viewPage = null;
			vo = udao.userSelect(vo); //아이디, 비밀번호가 일치하면 값을 가져오고
			if(vo != null) { //아이디, 비밀번호가 일치하면 세션에 id, 이름, 유저Number, 권한 정보를 담은 후 홈으로 돌아간다.
				session.setAttribute("userId", vo.getUserId());
				session.setAttribute("userNo", vo.getUserNo());
				session.setAttribute("userFirstname", vo.getUserFirstname());
				session.setAttribute("userLastname", vo.getUserLastname());
				session.setAttribute("author", vo.getUserAuthor());
				viewPage = "redirect:home";
			}else { //아이디, 비밀번호가 틀리면 주의문구를 삽입하고 login 페이지로 돌아간다.
				model.addAttribute("message", "아이디 또는 비밀번호를 잘못 입력했습니다.");
				viewPage = "pilling/menu/login";
			}
			return viewPage;
	}
	
	@RequestMapping("logout")
		public String userLogout(HttpSession session, Model model) {
			session.invalidate();
			return "redirect:home";
	}
	
//	//회원가입 페이지 이동
	@RequestMapping(value="registerForm", method=RequestMethod.GET)
	public void getRegister(){
		
//		return "/register";
		}
	
	//로그인으로 이동
	@RequestMapping(value="registerForm", method=RequestMethod.POST)
		public String postRegister(UserVO vo) throws Exception{		
		
			udao.userInsert(vo);
		
			return "redirect:login";    
	}
	
	   //회원정보확인창으로 이동
	   @RequestMapping(value="myinfochk", method=RequestMethod.GET)
	   public void getMyInfoChk() {
	   }
	   
	   @RequestMapping(value="myinfochk", method=RequestMethod.POST)
	   public String postMyInfoChk(Model model){
	      String viewPage = null;
	      viewPage="pilling/mypage/myinfopage";
	      return viewPage;
	   }
}
