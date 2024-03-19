package co.first.pilling.review.service;

import java.time.LocalDate;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewVO {
	private int reviewId;
	private int productId;
	private int userNo;
	private int rating;
	private String reviewTitle;
	private String reviewContent;
	private String reviewImg;
	private LocalDate reviewDate;
	private String productName;
	
}
