package co.first.pilling.order.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderdetailVO {
	private int orderdetailId;
	private int orderId;
	private int productId;
	private int orderdetailPrice;
	private int orderdetailCount;
}
