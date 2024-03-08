package co.first.pilling.cart.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import co.first.pilling.cart.map.CartMapper;
import co.first.pilling.cart.service.CartService;
import co.first.pilling.cart.service.CartVO;

@Service
@Primary
public class CartServiceImpl implements CartService {
	@Autowired
	private CartMapper map;
	
	@Override
	public List<CartVO> cartSelectList(CartVO vo) {
		// TODO Auto-generated method stub
		return map.cartSelectList(vo);
	}

	@Override
	public int cartInsert(CartVO vo) {
		// TODO Auto-generated method stub
		return map.cartInsert(vo);
	}

	@Override
	public int cartUpdate(CartVO vo) {
		// TODO Auto-generated method stub
		return map.cartUpdate(vo);
	}

	@Override
	public int cartDelete(CartVO vo) {
		// TODO Auto-generated method stub
		return map.cartDelete(vo);
	}

}
