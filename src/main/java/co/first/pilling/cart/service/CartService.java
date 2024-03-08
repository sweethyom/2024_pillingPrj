package co.first.pilling.cart.service;

import java.util.List;

public interface CartService {
	List<CartVO> cartSelectList(CartVO vo); // 장바구니 목록 보기

	int cartInsert(CartVO vo); // 장바구니 추가

	int cartUpdate(CartVO vo); // 장바구니 수정(개수)

	int cartDelete(CartVO vo); // 장바구니 삭제
}
