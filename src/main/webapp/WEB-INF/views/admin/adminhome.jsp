<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
    <!-- Content wrapper -->
    <div class="content-wrapper">
      <!-- Content -->

      <div class="container-xxl flex-grow-1 container-p-y">
        <div class="row">
          <div class="col-lg-12 mb-4 order-0">
            <div class="card">
              <div class="d-flex align-items-end row">
                <div class="col-sm-12">
                  <div class="card-body">
                    <h5 class="card-title text-primary">현재 재고가 부족한 제품</h5>
                    <!-- Basic Bootstrap Table -->
                    <div class="card">
                      <h5 class="card-header">현재 재고가 부족한 제품</h5>
                      <div class="table-responsive text-nowrap">
                        <table class="table">
                          <thead>
                            <tr>
                              <th>상품명</th>
                              <th>재고 개수</th>
                              <th>재고 위험도</th>
                            </tr>
                          </thead>
                          <tbody class="table-border-bottom-0">
                            <c:forEach var="product" items="${productlist }">
                              <c:if test="${product.stock < 50 }">
                                <tr>
                                  <td><strong>${product.productName }</strong></td>
                                  <td>${product.stock }개</td>
                                  <c:choose>
                                    <c:when test="${product.stock > 500}">
                                      <td><span class="badge bg-label-primary me-1">충분</span></td>
                                    </c:when>
                                    <c:when test="${product.stock <= 500 and product.stock > 300}">
                                      <td><span class="badge bg-label-success me-1">보통</span></td>
                                    </c:when>
                                    <c:when test="${product.stock <= 300 and product.stock > 100}">
                                      <td><span class="badge bg-label-info me-1">적음</span></td>
                                    </c:when>
                                    <c:otherwise>
                                      <td><span class="badge bg-label-warning me-1">비상</span></td>
                                    </c:otherwise>
                                  </c:choose>
                                </tr>
                              </c:if>
                            </c:forEach>
                          </tbody>
                        </table>
                      </div>
                    </div>
                    <!--/ Basic Bootstrap Table -->

                    <a href="adminproductlist" class="btn btn-sm btn-outline-primary" style="font-size: 1rem; margin-top: 2rem">재고 관리로 이동</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- / Content -->

    <div class="content-backdrop fade"></div>
    <!-- Content wrapper -->
    <!-- / Layout page -->
  </body>
</html>
