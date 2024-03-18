package co.first.pilling.coupon.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CouponVO {
	private int couponId;
	private int userNo;
	private String couponName;
	private int couponRate;
	private Date couponDate;
	private Date couponPeriod;
}
