package co.first.pilling.order.service.map;

import java.util.List;

import co.first.pilling.order.service.OrderVO;

public interface OrderMapper {
  
	List<OrderVO> orderSelectList(); //주문내역
  
	OrderVO orderSelect(OrderVO vo); //주문상세내역
  
	List<OrderVO> getOrderListByUserNo(int userNo);
  
	List<OrderVO> orderSelectList(int userNo); // 주문내역(배송상태가 배송완료가 아닌 것)

	List<OrderVO> purchasesSelectList(int userNo); // 구매내역(배송상태가 배송완료인 것)

	int orderInsert(OrderVO vo); // 주문완료

	int orderDelete(OrderVO vo); // 주문취소

	int orderUpdate(OrderVO vo); // 주문변경

	int createOrderNo(); // 주문번호 구하기
	
	List<OrderVO> getOrderListBeforeDelivery(int userNo); //주문내역(배송상태가 배송완료인 것)
}
