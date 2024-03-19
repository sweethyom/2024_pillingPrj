package co.first.pilling.review.map;

import java.util.List;

import co.first.pilling.review.service.ReviewVO;

public interface ReviewMapper {
	List<ReviewVO> reviewSelectList();
	ReviewVO reviewSelect(ReviewVO vo);
	List<ReviewVO> reviewSelectByuserNo(int userNo);
	int reviewInsert(ReviewVO vo);
	int reviewUpdate(ReviewVO vo);
	int reviewDelete(ReviewVO vo);
}
