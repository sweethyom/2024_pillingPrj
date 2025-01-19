package co.first.pilling.shipping.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ShippingVO {
	private int shippingId;
	private int orderId;
	private int shippingstatusId;
	private String shippingRecipientln;
	private String shippingRecipientfn;
	private String shippingTel;
	private String shippingAddr;
	private String shippingAddrdetail;
	private int shippingPostcode;
	private String shippingRequest;
}
