package co.first.pilling.shipping.map;

import java.util.List;

import co.first.pilling.shipping.service.ShippingVO;

public interface ShippingMapper {
	List<ShippingVO> shippingSelectList(ShippingVO vo);

	ShippingVO shippingSelect(ShippingVO vo);

	int shippingInsert(ShippingVO vo);

	int shippingUpdate(ShippingVO vo);

	int shippingDelete(ShippingVO vo);
}
