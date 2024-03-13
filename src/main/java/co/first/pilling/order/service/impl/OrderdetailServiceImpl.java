package co.first.pilling.order.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import co.first.pilling.order.service.OrderVO;
import co.first.pilling.order.service.OrderdetailService;
import co.first.pilling.order.service.OrderdetailVO;
import co.first.pilling.order.service.map.OrderdetailMapper;

@Service
@Primary
public class OrderdetailServiceImpl implements OrderdetailService {
	@Autowired
	private OrderdetailMapper map;

	@Override
	public List<OrderVO> orderdetailSelectList(OrderdetailVO vo) {
		// TODO Auto-generated method stub
		return map.orderdetailSelectList(vo);
	}

	@Override
	public OrderVO orderdetailSelect(OrderdetailVO vo) {
		// TODO Auto-generated method stub
		return map.orderdetailSelect(vo);
	}

	@Override
	public int orderdetailInsert(OrderdetailVO vo) {
		// TODO Auto-generated method stub
		return map.orderdetailInsert(vo);
	}

	@Override
	public int orderdetailDelete(OrderdetailVO vo) {
		// TODO Auto-generated method stub
		return map.orderdetailDelete(vo);
	}

	@Override
	public int orderdetailUpdate(OrderdetailVO vo) {
		// TODO Auto-generated method stub
		return map.orderdetailUpdate(vo);
	}
	
}
