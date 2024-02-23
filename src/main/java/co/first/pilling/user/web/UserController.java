package co.first.pilling.user.web;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import co.first.pilling.user.service.UserService;
import co.first.pilling.user.service.UserVO;

@Controller
public class UserController {
	
private static final Logger logger = LoggerFactory.getLogger(UserController.class);
		
	@Autowired
	private UserService udao;
	
	@RequestMapping("loginresult")
		public String userLogin(Model model, UserVO vo, HttpSession session, HttpServletResponse response) {
			String viewPage = null;
			vo = udao.userSelect(vo); //아이디, 비밀번호가 일치하면 값을 가져오고
			if(vo != null) { //아이디, 비밀번호가 일치하면 세션에 id, 이름, 권한 정보를 담은 후 홈으로 돌아간다.
				session.setAttribute("userId", vo.getUserId());
				session.setAttribute("userFirstname", vo.getUserFirstname());
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
	
	
	@RequestMapping(value="/register", method = RequestMethod.GET)
		public void getRegister() throws Exception {
			logger.info("get userInsert");
			}
	@PostMapping("registerForm")
		public String postRegister(UserVO vo) throws Exception {
			logger.info("post userInsert");
			
			udao.userInsert(vo);
			
			return "redirect:/home";
	}
}
//	@RequestMapping("registerForm")
//		public String userRegister(Model model, UserVO vo, HttpSession session, HttpServletResponse response) {
//		String viewPage = null;
//		vo = udao.userInsert(vo);
//			if(vo != null) {
//				session.getAttribute("user", viewPage);
//		
	//}
		

