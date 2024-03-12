package co.first.pilling.order.service.map;

import java.util.List;

import co.first.pilling.order.service.OrderVO;

public interface OrderdetailMapper {
	List<OrderVO> orderdetailSelectList(OrderVO vo); // 주문상세리스트

	OrderVO orderdetailSelect(OrderVO vo); // 주문상세내역

	int orderdetailInsert(OrderVO vo); // 주문상세삽입

	int orderdetailDelete(OrderVO vo); // 주문취소

	int orderdetailUpdate(OrderVO vo); // 주문변경
}
