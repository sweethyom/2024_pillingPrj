package co.first.pilling.admin.productmanagement.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductManagementVO {
	private int productId;
	private int categoryId;
	private String productName;
	private int productPrice;
	private String productImg;
	private String productDelete;
	private Date productDate;
	private String productNew;
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
	private String keywordId;
	private String keywordArr;
	private int stock;
	private int addStock;
}
