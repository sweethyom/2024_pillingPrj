package co.first.pilling.cart.map;

import java.util.List;

import co.first.pilling.cart.service.CartVO;

public interface CartMapper {
	List<CartVO> cartSelectList(CartVO vo); // 장바구니 목록 보기

	int cartInsert(CartVO vo); // 장바구니 추가
	
	int cartUpdate(CartVO vo); // 장바구니 수량 수정 

	int cartUpdateMinus(CartVO vo); // 장바구니 수정(개수-1)
	
	int cartUpdatePlus(CartVO vo); // 장바구니 수정(개수+1)

	int cartDelete(CartVO vo); // 장바구니 삭제
	
	int cartDeleteAll(CartVO vo); // 장바구니 전체 삭제(구매 후 실행)
}
