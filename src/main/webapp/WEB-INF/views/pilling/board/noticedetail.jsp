<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>공지 조회</title>
  </head>
  <style>
    td {
      vertical-align: middle;
    }

    .div-center {
      margin: auto;
    }

    .btn-center {
      margin: auto;
      text-align: center;
    }
  </style>
  <body>
    <div class="container-xxl py-5">
      <!-- 공지사항 조회 START -->
      <div class="card-body col-12 div-center pl-5 pr-5">
        <div class="row g-5">
          <h3 style="vertical-align: bottom" class="px-2">${notice.noticeTitle }</h3>
          <div style="height: 0.3rem; background-color: #0ae4b0" class="mb-0 mt-0"></div>
          <table class="table mb-0 mt-0">
            <tbody>
              <tr>
                <td colspan="2" width="500"><small>작성자 Pilling</small></td>
                <td style="text-align: right"><small>조회수 ${notice.noticeHit }</small></td>
              </tr>
              <tr>
                <td colspan="3"><small>작성일 ${notice.noticeDate }</small></td>
              </tr>
              <tr>
                <td colspan="3">
                  <div class="mt-3 mb-5">${notice.noticeContent }</div>
                </td>
              </tr>
              <tr style="display:none">
                <td width="100"><small>첨부파일</small></td>
                <td colspan="2"></td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
      <!-- 공지사항 조회 END -->

      <!-- 공지사항 버튼/일반 사용자는 목록만, 어드민 권한을 가지고 있으면 수정, 삭제 버튼도 보인다. -->
      <div class="btn-center mt-2">
        <button type="button" class="btn btn-outline-dark-hyunwoo mt-3 login-btn-size" onclick="location.href='customerservice'">목록</button>
        <c:if test="${author eq 'ADMIN'}">
          &nbsp;&nbsp;
          <button type="button" class="btn btn-outline-dark-hyunwoo mt-3 login-btn-size" onclick="noticeEditForm()">수정</button>
          &nbsp;&nbsp;
          <button type="button" class="btn btn-outline-dark-hyunwoo mt-3 login-btn-size" onclick="noticeDelete()">삭제</button>
        </c:if>
      </div>

      <!-- 공지사항id를 수정, 삭제로 보내줄 히든폼 -->
      <div>
        <form id="frm" method="post"><input type="hidden" id="noticeId" name="noticeId" value="${notice.noticeId }" /></form>
      </div>

      <script type="text/javascript">
        function noticeEditForm() {
          frm.action = 'noticeeditform';
          frm.submit();
        }
        function noticeDelete() {
          frm.action = 'noticedelete';
          frm.submit();
        }
      </script>
    </div>
  </body>
</html>
