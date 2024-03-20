package co.first.pilling.order.service;

import java.time.LocalDate;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class OrderVO {
	private int orderId;
	private int userNo;
	private int productId;
	private int orderstatusId;
	private int orderTotalprice;
	private LocalDate orderDate;
	private String orderRefund;
	private String orderCard;
	private int count;
	private String productName;
	private String orderstatusName;
	private int orderActualPrice;	
	private String filepath;
	private String status;
}
