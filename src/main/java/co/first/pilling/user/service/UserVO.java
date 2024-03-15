package co.first.pilling.user.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserVO {
	private int userNo;
	private int levelId;
	private String userId;
	private String userPswd;
	private String userLastname;
	private String userFirstname;
	private Date userBirthdate;
	private String userGender;
	private String userEmail;
	private String userTel;
	private String userAddr;
	private String userAddrdetail;
	private int userTotalamount;
	private String userMarketingYn;
	private String userAuthor;
	private String userSignout;
	private String userPoint;
	private String userRank;
}
