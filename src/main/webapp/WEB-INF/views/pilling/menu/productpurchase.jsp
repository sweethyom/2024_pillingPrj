<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<!-- Page Header Start -->
	<div class="container-fluid productpurchase-header py-5">
		<div class="container py-5">
			<h1 class="display-2 text-dark mb-4 animated slideInDown">제품구매</h1>
			<nav aria-label="breadcrumb">검색바 필요하면 여기다 넣으면 됩니다.</nav>
		</div>
	</div>
	<!-- Page Header End -->

	<!-- Fruits Shop Start-->
	<div class="container-fluid fruite">
		<div class="container">
			<div class="row g-4">
				<div class="col-lg-12">
					<div class="row g-4">
						<div class="col-lg-3">
							<div class="row g-4">
								<div class="col-lg-12">
									<div class="mb-3">
										<br />
										<h4>키워드로 검색</h4>
										<br /> <br />
										<h5>성별 효능 별</h5>
										<ul class="filterList">
											<li class="filterItem">
												<div class="filterName">
													<input type="checkbox" name="effectId" id="effect22"
														value="effectId" /> <label for="effect22">&nbsp;남성용</label>
												</div>
											</li>
											<li class="filterItem">
												<div class="filterName">
													<input type="checkbox" name="effectId" id="effect21"
														value="effectId" /> <label for="effect21">&nbsp;여성용</label>
												</div>
											</li>
										</ul>
										<br /> <br />
										<h5>효능 별</h5>
										<ul class="filterList">
											<li class="filterItem">
												<div class="filterName">
													<input type="checkbox" name="effectId" id="effect1"
														value="effectId" /> <label for="effect1">&nbsp;피로
														회복</label>
												</div>
											</li>
											<li class="filterItem">
												<div class="filterName">
													<input type="checkbox" name="effectId" id="effect2"
														value="effectId" /> <label for="effect2">&nbsp;피부
														건강</label>
												</div>
											</li>
											<li class="filterItem">
												<div class="filterName">
													<input type="checkbox" name="effectId" id="effect3"
														value="effectId" /> <label for="effect3">&nbsp;혈류
														및 혈액 건강</label>
												</div>
											</li>
											<li class="filterItem">
												<div class="filterName">
													<input type="checkbox" name="effectId" id="effect4"
														value="effectId" /> <label for="effect4">&nbsp;면역
														증강</label>
												</div>
											</li>
											<li class="filterItem">
												<div class="filterName">
													<input type="checkbox" name="effectId" id="effect5"
														value="effectId" /> <label for="effect5">&nbsp;수면질
														개선</label>
												</div>
											</li>
											<li class="filterItem">
												<div class="filterName">
													<input type="checkbox" name="effectId" id="effect6"
														value="effectId" /> <label for="effect6">&nbsp;스트레스
														및 긴장 완화</label>
												</div>
											</li>
											<li class="filterItem">
												<div class="filterName">
													<input type="checkbox" name="effectId" id="effect7"
														value="effectId" /> <label for="effect7">&nbsp;안구
														건강</label>
												</div>
											</li>
											<li class="filterItem">
												<div class="filterName">
													<input type="checkbox" name="effectId" id="effect8"
														value="effectId" /> <label for="effect8">&nbsp;당뇨병에
														도움</label>
												</div>
											</li>
											<li class="filterItem">
												<div class="filterName">
													<input type="checkbox" name="effectId" id="effect9"
														value="effectId" /> <label for="effect9">&nbsp;노화&항산화
														도움</label>
												</div>
											</li>
											<li class="filterItem">
												<div class="filterName">
													<input type="checkbox" name="effectId" id="effect10"
														value="effectId" /> <label for="effect10">&nbsp;피부
														건강</label>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!-- 제품 나열 -->
						<div class="col-lg-9">
							<div class="row g-4 justify-content-center">
								<!-- 제품 1개 카드 -->
								<c:forEach var="product" items="${productlist }">
									<div class="col-md-6 col-lg-6 col-xl-4">
										<div class="rounded position-relative"
											onclick="location.href='productdetailpage'"
											style="cursor: pointer">
											<div>
												<img src="${product.filepath1}"
													class="img-fluid w-100 rounded-top" alt="" />
											</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>${product.productName }</h4>
												<p>${product.productDescription1 }</p>
												<div>
													<c:forEach var="keywordname" items="${keywordMapping}">
														<a class="keywordName">${keywordname.keywordName}</a>
													</c:forEach>
												</div>
												<br />
												<div class="d-flex justify-content-between flex-lg-wrap">
													<p class="text-dark fs-5 fw-bold mb-0">
														<fmt:formatNumber value="${product.productPrice }"
															pattern="###,###,###" />
														원
													</p>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>

								<!-- pagenation 부분 -->
								<div class="container productpurchase-pagination">
									<ul class="pagination justify-content-center">
										<li class="page-item"><a class="page-link" href="#">Previous</a></li>
										<!-- 첫페이지에선 없음/시작인덱스 -10 -->
										<li class="page-item"><a class="page-link" href="#">
												1</a></li>
										<li class="page-item"><a class="page-link" href="#">
												2</a></li>
										<li class="page-item"><a class="page-link" href="#">
												3</a></li>
										<li class="page-item"><a class="page-link" href="#">
												4</a></li>
										<li class="page-item"><a class="page-link" href="#">
												5</a></li>
										<li class="page-item"><a class="page-link" href="#">Next</a></li>
										<!-- 마지막인덱스 +10 /마지막 인덱스에서는 없음 -->
									</ul>
								</div>
								<c:if test="${author == 'ADMIN'}">
									<div class="productAddBtn">
										<a href="productaddpage">
											<button type="button"
												class="btn btn-primary border-0 rounded-pill px-4 py-3">제품추가</button>
										</a>
									</div>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Fruits Shop End-->
</body>
</html>
