<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        <h1 class="display-2 text-dark mb-4 animated slideInDown">상품구매</h1>
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
                      <br />
                      <br />
                      <h5>성별 효능 별</h5>
                      <ul class="filterList">
                        <li class="filterItem">
                          <div class="filterName">
                            <input type="checkbox" name="effectId" id="effect22" value="effectId" />
                            <label for="effect22">&nbsp;남성용</label>
                          </div>
                        </li>
                        <li class="filterItem">
                          <div class="filterName">
                            <input type="checkbox" name="effectId" id="effect21" value="effectId" />
                            <label for="effect21">&nbsp;여성용</label>
                          </div>
                        </li>
                      </ul>
                      <br /><br />
                      <h5>효능 별</h5>
                      <ul class="filterList">
                        <li class="filterItem">
                          <div class="filterName">
                            <input type="checkbox" name="effectId" id="effect1" value="effectId" />
                            <label for="effect1">&nbsp;피로 회복</label>
                          </div>
                        </li>
                        <li class="filterItem">
                          <div class="filterName">
                            <input type="checkbox" name="effectId" id="effect2" value="effectId" />
                            <label for="effect2">&nbsp;피부 건강</label>
                          </div>
                        </li>
                        <li class="filterItem">
                          <div class="filterName">
                            <input type="checkbox" name="effectId" id="effect3" value="effectId" />
                            <label for="effect3">&nbsp;혈류 및 혈액 건강</label>
                          </div>
                        </li>
                        <li class="filterItem">
                          <div class="filterName">
                            <input type="checkbox" name="effectId" id="effect4" value="effectId" />
                            <label for="effect4">&nbsp;면역 증강</label>
                          </div>
                        </li>
                        <li class="filterItem">
                          <div class="filterName">
                            <input type="checkbox" name="effectId" id="effect5" value="effectId" />
                            <label for="effect5">&nbsp;수면질 개선</label>
                          </div>
                        </li>
                        <li class="filterItem">
                          <div class="filterName">
                            <input type="checkbox" name="effectId" id="effect6" value="effectId" />
                            <label for="effect6">&nbsp;스트레스 및 긴장 완화</label>
                          </div>
                        </li>
                        <li class="filterItem">
                          <div class="filterName">
                            <input type="checkbox" name="effectId" id="effect7" value="effectId" />
                            <label for="effect7">&nbsp;안구 건강</label>
                          </div>
                        </li>
                        <li class="filterItem">
                          <div class="filterName">
                            <input type="checkbox" name="effectId" id="effect8" value="effectId" />
                            <label for="effect8">&nbsp;당뇨병에 도움</label>
                          </div>
                        </li>
                        <li class="filterItem">
                          <div class="filterName">
                            <input type="checkbox" name="effectId" id="effect9" value="effectId" />
                            <label for="effect9">&nbsp;노화&항산화 도움</label>
                          </div>
                        </li>
                        <li class="filterItem">
                          <div class="filterName">
                            <input type="checkbox" name="effectId" id="effect10" value="effectId" />
                            <label for="effect10">&nbsp;피부 건강</label>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-9">
                <div class="row g-4 justify-content-center">
                  <div class="col-md-6 col-lg-6 col-xl-4">
                    <div class="rounded position-relative fruite-item" onclick="location.href='productdetailpage'" style="cursor: pointer">
                      <div class="fruite-img">
                        <img src="resources/pilling/img/productimage/testimage01.png" class="img-fluid w-100 rounded-top" alt="" />
                      </div>
                      <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                        <h4>Grapes</h4>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
                        <div>
                          <a class="keywordName">피로 회복</a>
                          <a class="keywordName">면역 증강</a>
                        </div>
                        <br />
                        <div class="d-flex justify-content-between flex-lg-wrap">
                          <p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6 col-lg-6 col-xl-4">
                    <div class="rounded position-relative fruite-item">
                      <div class="fruite-img">
                        <img src="resources/pilling/img/productimage/testimage01.png" class="img-fluid w-100 rounded-top" alt="" />
                      </div>
                      <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                        <h4>Grapes</h4>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
                        <div>
                          <a class="keywordName">피로회복</a>
                        </div>
                        <div class="d-flex justify-content-between flex-lg-wrap">
                          <p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
                          <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"
                            ><i class="fa fa-shopping-bag me-2 text-primary"></i>장바구니 담기</a
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6 col-lg-6 col-xl-4">
                    <div class="rounded position-relative fruite-item">
                      <div class="fruite-img">
                        <img src="resources/pilling/img/productimage/testimage01.png" class="img-fluid w-100 rounded-top" alt="" />
                      </div>
                      <div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px">Fruits</div>
                      <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                        <h4>Raspberries</h4>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
                        <div class="d-flex justify-content-between flex-lg-wrap">
                          <p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
                          <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"
                            ><i class="fa fa-shopping-bag me-2 text-primary"></i>장바구니 담기</a
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6 col-lg-6 col-xl-4">
                    <div class="rounded position-relative fruite-item">
                      <div class="fruite-img">
                        <img src="resources/pilling/img/productimage/testimage01.png" class="img-fluid w-100 rounded-top" alt="" />
                      </div>
                      <div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px">Fruits</div>
                      <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                        <h4>Apricots</h4>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
                        <div class="d-flex justify-content-between flex-lg-wrap">
                          <p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
                          <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"
                            ><i class="fa fa-shopping-bag me-2 text-primary"></i>장바구니 담기</a
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6 col-lg-6 col-xl-4">
                    <div class="rounded position-relative fruite-item">
                      <div class="fruite-img">
                        <img src="resources/pilling/img/productimage/testimage01.png" class="img-fluid w-100 rounded-top" alt="" />
                      </div>
                      <div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px">Fruits</div>
                      <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                        <h4>Banana</h4>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
                        <div class="d-flex justify-content-between flex-lg-wrap">
                          <p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
                          <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"
                            ><i class="fa fa-shopping-bag me-2 text-primary"></i>장바구니 담기</a
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6 col-lg-6 col-xl-4">
                    <div class="rounded position-relative fruite-item">
                      <div class="fruite-img">
                        <img src="resources/pilling/img/productimage/testimage01.png" class="img-fluid w-100 rounded-top" alt="" />
                      </div>
                      <div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px">Fruits</div>
                      <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                        <h4>Oranges</h4>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
                        <div class="d-flex justify-content-between flex-lg-wrap">
                          <p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
                          <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"
                            ><i class="fa fa-shopping-bag me-2 text-primary"></i>장바구니 담기</a
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6 col-lg-6 col-xl-4">
                    <div class="rounded position-relative fruite-item">
                      <div class="fruite-img">
                        <img src="resources/pilling/img/productimage/testimage01.png" class="img-fluid w-100 rounded-top" alt="" />
                      </div>
                      <div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px">Fruits</div>
                      <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                        <h4>Raspberries</h4>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
                        <div class="d-flex justify-content-between flex-lg-wrap">
                          <p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
                          <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"
                            ><i class="fa fa-shopping-bag me-2 text-primary"></i>장바구니 담기</a
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6 col-lg-6 col-xl-4">
                    <div class="rounded position-relative fruite-item">
                      <div class="fruite-img">
                        <img src="resources/pilling/img/productimage/testimage01.png" class="img-fluid w-100 rounded-top" alt="" />
                      </div>
                      <div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px">Fruits</div>
                      <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                        <h4>Grapes</h4>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
                        <div class="d-flex justify-content-between flex-lg-wrap">
                          <p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
                          <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"
                            ><i class="fa fa-shopping-bag me-2 text-primary"></i>장바구니 담기</a
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6 col-lg-6 col-xl-4">
                    <div class="rounded position-relative fruite-item">
                      <div class="fruite-img">
                        <img src="resources/pilling/img/productimage/testimage01.png" class="img-fluid w-100 rounded-top" alt="" />
                      </div>
                      <div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px">Fruits</div>
                      <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                        <h4>Oranges</h4>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
                        <div class="d-flex justify-content-between flex-lg-wrap">
                          <p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
                          <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"
                            ><i class="fa fa-shopping-bag me-2 text-primary"></i>장바구니 담기</a
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="pagination d-flex justify-content-center mt-5">
                      <a href="#" class="rounded">&laquo;</a>
                      <a href="#" class="active rounded">1</a>
                      <a href="#" class="rounded">2</a>
                      <a href="#" class="rounded">3</a>
                      <a href="#" class="rounded">4</a>
                      <a href="#" class="rounded">5</a>
                      <a href="#" class="rounded">6</a>
                      <a href="#" class="rounded">&raquo;</a>
                    </div>
                  </div>
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
