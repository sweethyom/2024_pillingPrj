<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 
	calendarChoiceDay 함수를 통해서 달력의 날짜를 클릭하면 예약현황에 있는 날짜가 바뀌도록 설정되어 있다.
 -->

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

.div-flex {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

a {
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
	background-color: #fdf227;
}

.scriptCalendar>tbody>tr>td
.div-horizontal {
	float: left;
	width: 30%;
	padding: 0%;
}

.box-white {
	display: inline-block;
	padding: 0px 10px;
	border-radius: 21px;
	border-style: solid;
	border-width: 1px;
	border-color: black;
	background: white;
	color: black;
	font-weight: 400;
	margin: 2px;
	padding: 10px;
}

.box-bg-green {
	display: inline-block;
	padding: 0px 10px;
	border-radius: 10px;
	border-style: solid;
	border-width: 1px;
	border-color: #fdf227;
	background: #fdf227;
	color: black;
	font-weight: 400;
	margin: 2px;
	padding: 10px;
	font-weight: 400;
}

.box-green {
	display: inline-block;
	padding: 0px 10px;
	border-radius: 21px;
	border-style: solid;
	border-width: 1px;
	border-color: green;
	background: white;
	color: black;
	font-weight: 400;
	margin: 2px;
	padding: 10px;
}

.box-gay {
	display: inline-block;
	padding: 0px 10px;
	border-radius: 21px;
	border-style: solid;
	border-width: 1px;
	border-color: gray;
	background: white;
	color: black;
	font-weight: 400;
	margin: 2px;
	padding: 10px;
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
						column.style.backgroundColor = "#F1F3F5";
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

		document.getElementById("selectDate").innerText = document
				.getElementById("calYear").innerText
				+ "년 "
				+ document.getElementById("calMonth").innerText
				+ "월 "
				+ document.getElementsByClassName("choiceDay")[0].innerText
				+ "일";
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

	<section class="features-icons text-center">
		<div class="container">
			<div class="row">

				<!-- 달력 시작 -->
				<div class="col-lg-4 div-center">
					<div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
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
				<!-- 달력 끝 -->

				<!-- 예약현황 시작 -->
				<div class="col-lg-4">
					<div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
						<h2 class="mb-3">예약 현황</h2>
						<a id="selectDate" class="box-bg-green mb-3">예약일자를 선택하세요</a><br>
						<table class="div-center">
							<tr>
								<td><a class="box-green">
										<div>09:00</div>
										<div>예약가능</div>
								</a></td>
								<td><a class="box-green">
										<div>10:00</div>
										<div>예약가능</div>
								</a></td>
								<td><a class="box-green">
										<div>11:00</div>
										<div>예약가능</div>
								</a></td>
							</tr>
							<tr>
								<td><a class="box-green">
										<div>12:00</div>
										<div>예약가능</div>
								</a></td>
								<td><a class="box-green">
										<div>13:00</div>
										<div>예약가능</div>
								</a></td>
								<td><a class="box-green">
										<div>14:00</div>
										<div>예약가능</div>
								</a></td>
							</tr>
							<tr>
								<td><a class="box-green">
										<div>15:00</div>
										<div>예약가능</div>
								</a></td>
								<td><a class="box-green">
										<div>16:00</div>
										<div>예약가능</div>
								</a></td>
								<td><a class="box-green">
										<div>17:00</div>
										<div>예약가능</div>
								</a></td>
							</tr>
						</table>
					</div>
				</div>
				<!-- 예약현황 끝 -->

				<!-- 방문일자 및 시간 INPUT 시작 -->
				<div class="col-lg-4 div-center">
					<div class="features-icons-item mx-auto mb-0 mb-lg-3">
						<div class="div-horizontal">
							<form>
								<h2>예약하기</h2>
								<div class="div-flex" style="height: 300px;">
									<div>
										<label>예약일자</label> &nbsp;&nbsp; <input class="mb-3"
											size="200" type="date" id="bookDate" name="bookDate"
											min="1900-01-01" max="" required />
									</div>
									<div>
										<label>예약시간</label> <select id="bookTime" name="bookTime"
											class="mb-4" style="width: 140px;" required>
											<option value="09:00:00">09:00
											<option value="10:00:00">10:00
											<option value="11:00:00">11:00
											<option value="12:00:00">12:00
											<option value="13:00:00">13:00
											<option value="14:00:00">14:00
											<option value="15:00:00">15:00
											<option value="16:00:00">16:00
											<option value="17:00:00">17:00
										</select>
									</div>

									<!-- Submit button -->
									<div>
										<button type="submit" class="btn btn-primary btn-block mb-4">예약</button>
									</div>
								</div>
							</form>
						</div>
						<br />
					</div>
				</div>
				<!-- 방문일자 및 시간 INPUT 끝 -->
			</div>
	</section>
	<!-- 찾아오시는 길 시작 -->
				<div class="container-fluid py-5">
					<div class="container py-5">
						<div class="row gx-4 gx-lg-5 align-items-center">
							<div class="col-lg-6 col-md-12 wow fadeInUp" data-wow-delay=".3s">
								<div class="about-img">
									<div class="rotate-left bg-pillgreen"></div>
									<div class="rotate-right bg-pillgreen"></div>
									<img src="resources/pilling/img/book/mapimg.png"
										class="img-fluid h-100" alt="img" />
								</div>
							</div>
							<br>
							<div class="col-lg-6 col-md-12 wow fadeInUp" data-wow-delay=".6s">
								<div class="about-item overflow-hidden">
									<h1 class="display-5 mb-2">찾아오시는 길</h1>
									<p class="fs-5" style="text-align: justify">
										대구 서구 서대구로 30 3층 <br>
										(지번) 내당1동 230-6 <br>
										브레이크타임월~금 12:00 ~ 13:00 <br>
										053-555-1333
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 찾아오시는 길 끝 -->

</body>
</html>