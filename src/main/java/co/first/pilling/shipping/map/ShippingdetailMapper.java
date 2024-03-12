package co.first.pilling.shipping.map;

import java.util.List;

import co.first.pilling.shipping.service.ShippingVO;

public interface ShippingdetailMapper {
	List<ShippingVO> shippingdetailSelectList(ShippingVO vo);

	ShippingVO shippingdetailSelect(ShippingVO vo);

	int shippingdetailInsert(ShippingVO vo);

	int shippingdetailUpdate(ShippingVO vo);

	int shippingdetailDelete(ShippingVO vo);
}
