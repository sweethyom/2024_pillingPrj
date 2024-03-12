package co.first.pilling.shipping.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import co.first.pilling.shipping.map.ShippingMapper;
import co.first.pilling.shipping.service.ShippingService;
import co.first.pilling.shipping.service.ShippingVO;

@Service
@Primary
public class ShippingServiceImpl implements ShippingService {
	@Autowired
	private ShippingMapper map;
	
	@Override
	public List<ShippingVO> shippingSelectList(ShippingVO vo) {
		// TODO Auto-generated method stub
		return map.shippingSelectList(vo);
	}

	@Override
	public ShippingVO shippingSelect(ShippingVO vo) {
		// TODO Auto-generated method stub
		return map.shippingSelect(vo);
	}

	@Override
	public int shippingInsert(ShippingVO vo) {
		// TODO Auto-generated method stub
		return map.shippingInsert(vo);
	}

	@Override
	public int shippingUpdate(ShippingVO vo) {
		// TODO Auto-generated method stub
		return map.shippingUpdate(vo);
	}

	@Override
	public int shippingDelete(ShippingVO vo) {
		// TODO Auto-generated method stub
		return map.shippingDelete(vo);
	}

}
