package co.first.pilling.cart.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartVO {
	private int cartId;
	private int userNo;
	private int productId;
	private int cartProdcnt;
	private Date cartDate;
	
	private String filepath;
	private String productName;
	private int productPrice;
}
