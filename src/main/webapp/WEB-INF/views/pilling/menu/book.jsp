<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방문 예약</title>
</head>
<style>
.div-center {
	margin: auto;
	text-align: center;
}

a {
	color: #000000;
	text-decoration: none;
}

.scriptCalendar {
	text-align: center;
}

.scriptCalendar>thead>tr>td {
	width: 50px;
	height: 50px;
}

.scriptCalendar>thead>tr:first-child>td {
	font-weight: bold;
}

.scriptCalendar>thead>tr:last-child>td {
	background-color: #90EE90;
}

.scriptCalendar>tbody>tr>td
.div-horizontal {
	float: left;
	width: 30%;
	padding: 0%;
}
</style>

<!-- 캘린더를 사용하기 위한 자바 스크립트 -->
<!-- 코드출처: https://saakmiso.tistory.com/47 -->
<script type="text/javascript">
	document.addEventListener("DOMContentLoaded", function() {
		buildCalendar();

		document.getElementById("btnPrevCalendar").addEventListener("click",
				function(event) {
					prevCalendar();
				});

		document.getElementById("nextNextCalendar").addEventListener("click",
				function(event) {
					nextCalendar();
				});
	});

	var toDay = new Date(); // @param 전역 변수, 오늘 날짜 / 내 컴퓨터 로컬을 기준으로 toDay에 Date 객체를 넣어줌
	var nowDate = new Date(); // @param 전역 변수, 실제 오늘날짜 고정값

	/**
	 * @brief   이전달 버튼 클릭시
	 */
	function prevCalendar() {
		this.toDay = new Date(toDay.getFullYear(), toDay.getMonth() - 1, toDay
				.getDate());
		buildCalendar(); // @param 전월 캘린더 출력 요청
	}

	/**
	 * @brief   다음달 버튼 클릭시
	 */
	function nextCalendar() {
		this.toDay = new Date(toDay.getFullYear(), toDay.getMonth() + 1, toDay
				.getDate());
		buildCalendar(); // @param 명월 캘린더 출력 요청
	}

	/**
	 * @brief   캘린더 오픈
	 * @details 날짜 값을 받아 캘린더 폼을 생성하고, 날짜값을 채워넣는다.
	 */
	function buildCalendar() {

		let doMonth = new Date(toDay.getFullYear(), toDay.getMonth(), 1);
		let lastDate = new Date(toDay.getFullYear(), toDay.getMonth() + 1, 0);

		let tbCalendar = document.querySelector(".scriptCalendar > tbody");

		document.getElementById("calYear").innerText = toDay.getFullYear(); // @param YYYY월
		document.getElementById("calMonth").innerText = autoLeftPad((toDay
				.getMonth() + 1), 2); // @param MM월

		// @details 이전 캘린더의 출력결과가 남아있다면, 이전 캘린더를 삭제한다.
		while (tbCalendar.rows.length > 0) {
			tbCalendar.deleteRow(tbCalendar.rows.length - 1);
		}

		// @param 첫번째 개행
		let row = tbCalendar.insertRow();

		// @param 날짜가 표기될 열의 증가값
		let dom = 1;

		// @details 시작일의 요일값( doMonth.getDay() ) + 해당월의 전체일( lastDate.getDate())을  더해준 값에서
		//               7로 나눈값을 올림( Math.ceil() )하고 다시 시작일의 요일값( doMonth.getDay() )을 빼준다.
		let daysLength = (Math
				.ceil((doMonth.getDay() + lastDate.getDate()) / 7) * 7)
				- doMonth.getDay();

		// @param 달력 출력
		// @details 시작값은 1일을 직접 지정하고 요일값( doMonth.getDay() )를 빼서 마이너스( - )로 for문을 시작한다.
		for (let day = 1 - doMonth.getDay(); daysLength >= day; day++) {

			let column = row.insertCell();

			// @param 평일( 전월일과 익월일의 데이터 제외 )
			if (Math.sign(day) == 1 && lastDate.getDate() >= day) {

				// @param 평일 날짜 데이터 삽입
				column.innerText = autoLeftPad(day, 2);

				// @param 일요일인 경우
				if (dom % 7 == 1) {
					column.style.color = "#FF4D4D";
				}

				// @param 토요일인 경우
				if (dom % 7 == 0) {
					column.style.color = "#4D4DFF";
					row = tbCalendar.insertRow(); // @param 토요일이 지나면 다시 가로 행을 한줄 추가한다.
				}

			}

			// @param 평일 전월일과 익월일의 데이터 날짜변경
			else {
				let exceptDay = new Date(doMonth.getFullYear(), doMonth
						.getMonth(), day);
				column.innerText = autoLeftPad(exceptDay.getDate(), 2);
				column.style.color = "#A9A9A9";
			}

			// @brief   전월, 명월 음영처리
			// @details 현재년과 선택 년도가 같은경우
			if (toDay.getFullYear() == nowDate.getFullYear()) {

				// @details 현재월과 선택월이 같은경우
				if (toDay.getMonth() == nowDate.getMonth()) {

					// @details 현재일보다 이전인 경우이면서 현재월에 포함되는 일인경우
					if (nowDate.getDate() > day && Math.sign(day) == 1) {
						column.style.backgroundColor = "#E5E5E5";
					}

					// @details 현재일보다 이후이면서 현재월에 포함되는 일인경우
					else if (nowDate.getDate() < day
							&& lastDate.getDate() >= day) {
						column.style.backgroundColor = "#FFFFFF";
						column.style.cursor = "pointer";
						column.onclick = function() {
							calendarChoiceDay(this);
						}
					}

					// @details 현재일인 경우
					else if (nowDate.getDate() == day) {
						column.style.backgroundColor = "#FFFFE6";
						column.style.cursor = "pointer";
						column.onclick = function() {
							calendarChoiceDay(this);
						}
					}

					// @details 현재월보다 이전인경우
				} else if (toDay.getMonth() < nowDate.getMonth()) {
					if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
						column.style.backgroundColor = "#E5E5E5";
					}
				}

				// @details 현재월보다 이후인경우
				else {
					if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
						column.style.backgroundColor = "#FFFFFF";
						column.style.cursor = "pointer";
						column.onclick = function() {
							calendarChoiceDay(this);
						}
					}
				}
			}

			// @details 선택한년도가 현재년도보다 작은경우
			else if (toDay.getFullYear() < nowDate.getFullYear()) {
				if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
					column.style.backgroundColor = "#E5E5E5";
				}
			}

			// @details 선택한년도가 현재년도보다 큰경우
			else {
				if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
					column.style.backgroundColor = "#FFFFFF";
					column.style.cursor = "pointer";
					column.onclick = function() {
						calendarChoiceDay(this);
					}
				}
			}
			dom++;
		}
	}

	/**
	 * @brief   날짜 선택
	 * @details 사용자가 선택한 날짜에 체크표시를 남긴다.
	 */
	function calendarChoiceDay(column) {

		// @param 기존 선택일이 존재하는 경우 기존 선택일의 표시형식을 초기화 한다.
		if (document.getElementsByClassName("choiceDay")[0]) {

			// @see 금일인 경우
			if (document.getElementById("calMonth").innerText == autoLeftPad(
					(nowDate.getMonth() + 1), 2)
					&& document.getElementsByClassName("choiceDay")[0].innerText == autoLeftPad(
							toDay.getDate(), 2)) {
				document.getElementsByClassName("choiceDay")[0].style.backgroundColor = "#FFFFE6";
			}

			// @see 금일이 아닌 경우
			else {
				document.getElementsByClassName("choiceDay")[0].style.backgroundColor = "#FFFFFF";
			}
			document.getElementsByClassName("choiceDay")[0].classList
					.remove("choiceDay");
		}

		// @param 선택일 체크 표시
		column.style.backgroundColor = "#FF9999";

		// @param 선택일 클래스명 변경
		column.classList.add("choiceDay");
		
		console.log(document.getElementById("calYear").innerText);
		console.log(document.getElementById("calMonth").innerText);
		console.log(document.getElementsByClassName("choiceDay")[0].innerText);
		
		document.getElementsById("bookDate").innerText = "2024-03-03";
	}

	/**
	 * @brief   숫자 두자릿수( 00 ) 변경
	 * @details 자릿수가 한자리인 ( 1, 2, 3등 )의 값을 10, 11, 12등과 같은 두자리수 형식으로 맞추기위해 0을 붙인다.
	 * @param   num     앞에 0을 붙일 숫자 값
	 * @param   digit   글자의 자릿수를 지정 ( 2자릿수인 경우 00, 3자릿수인 경우 000 … )
	 */
	function autoLeftPad(num, digit) {
		if (String(num).length < digit) {
			num = new Array(digit - String(num).length + 1).join("0") + num;
		}
		return num;
	}
