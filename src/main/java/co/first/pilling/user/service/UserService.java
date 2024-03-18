package co.first.pilling.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

public interface UserService {
	
	List<UserVO> userSelectList();
	UserVO userSelect(UserVO vo); //로그인, 마이페이지
	UserVO userRead(String id);//회원수정(아이디검색 후 정보 띄우기)
	public void userInsert(UserVO vo) throws DataAccessException;
	int userDelete(UserVO vo); 
	int userWithdraw(UserVO vo);//회원탈퇴
	int userWithdrawinsert(UserVO vo);
	int userPswdUpdate(UserVO vo);//비밀번호변경
	public int userUpdate(UserVO vo); //회원수정
	UserVO userPassword(UserVO vo); //마이페이지비밀번호확인
	String selectUserRank(UserVO vo); //유저랭크 가져오기
	int updateUserPoint(Map<Integer, UserVO> pointMap); //유저 적립금 차감
}
