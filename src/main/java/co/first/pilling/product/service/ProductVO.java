package co.first.pilling.product.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductVO {
	private int productId;
	private int categoryId;
	private String productName;
	private String productDescription;
	private int productPrice;
	private String productImg;
	private String productDelete;
	private Date productDate;
	private String productNew;
}
