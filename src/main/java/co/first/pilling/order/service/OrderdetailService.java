package co.first.pilling.order.service;

import java.util.List;

public interface OrderdetailService {
	List<OrderVO> orderdetailSelectList(OrderVO vo); // 주문상세리스트

	OrderVO orderdetailSelect(OrderVO vo); // 주문상세내역

	int orderdetailInsert(OrderVO vo); // 주문상세삽입

	int orderdetailDelete(OrderVO vo); // 주문취소

	int orderdetailUpdate(OrderVO vo); // 주문변경
}
