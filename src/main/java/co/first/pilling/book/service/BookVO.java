package co.first.pilling.book.service;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BookVO {
	private int bookId;
	private int userNo;
	private Date bookDate;
	private Time bookTime;
	private String bookContent;
	private Timestamp bookBookingdate;
}
