package co.first.pilling.review.service;

import java.util.List;

public interface ReviewService {
	List<ReviewVO> reviewSelectList();
	ReviewVO reviewSelect(ReviewVO vo);
	List<ReviewVO> reviewSelectByuserNo(int userNo);
	int reviewInsert(ReviewVO vo);
	int reviewUpdate(ReviewVO vo);
	int reviewDelete(ReviewVO vo);
}
