package co.first.pilling.productdetail.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductDetailReviewlistVO {
	private int reviewId;
	private int productId;
	private int userNo;
	private int rating;
	private String reviewTitle;
	private String reviewContent;
	private Date reviewDate;
	private String reviewImage;
	private String userId;
	// pagination을 위한 VO
	private int offset;
	private int pageSize;
}
