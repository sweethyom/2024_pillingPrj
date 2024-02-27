package co.first.pilling.review.service;

import java.time.LocalDate;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewVO {
	private int reviewId;
	private int productId;
	private int userNo;
	private String reviewTitle;
	private String reviewContent;
	private String reviewImg;
	private LocalDate reviewDate;
	private int reviewStar;
}
