<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>문의 수정</title>
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
      <!-- 문의사항 조회 START -->
      <form action="questionupdate" method="post">
        <div class="card-body col-12 div-center pl-5 pr-5">
          <div class="row g-5">
            <h3 style="vertical-align: bottom" class="px-2">
              <input type="text" size="89%" required="required" value="${question.questionTitle }" id="questionTitle" name="questionTitle" />
            </h3>
            <div style="height: 0.3rem; background-color: #fdf001" class="mb-0 mt-0"></div>
            <table class="table mb-0 mt-0">
              <tbody>
                <tr>
                  <td colspan="2" width="500">
                    <small>작성자 <a>${userId }</a></small>
                  </td>
                </tr>
                <tr>
                  <td colspan="3">
                    <div class="mt-1 mb-1">
                      <textarea rows="10" cols="160" required="required" id="questionContent" name="questionContent">
${question.questionContent }</textarea
                      >
                    </div>
                  </td>
                </tr>
              </tbody>
            </table>
            <input type="hidden" id="questionId" name="questionId" value="${question.questionId }" />
          </div>
        </div>
        <!-- 문의사항 조회 END -->

        <!-- 버튼 START -->
        <div class="btn-center mt-2">
          <button type="reset" class="btn btn-primary border-0 rounded-pill px-4 py-3" onclick="location.href='customerservice'">취소</button>
          &nbsp;&nbsp;
          <button type="submit" class="btn btn-primary border-0 rounded-pill px-4 py-3">수정</button>
        </div>
        <!-- 버튼 END -->
      </form>
    </div>
  </body>
</html>
