package co.first.pilling.shipping.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ShippingaddrlistVO {
	private int shippingaddrlistId;
	private int userNo;
	private String shippingaddrlistRecipientln;
	private String shippingaddrlistRecipientfn;
	private String shippingaddrlistTel;
	private String shippingaddrlistAddr;
	private String shippingaddrlistAddrdetail;
	private int shippingaddrlistPostcode;
}