</script>
<body>
	<!-- Page Header Start -->
	<div class="container-fluid page-header py-5">
		<div class="container text-center py-5">
			<h1 class="display-2 text-white mb-4 animated slideInDown">방문예약</h1>
		</div>
	</div>
	<!-- Page Header End -->

	<section class="features-icons bg-light text-center">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
						<!-- 예약현황일람 -->
						<div class="div-horizontal">
							<br />
							<table class="scriptCalendar div-center">
								<thead>
									<tr>
										<td class="calendarBtn" id="btnPrevCalendar">&#60;&#60;</td>
										<td colspan="5"><span id="calYear">YYYY</span>년 <span
											id="calMonth">MM</span>월</td>
										<td class="calendarBtn" id="nextNextCalendar">&#62;&#62;</td>
									</tr>
									<tr>
										<td>일</td>
										<td>월</td>
										<td>화</td>
										<td>수</td>
										<td>목</td>
										<td>금</td>
										<td>토</td>
									</tr>
								</thead>
								<tbody></tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
						<h3>■ 예약 현황</h3>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="features-icons-item mx-auto mb-0 mb-lg-3">
						<!-- 방문일자 및 시간 INPUT -->
						<div class="div-horizontal">
							<form>
								<h3>■ 예약하기</h3>
								<div class="div-center">
									<label>예약일자</label> &nbsp;&nbsp; <input size="200" type="date"
										id="bookDate" name="bookDate" min="1900-01-01"
										max="" required /> <br> <br>
										<label>예약시간</label>
										<select id="bookTime" name="bookTime" style="width: 140px;" required>
										<option value="09:00">09:00
										<option value="10:00">10:00
										<option value="11:00">11:00
										<option value="12:00">12:00
										<option value="13:00">13:00
										<option value="14:00">14:00
										<option value="15:00">15:00
										<option value="16:00">16:00
										<option value="17:00">17:00
									</select>
								</div>
								<p>
								<p>

									<!-- Submit button -->
									<button type="submit" class="btn btn-primary btn-block mb-4">예약</button>
							</form>
						</div>
						<br />
						<div></div>
					</div>
				</div>
				<div id="map" style="width:500px;height:400px;"></div>
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ef352e65df90eb0c8a3326a0f1f84a70"></script>
					<script>
						var container = document.getElementById('map');
						var options = {
							center: new kakao.maps.LatLng(33.450701, 126.570667),
							level: 3
						};
				
						var map = new kakao.maps.Map(container, options);
					</script>
			</div>
	</section>

</body>
</html>