package co.first.pilling.order.service;

import java.util.List;

public interface OrderdetailService {
	List<OrderVO> orderdetailSelectList(OrderdetailVO vo); // 주문상세리스트

	OrderVO orderdetailSelect(OrderdetailVO vo); // 주문상세내역

	List<OrderdetailVO> getOrderdetailListByOrderId(int orderId);
	
	int orderdetailInsert(OrderdetailVO vo); // 주문상세삽입

	int orderdetailDelete(OrderdetailVO vo); // 주문취소

	int orderdetailUpdate(OrderdetailVO vo); // 주문변경
}
