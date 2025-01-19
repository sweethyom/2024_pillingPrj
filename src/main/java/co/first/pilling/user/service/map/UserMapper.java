package co.first.pilling.user.service.map;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import co.first.pilling.user.service.UserVO;

public interface UserMapper {
	List<UserVO> userSelectList();
	UserVO userSelect(UserVO vo); //로그인, 마이페이지
	UserVO userRead(String id);
	int getUserNoByUserId(String userId);
//	int userInsert(UserVO vo); //회원가입
	public void userInsert(UserVO vo) throws DataAccessException;
	int userDelete(UserVO vo); 
	int userWithdraw(UserVO vo);
	int userWithdrawinsert(UserVO vo);
	int userPswdUpdate(UserVO vo);//회원연락처수정
	int userUpdate(UserVO vo); //회원수정
	UserVO userPassword(UserVO vo);
	String selectUserRank(UserVO vo); //유저랭크 가져오기
	int updateUserPoint(Map<String, Object> pointMap); //유저 적립금 차감
}
