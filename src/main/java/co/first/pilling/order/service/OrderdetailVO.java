package co.first.pilling.order.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class OrderdetailVO {
	private int orderdetailId;
	private int orderId;
	private int productId;
	private int orderdetailPrice;
	private int orderdetailCount;
	private String productName;
	private int detailTotalPrice;
	private String reviewYn;
	
}
