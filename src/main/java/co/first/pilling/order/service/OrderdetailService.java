package co.first.pilling.order.service;

import java.util.List;

public interface OrderdetailService {
	List<OrderVO> orderdetailSelectList();// 주문상세리스트
	
	List<OrderdetailVO> orderdetailList(); 

	
	OrderVO orderdetailSelect(OrderdetailVO vo); // 주문상세내역

	List<OrderdetailVO> getOrderdetailListByOrderId(int orderId);
	
	List<OrderdetailVO> getOrderdetailListByOrderIdProductId(OrderdetailVO vo);
	
	int orderdetailInsert(OrderdetailVO vo); // 주문상세삽입

	int orderdetailDelete(OrderdetailVO vo); // 주문취소

	int orderdetailUpdate(OrderdetailVO vo); // 주문변경
	

	int detailTotalPrice(OrderdetailVO vo);//주문소계

	int selectOrderCount(int orderId); // 주문개수 (한번에 몇 종류의 제품을 구매했는지)

}
