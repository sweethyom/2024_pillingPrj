package co.first.pilling.order.service;

import java.util.List;

public interface OrderService {
	List<OrderVO> orderSelectList(); //주문내역
	OrderVO orderSelect(OrderVO vo); //주문상세내역
	int orderInsert(OrderVO vo); //주문완료
	int orderDelete(OrderVO vo); //주문취소
	int orderUpdate(OrderVO vo); //주문변경
}
