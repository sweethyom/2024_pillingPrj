package co.first.pilling.order.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import co.first.pilling.order.service.OrderService;
import co.first.pilling.order.service.OrderVO;
import co.first.pilling.order.service.map.OrderMapper;

@Service
@Primary

public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderMapper map;
	
	@Override
	public List<OrderVO> orderSelectList(int userNo) {
		// TODO Auto-generated method stub
		return map.orderSelectList(userNo);
	}

	@Override
	public OrderVO orderSelect(OrderVO vo) {
		// TODO Auto-generated method stub
		return map.orderSelect(vo);
	}

	@Override
	public List<OrderVO> getOrderListByUserNo(int userNo){
		return map.getOrderListByUserNo(userNo);
	}
	
	@Override
	public int orderInsert(OrderVO vo) {
		// TODO Auto-generated method stub
		return map.orderInsert(vo);
	}

	@Override
	public int orderDelete(OrderVO vo) {
		return map.orderDelete(vo);
	}
	
	@Override
	public int orderUpdate(OrderVO vo) {
		// TODO Auto-generated method stub
		return map.orderUpdate(vo);
	}

	@Override
	public int createOrderNo() {
		// TODO Auto-generated method stub
		return map.createOrderNo();
	}

	@Override
	public List<OrderVO> purchasesSelectList(int userNo) {
		// TODO Auto-generated method stub
		return map.purchasesSelectList(userNo);
	}

	@Override
	public List<OrderVO> getOrderListBeforeDelivery(int userNo) {
		// TODO Auto-generated method stub
		return map.getOrderListBeforeDelivery(userNo);
	}

}
