package co.first.pilling.order.service.map;

import java.util.List;

import co.first.pilling.order.service.OrderVO;
import co.first.pilling.order.service.OrderdetailVO;

public interface OrderdetailMapper {
	List<OrderVO> orderdetailSelectList();// 주문상세리스트
	
	List<OrderdetailVO> orderdetailList(); 

	OrderVO orderdetailSelect(OrderdetailVO vo); // 주문상세내역
	
	List<OrderdetailVO> getOrderdetailListByOrderId(int orderId);

	int orderdetailInsert(OrderdetailVO vo); // 주문상세삽입

	int orderdetailDelete(OrderdetailVO vo); // 주문취소

	int orderdetailUpdate(OrderdetailVO vo); // 주문변경
	
	int detailTotalPrice(OrderdetailVO vo); //주문소계
}
