package co.first.pilling.shipping.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ShippingVO {
	private int shippingId;
	private int orderId;
	private int shippingaddrlistId;
	private int shippingstatusId;
	private String shippingTel;
	private String shippingRequest;
}
