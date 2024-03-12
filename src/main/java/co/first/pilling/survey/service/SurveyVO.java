package co.first.pilling.survey.service;

import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SurveyVO {
	private int responseId;
	private int userNo;
	private int keywordId;
	private Date responseDate;
	// 여기서 부터는 제품 추천에 필요한 product Table의 VO타입
	private int productId;
	private int categoryId;
	private String productName;
	private int productPrice;
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
	private String keywordArr;
	private String keywords;
	private List<String> keywordName;
}
