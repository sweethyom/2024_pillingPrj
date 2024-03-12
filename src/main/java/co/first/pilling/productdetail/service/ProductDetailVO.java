package co.first.pilling.productdetail.service;

import java.sql.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductDetailVO {
	private int productId;
	private String productName;
	private int productPrice;
	private Date productDate;
	private String productDescription1;
	private String productDescription2;
	private String productDescription3;
	private String productDescription4;
	private String productDescription5;
	private String takingMethod;
	private String doseTime;
	private String filename1;
	private String filepath1;
	private String filename2;
	private String filepath2;
	private int keywordId;
	private String keywordArr;
	private String keywords;
	private List<String> keywordName;
}
