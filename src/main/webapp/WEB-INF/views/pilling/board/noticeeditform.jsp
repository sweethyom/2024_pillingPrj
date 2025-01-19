<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>공지 수정</title>
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
      <!-- 공지사항 수정 form START -->
      <form action="noticeupdate" method="post">
        <div class="card-body col-12 div-center pl-5 pr-5">
          <div class="row g-5">
            <h3 style="vertical-align: bottom" class="px-2">
              <input type="text" value="${notice.noticeTitle }" id="noticeTitle" name="noticeTitle" required="required" style="width: 100%" />
            </h3>
            <div style="height: 0.3rem; background-color: #0ae4b0" class="mb-0 mt-0"></div>
            <table class="table mb-0 mt-0">
              <tbody>
                <tr>
                  <td colspan="3" width="500"><small>작성자 Pilling</small></td>
                </tr>
                <tr>
                  <td colspan="3">
                    <div class="mt-1 mb-1">
                      <textarea rows="10" cols="160" id="noticeContent" name="noticeContent" required="required">${notice.noticeContent }</textarea>
                    </div>
                  </td>
                </tr>
                <tr style="display:none">
                  <td width="100"><small>첨부파일</small></td>
                  <td colspan="2">
                    <small><input type="file" class="form-control" id="file" name="file" disabled /></small>
                  </td>
                </tr>
              </tbody>
            </table>
            <input type="hidden" id="noticeId" name="noticeId" value="${notice.noticeId }" />
          </div>
        </div>

        <!-- 버튼 -->
        <div class="btn-center mt-2">
          <button type="reset" class="btn btn-outline-dark-hyunwoo mt-3 login-btn-size" onclick="location.href='customerservice'">취소</button>
          &nbsp;&nbsp;
          <button type="submit" class="btn btn-outline-dark-hyunwoo mt-3 login-btn-size">수정</button>
        </div>
      </form>
      <!-- 공지사항 수정 END -->
    </div>
  </body>
</html>
