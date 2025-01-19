package co.first.pilling.coupon.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import co.first.pilling.coupon.map.CouponMapper;
import co.first.pilling.coupon.service.CouponService;
import co.first.pilling.coupon.service.CouponVO;

@Service
@Primary
public class CouponServiceImpl implements CouponService {
	@Autowired
	private CouponMapper map;
	
	@Override
	public List<CouponVO> couponSelectList(int userNo) {
		// TODO Auto-generated method stub
		return map.couponSelectList(userNo);
	}

	@Override
	public CouponVO couponSelect(CouponVO vo) {
		// TODO Auto-generated method stub
		return map.couponSelect(vo);
	}

	@Override
	public int couponInsert(CouponVO vo) {
		// TODO Auto-generated method stub
		return map.couponInsert(vo);
	}

	@Override
	public int couponDelete(CouponVO vo) {
		// TODO Auto-generated method stub
		return map.couponDelete(vo);
	}

	@Override
	public int couponCount(CouponVO vo) {
		// TODO Auto-generated method stub
		return map.couponCount(vo);
	}

	@Override
	public int couponUse(CouponVO vo) {
		// TODO Auto-generated method stub
		return map.couponUse(vo);
	}

}
