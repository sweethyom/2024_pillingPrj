package co.first.pilling.shipping.service;

import java.util.List;

public interface ShippingdetailService {
	List<ShippingVO> shippingdetailSelectList(ShippingVO vo);

	ShippingVO shippingdetailSelect(ShippingVO vo);

	int shippingdetailInsert(ShippingVO vo);

	int shippingdetailUpdate(ShippingVO vo);

	int shippingdetailDelete(ShippingVO vo);
}
