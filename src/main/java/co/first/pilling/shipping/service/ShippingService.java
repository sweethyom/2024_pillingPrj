package co.first.pilling.shipping.service;

import java.util.List;

public interface ShippingService {
	List<ShippingVO> shippingSelectList(ShippingVO vo);

	ShippingVO shippingSelect(ShippingVO vo);

	int shippingInsert(ShippingVO vo);

	int shippingUpdate(ShippingVO vo);

	int shippingDelete(ShippingVO vo);
}
