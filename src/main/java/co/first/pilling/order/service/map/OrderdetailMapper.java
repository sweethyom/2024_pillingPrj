package co.first.pilling.order.service.map;

import java.util.List;

import co.first.pilling.order.service.OrderVO;
import co.first.pilling.order.service.OrderdetailVO;

public interface OrderdetailMapper {
	List<OrderVO> orderdetailSelectList(OrderdetailVO vo); // 주문상세리스트

	OrderVO orderdetailSelect(OrderdetailVO vo); // 주문상세내역

	int orderdetailInsert(OrderdetailVO vo); // 주문상세삽입

	int orderdetailDelete(OrderdetailVO vo); // 주문취소

	int orderdetailUpdate(OrderdetailVO vo); // 주문변경
	
	int selectOrderCount(int orderId); // 주문개수 (한번에 몇 종류의 제품을 구매했는지)
}
