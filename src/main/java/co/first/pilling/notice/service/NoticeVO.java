package co.first.pilling.notice.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeVO {
	private int noticeId;
	private int userNo;
	private String noticeTitle;
	private String noticeContent;
	private Date noticeDate;
	private int noticeHit;
	private String noticeImg;
	private String noticeAttach;
	private String noticeAttachpath;
}
