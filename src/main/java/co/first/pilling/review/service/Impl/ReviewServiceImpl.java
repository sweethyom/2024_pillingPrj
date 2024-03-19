package co.first.pilling.review.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import co.first.pilling.review.map.ReviewMapper;
import co.first.pilling.review.service.ReviewService;
import co.first.pilling.review.service.ReviewVO;

@Service
@Primary
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	ReviewMapper map;
	
	@Override
	public List<ReviewVO> reviewSelectList() {
		// TODO Auto-generated method stub
		return map.reviewSelectList();
	}

	@Override
	public ReviewVO reviewSelect(ReviewVO vo) {
		// TODO Auto-generated method stub
		return map.reviewSelect(vo);
	}

	@Override
	public List<ReviewVO> reviewSelectByuserNo(int userNo) {
		// TODO Auto-generated method stub
		return map.reviewSelectByuserNo(userNo);
	}
	
	
	@Override
	public int reviewInsert(ReviewVO vo) {
		// TODO Auto-generated method stub
		return map.reviewInsert(vo);
	}

	@Override
	public int reviewUpdate(ReviewVO vo) {
		// TODO Auto-generated method stub
		return map.reviewUpdate(vo);
	}

	@Override
	public int reviewDelete(ReviewVO vo) {
		// TODO Auto-generated method stub
		return map.reviewDelete(vo);
	}

}
