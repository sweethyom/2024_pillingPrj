package co.first.pilling.order.service;

import java.time.LocalDate;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderVO {
	private int orderId;
	private int userNo;
	private int productId;
	private int orderstatusId;
	private int orderTotalprice;
	private LocalDate orderDate;
	private String orderRefund;
	private String orderCard;
}
