<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>제품등록</title>
  </head>
  <style>
    td {
      vertical-align: middle;
    }

    .center {
      margin: 0 auto;
      text-align: center;
      vertical-align: middle;
      text-align: center;
    }

    .td-leftnone {
      border-left: hidden;
    }

    .td-rightnone {
      border-right: hidden;
    }

    .width-order {
      width: 72%;
    }
  </style>
  <body>
    <div class="container-fluid width-order">
      <div class="container py-5">
        <!-- 상품등록 FORM START -->
        <div class="card mb-4">
          <div class="card-header py-3">
            <div>
              <h5 class="m-0">제품등록</h5>
            </div>
          </div>
          <div class="card-body mb-3">
            <form id="productAddForm" enctype="multipart/form-data">
              <!-- 배송지 정보 -->
              <div class="mb-4">
                <table class="table table-bordered" id="productAddTable">
                  <!-- 제품명 INPUT -->
                  <tr>
                    <td width="150" style="background-color: #f5f6f6">제품명</td>
                    <td>
                      <input type="text" id="productName" name="productName" class="form-control" placeholder="제품명을 입력해주세요." required />
                    </td>
                  </tr>
                  <!-- 가격 INPUT -->
                  <tr>
                    <td width="150" style="background-color: #f5f6f6">가격</td>
                    <td>
                      <input
                        type="number"
                        id="productPrice"
                        name="productPrice"
                        class="form-control"
                        placeholder="제품가격을 입력해주세요."
                        required
                      />
                    </td>
                  </tr>
                  <!-- 제품 설명포인트1 INPUT -->
                  <tr>
                    <td width="200" style="background-color: #f5f6f6">제품 키포인트 첫번째</td>
                    <td>
                      <input
                        type="text"
                        id="productDescription1"
                        name="productDescription1"
                        class="form-control"
                        placeholder="키포인트(설명)을 입력해주세요."
                        required
                      />
                    </td>
                  </tr>
                  <!-- 제품 설명포인트2 INPUT -->
                  <tr>
                    <td width="200" style="background-color: #f5f6f6">제품 키포인트 두번째</td>
                    <td>
                      <input
                        type="text"
                        id="productDescription2"
                        name="productDescription2"
                        class="form-control"
                        placeholder="키포인트(설명)을 입력해주세요."
                        required
                      />
                    </td>
                  </tr>
                  <!-- 제품 설명포인트3 INPUT -->
                  <tr>
                    <td width="200" style="background-color: #f5f6f6">제품 키포인트 세번째</td>
                    <td>
                      <input
                        type="text"
                        id="productDescription3"
                        name="productDescription3"
                        class="form-control"
                        placeholder="키포인트(설명)을 입력해주세요."
                        required
                      />
                    </td>
                  </tr>
                  <!-- 제품 설명포인트4 INPUT -->
                  <tr>
                    <td width="200" style="background-color: #f5f6f6">제품 키포인트 네번째</td>
                    <td>
                      <input
                        type="text"
                        id="productDescription4"
                        name="productDescription4"
                        class="form-control"
                        placeholder="키포인트(설명)을 입력해주세요."
                        required
                      />
                    </td>
                  </tr>
                  <!-- 제품 설명포인트5 INPUT -->
                  <tr>
                    <td width="200" style="background-color: #f5f6f6">제품 키포인트 다섯번째</td>
                    <td>
                      <input
                        type="text"
                        id="productDescription5"
                        name="productDescription5"
                        class="form-control"
                        placeholder="키포인트(설명)을 입력해주세요."
                        required
                      />
                    </td>
                  </tr>
                  <!-- 제품 복용법 INPUT -->
                  <tr>
                    <td width="200" style="background-color: #f5f6f6">복용법</td>
                    <td>
                      <input
                        type="text"
                        id="takingMethod"
                        name="takingMethod"
                        class="form-control"
                        placeholder="복용방법 (예시 : 하루 1회 1정씩 ) 입력"
                        required
                      />
                    </td>
                  </tr>
                  <!-- 제품 복용 권장시간 INPUT -->
                  <tr>
                    <td width="200" style="background-color: #f5f6f6">복용권장시간</td>
                    <td>
                      <input
                        type="text"
                        id="doseTime"
                        name="doseTime"
                        class="form-control"
                        placeholder="복용시간(예시 : 아침 1알, 저녁 1알)을 입력해주세요. "
                        required
                      />
                    </td>
                  </tr>
                  <tr>
                    <td width="200" style="background-color: #f5f6f6">제품 키워드(태그)</td>
                    <td>
                      <label><input type="checkbox" name="keywordId" value="1" /><a class="keywordName">피로 회복</a></label>
                      <label><input type="checkbox" name="keywordId" value="2" /><a class="keywordName">피부 건강</a></label>
                      <label><input type="checkbox" name="keywordId" value="3" /><a class="keywordName">혈류 및 혈액 건강</a></label>
                      <label><input type="checkbox" name="keywordId" value="4" /><a class="keywordName">면역 증강</a></label>
                      <label><input type="checkbox" name="keywordId" value="5" /><a class="keywordName">수면질 개선</a></label>
                      <label><input type="checkbox" name="keywordId" value="6" /><a class="keywordName">스트레스 및 긴장 완화</a></label>
                      <label><input type="checkbox" name="keywordId" value="7" /><a class="keywordName">안구 건강</a></label>
                      <label><input type="checkbox" name="keywordId" value="8" /><a class="keywordName">당뇨병에 도움</a></label>
                      <label><input type="checkbox" name="keywordId" value="9" /><a class="keywordName">노화&amp;항산화 도움</a></label>
                      <label><input type="checkbox" name="keywordId" value="10" /><a class="keywordName">기억력 개선</a></label>
                      <label><input type="checkbox" name="keywordId" value="11" /><a class="keywordName">장건강</a></label>
                      <label><input type="checkbox" name="keywordId" value="12" /><a class="keywordName">뼈건강</a></label>
                      <label><input type="checkbox" name="keywordId" value="13" /><a class="keywordName">간 건강</a></label>
                      <label><input type="checkbox" name="keywordId" value="14" /><a class="keywordName">모발, 손톱 건강</a></label>
                      <label><input type="checkbox" name="keywordId" value="15" /><a class="keywordName">남성 건강</a></label>
                      <label><input type="checkbox" name="keywordId" value="16" /><a class="keywordName">여성 건강</a></label>
                      <label><input type="checkbox" name="keywordId" value="17" /><a class="keywordName">운동능력개선</a></label>
                      <label><input type="checkbox" name="keywordId" value="18" /><a class="keywordName">체지방 감소</a></label>
                      <label><input type="checkbox" name="keywordId" value="19" /><a class="keywordName">임신중 도움</a></label>
                      <label><input type="checkbox" name="keywordId" value="20" /><a class="keywordName">여성용</a></label>
                      <label><input type="checkbox" name="keywordId" value="21" /><a class="keywordName">남성용</a></label>
                    </td>
                  </tr>
                  <!-- 첨부파일 (메인이미지, 서브이미지 받기) -->
                  <tr>
                    <td width="200" style="background-color: #f5f6f6">메인이미지 첨부</td>
                    <td>
                      <input
                        type="file"
                        class="form-control"
                        id="productMainImage"
                        name="productMainImage"
                        accept="image/gif, image/jpeg, image/png"
                        required
                      />
                    </td>
                  </tr>
                  <tr>
                    <td width="200" style="background-color: #f5f6f6">서브이미지 첨부</td>
                    <td>
                      <input
                        type="file"
                        class="form-control"
                        id="productSubImage"
                        name="productSubImage"
                        accept="image/gif, image/jpeg, image/png"
                        required
                      />
                    </td>
                  </tr>
                </table>
              </div>
              <!-- 제품 키워드선택 INPUT -->
              <!-- checkbox값의 배열을 String으로 정제 -->
              <input type="hidden" id="keywordArr" name="keywordArr" />
            </form>
            <!-- 제품등록 END -->
          </div>
        </div>
        <!-- 상품등록 FORM END -->

        <!-- 상품등록 Button START -->
        <div class="center">
          <button type="button" class="px-5 py-3 btn btn-primary border-2 rounded-pill animated slideInDown mb-4 ms-4" onclick="makeArr()">
            상품등록
          </button>
          <a href="productpurchase" class="me-2">
            <button type="button" class="px-5 py-3 btn btn-primary border-2 rounded-pill animated slideInDown mb-4 ms-4">등록취소</button>
          </a>
        </div>
        <!-- 상품등록 Button END -->
      </div>
    </div>

    <script type="text/javascript">
      /* keyword mapping 하기 위한 함수 */
      function makeArr() {
        var values = document.getElementsByName('keywordId');
        var valueArr = new Array();
        for (var i = 0; i < values.length; i++) {
          if (values[i].checked) {
            valueArr.push(values[i].value);
          }
        }
        document.getElementById('keywordArr').value = valueArr.toString();
        AjaxCall();
      }

      /* response 받은 값을 이용하여, AJAX 활용하기 */
      function AjaxCall() {
        let form = document.getElementById('productAddForm');
        let formData = new FormData(form);
        let url = 'productadd';

        fetch(url, {
          method: 'POST',
          body: formData,
        })
          .then((response) => {
            if (response.ok) {
              return response.text();
            } else {
              throw new Error('Network response was not ok.');
            }
          })
          .then((text) => {
            if (text === 'Yes') {
              alert('상품 등록이 완료되었습니다.');
              location.href = 'productpurchase';
            } else {
              alert('상품 등록이 실패하였습니다.');
            }
          })
          .catch((error) => {
            console.error('There was an error!', error);
            alert('상품 등록 중 오류가 발생하였습니다.');
          });
      }
    </script>
  </body>
</html>
