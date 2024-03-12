package co.first.pilling.shipping.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import co.first.pilling.shipping.map.ShippingdetailMapper;
import co.first.pilling.shipping.service.ShippingVO;
import co.first.pilling.shipping.service.ShippingdetailService;

@Service
@Primary
public class ShippingdetailServiceImpl implements ShippingdetailService {
	@Autowired
	private ShippingdetailMapper map;
	
	@Override
	public List<ShippingVO> shippingdetailSelectList(ShippingVO vo) {
		// TODO Auto-generated method stub
		return map.shippingdetailSelectList(vo);
	}

	@Override
	public ShippingVO shippingdetailSelect(ShippingVO vo) {
		// TODO Auto-generated method stub
		return map.shippingdetailSelect(vo);
	}

	@Override
	public int shippingdetailInsert(ShippingVO vo) {
		// TODO Auto-generated method stub
		return map.shippingdetailInsert(vo);
	}

	@Override
	public int shippingdetailUpdate(ShippingVO vo) {
		// TODO Auto-generated method stub
		return map.shippingdetailUpdate(vo);
	}

	@Override
	public int shippingdetailDelete(ShippingVO vo) {
		// TODO Auto-generated method stub
		return map.shippingdetailDelete(vo);
	}

}
