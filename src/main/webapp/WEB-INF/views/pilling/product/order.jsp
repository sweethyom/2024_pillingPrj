<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script
		src="https://cdn01.jotfor.ms/static/prototype.forms.js?v=3.3.51787"
		type="text/javascript"></script>
	<script
		src="https://cdn02.jotfor.ms/static/jotform.forms.js?v=3.3.51787"
		type="text/javascript"></script>
	<script
		src="https://cdn03.jotfor.ms/js/punycode-1.4.1.min.js?v=3.3.51787"
		type="text/javascript" defer></script>
	<script
		src="https://cdn01.jotfor.ms/js/vendor/maskedinput_5.0.9.min.js?v=3.3.51787"
		type="text/javascript"></script>
	<script
		src="https://cdn02.jotfor.ms/js/payments/paypalcomplete.js?v=3.3.51787"
		type="text/javascript"></script>
	<script
		src="https://cdn03.jotfor.ms/js/libraries/promise-polyfill.js?v=3.3.51787"
		type="text/javascript"></script>
	<script
		src="https://cdn01.jotfor.ms/js/payments/payment_form_embedded.js?v=3.3.51787"
		type="text/javascript"></script>
	<script
		src="https://cdn02.jotfor.ms/js/payments/paymentUtils.js?v=3.3.51787"
		type="text/javascript"></script>
	<script
		src="https://cdn03.jotfor.ms/js/payments/validategateways.js?v=3.3.51787"
		type="text/javascript"></script>
	<script
		src="https://cdn01.jotfor.ms/s/umd/1849bf352ca/for-form-branding-footer.js?v=3.3.51787"
		type="text/javascript" defer></script>
	<script
		src="https://cdn01.jotfor.ms/js/vendor/smoothscroll.min.js?v=3.3.51787"
		type="text/javascript"></script>
	<script src="https://cdn02.jotfor.ms/js/errorNavigation.js?v=3.3.51787"
		type="text/javascript"></script>
	<script type="text/javascript">
		JotForm.newDefaultTheme = true;
		JotForm.extendsNewTheme = false;
		JotForm.singleProduct = false;
		JotForm.newPaymentUIForNewCreatedForms = false;
		JotForm.texts = {
			"confirmEmail" : "E-mail does not match",
			"pleaseWait" : "Please wait...",
			"validateEmail" : "You need to validate this e-mail",
			"confirmClearForm" : "Are you sure you want to clear the form",
			"lessThan" : "Your score should be less than or equal to",
			"incompleteFields" : "There are incomplete required fields. Please complete them.",
			"required" : "This field is required.",
			"requireOne" : "At least one field required.",
			"requireEveryRow" : "Every row is required.",
			"requireEveryCell" : "Every cell is required.",
			"email" : "Enter a valid e-mail address",
			"alphabetic" : "This field can only contain letters",
			"numeric" : "This field can only contain numeric values",
			"alphanumeric" : "This field can only contain letters and numbers.",
			"cyrillic" : "This field can only contain cyrillic characters",
			"url" : "This field can only contain a valid URL",
			"currency" : "This field can only contain currency values.",
			"fillMask" : "Field value must fill mask.",
			"uploadExtensions" : "You can only upload following files:",
			"noUploadExtensions" : "File has no extension file type (e.g. .txt, .png, .jpeg)",
			"uploadFilesize" : "File size cannot be bigger than:",
			"uploadFilesizemin" : "File size cannot be smaller than:",
			"gradingScoreError" : "Score total should only be less than or equal to",
			"inputCarretErrorA" : "Input should not be less than the minimum value:",
			"inputCarretErrorB" : "Input should not be greater than the maximum value:",
			"maxDigitsError" : "The maximum digits allowed is",
			"minCharactersError" : "The number of characters should not be less than the minimum value:",
			"maxCharactersError" : "The number of characters should not be more than the maximum value:",
			"freeEmailError" : "Free email accounts are not allowed",
			"minSelectionsError" : "The minimum required number of selections is ",
			"maxSelectionsError" : "The maximum number of selections allowed is ",
			"pastDatesDisallowed" : "Date must not be in the past.",
			"dateLimited" : "This date is unavailable.",
			"dateInvalid" : "This date is not valid. The date format is {format}",
			"dateInvalidSeparate" : "This date is not valid. Enter a valid {element}.",
			"ageVerificationError" : "You must be older than {minAge} years old to submit this form.",
			"multipleFileUploads_typeError" : "{file} has invalid extension. Only {extensions} are allowed.",
			"multipleFileUploads_sizeError" : "{file} is too large, maximum file size is {sizeLimit}.",
			"multipleFileUploads_minSizeError" : "{file} is too small, minimum file size is {minSizeLimit}.",
			"multipleFileUploads_emptyError" : "{file} is empty, please select files again without it.",
			"multipleFileUploads_uploadFailed" : "File upload failed, please remove it and upload the file again.",
			"multipleFileUploads_onLeave" : "The files are being uploaded, if you leave now the upload will be cancelled.",
			"multipleFileUploads_fileLimitError" : "Only {fileLimit} file uploads allowed.",
			"dragAndDropFilesHere_infoMessage" : "Drag and drop files here",
			"chooseAFile_infoMessage" : "Choose a file",
			"maxFileSize_infoMessage" : "Max. file size",
			"generalError" : "There are errors on the form. Please fix them before continuing.",
			"generalPageError" : "There are errors on this page. Please fix them before continuing.",
			"wordLimitError" : "Too many words. The limit is",
			"wordMinLimitError" : "Too few words.  The minimum is",
			"characterLimitError" : "Too many Characters.  The limit is",
			"characterMinLimitError" : "Too few characters. The minimum is",
			"ccInvalidNumber" : "Credit Card Number is invalid.",
			"ccInvalidCVC" : "CVC number is invalid.",
			"ccInvalidExpireDate" : "Expire date is invalid.",
			"ccInvalidExpireMonth" : "Expiration month is invalid.",
			"ccInvalidExpireYear" : "Expiration year is invalid.",
			"ccMissingDetails" : "Please fill up the credit card details.",
			"ccMissingProduct" : "Please select at least one product.",
			"ccMissingDonation" : "Please enter numeric values for donation amount.",
			"disallowDecimals" : "Please enter a whole number.",
			"restrictedDomain" : "This domain is not allowed",
			"ccDonationMinLimitError" : "Minimum amount is {minAmount} {currency}",
			"requiredLegend" : "All fields marked with * are required and must be filled.",
			"geoPermissionTitle" : "Permission Denied",
			"geoPermissionDesc" : "Check your browser's privacy settings.",
			"geoNotAvailableTitle" : "Position Unavailable",
			"geoNotAvailableDesc" : "Location provider not available. Please enter the address manually.",
			"geoTimeoutTitle" : "Timeout",
			"geoTimeoutDesc" : "Please check your internet connection and try again.",
			"selectedTime" : "Selected Time",
			"formerSelectedTime" : "Former Time",
			"cancelAppointment" : "Cancel Appointment",
			"cancelSelection" : "Cancel Selection",
			"noSlotsAvailable" : "No slots available",
			"slotUnavailable" : "{time} on {date} has been selected is unavailable. Please select another slot.",
			"multipleError" : "There are {count} errors on this page. Please correct them before moving on.",
			"oneError" : "There is {count} error on this page. Please correct it before moving on.",
			"doneMessage" : "Well done! All errors are fixed.",
			"invalidTime" : "Enter a valid time",
			"doneButton" : "Done",
			"reviewSubmitText" : "Review and Submit",
			"nextButtonText" : "Next",
			"prevButtonText" : "Previous",
			"seeErrorsButton" : "See Errors",
			"notEnoughStock" : "Not enough stock for the current selection",
			"notEnoughStock_remainedItems" : "Not enough stock for the current selection ({count} items left)",
			"soldOut" : "Sold Out",
			"justSoldOut" : "Just Sold Out",
			"selectionSoldOut" : "Selection Sold Out",
			"subProductItemsLeft" : "({count} items left)",
			"startButtonText" : "START",
			"submitButtonText" : "Submit",
			"submissionLimit" : "Sorry! Only one entry is allowed. Multiple submissions are disabled for this form.",
			"reviewBackText" : "Back to Form",
			"seeAllText" : "See All",
			"progressMiddleText" : "of",
			"fieldError" : "field has an error.",
			"error" : "Error"
		};
		JotForm.newPaymentUI = true;
		JotForm.replaceTagTest = true;

		JotForm.setConditions([ {
			"action" : [ {
				"id" : "action_1594381115265",
				"visibility" : "Show",
				"isError" : false,
				"field" : "14"
			} ],
			"id" : "1594381129768",
			"index" : "0",
			"link" : "Any",
			"priority" : "0",
			"terms" : [ {
				"id" : "term_1594381115265",
				"field" : "12",
				"operator" : "equals",
				"value" : "예",
				"isError" : false
			} ],
			"type" : "field"
		}, {
			"action" : [ {
				"id" : "action_1594381097270",
				"visibility" : "Show",
				"isError" : false,
				"field" : "13"
			} ],
			"id" : "1594381112529",
			"index" : "1",
			"link" : "Any",
			"priority" : "1",
			"terms" : [ {
				"id" : "term_1594381097270",
				"field" : "12",
				"operator" : "equals",
				"value" : "예",
				"isError" : false
			} ],
			"type" : "field"
		}, {
			"action" : [ {
				"id" : "action_0_1594381223745",
				"visibility" : "Hide",
				"isError" : false,
				"field" : "10"
			} ],
			"id" : "1594381026539",
			"index" : "2",
			"link" : "Any",
			"priority" : "2",
			"terms" : [ {
				"id" : "term_0_1594381223745",
				"field" : "11",
				"operator" : "isEmpty",
				"value" : "아니오",
				"isError" : false
			} ],
			"type" : "field"
		}, {
			"action" : [ {
				"id" : "action_1594381006015",
				"visibility" : "Hide",
				"isError" : false,
				"field" : "10"
			} ],
			"id" : "1594381014916",
			"index" : "3",
			"link" : "Any",
			"priority" : "3",
			"terms" : [ {
				"id" : "term_1594381006015",
				"field" : "11",
				"operator" : "equals",
				"value" : "예",
				"isError" : false
			} ],
			"type" : "field"
		} ]);
		JotForm.submitError = "jumpToFirstError";
		window.addEventListener('DOMContentLoaded', function() {
			window.brandingFooter.init({
				"formID" : 240570068903455,
				"campaign" : "powered_by_jotform_le",
				"isCardForm" : false,
				"isLegacyForm" : true
			})
		});
		JotForm.isFullSource = true;

		JotForm
				.init(function() {
					/*INIT-START*/
					productID = {
						"0" : "input_7_1001",
						"1" : "input_7_1002",
						"2" : "input_7_1003",
						"3" : "input_7_1004"
					};
					paymentType = "product";
					JotForm.setCurrencyFormat('USD', true, 'point');
					JotForm.totalCounter({
						"input_7_1001" : {
							"price" : "5"
						},
						"input_7_1002" : {
							"price" : "10"
						},
						"input_7_1003" : {
							"price" : "20"
						},
						"input_7_1004" : {
							"price" : "30"
						}
					});
					$$('.form-product-custom_quantity')
							.each(
									function(el, i) {
										el
												.observe(
														'blur',
														function() {
															isNaN(this.value)
																	|| this.value < 1 ? this.value = '0'
																	: this.value = parseInt(this.value)
														})
									});
					$$('.form-product-custom_quantity').each(function(el, i) {
						el.observe('focus', function() {
							this.value == 0 ? this.value = '' : this.value
						})
					});
					JotForm.handleProductLightbox();
					JotForm.paymentProperties = {
						"styleColor" : "gold",
						"styleShape" : "rect",
						"styleSize" : "medium",
						"styleLabel" : "checkout",
						"styleLayout" : "vertical",
						"payLaterEnabled" : "No",
						"paymentFormProperties" : {
							"products" : [ {
								"hasExpandedOption" : "",
								"hasQuantity" : "",
								"hasSpecialPricing" : "",
								"icon" : "",
								"images" : "[]",
								"name" : "신제품 1",
								"options" : [],
								"period" : "Monthly",
								"pid" : "1001",
								"price" : "5",
								"setupfee" : "",
								"trial" : "None"
							}, {
								"icon" : "",
								"name" : "신제품 2",
								"period" : "Monthly",
								"pid" : "1002",
								"price" : "10",
								"setupfee" : "",
								"trial" : "None"
							}, {
								"icon" : "",
								"name" : "신제품 3",
								"period" : "Monthly",
								"pid" : "1003",
								"price" : "20",
								"setupfee" : "",
								"trial" : "None"
							}, {
								"customPrice" : "",
								"customPriceSource" : "0",
								"description" : "",
								"hasExpandedOption" : "",
								"hasQuantity" : "",
								"hasSpecialPricing" : "",
								"icon" : "",
								"images" : "[]",
								"name" : "신제품 4",
								"options" : [],
								"period" : "Monthly",
								"pid" : "1004",
								"price" : "30",
								"recurringtimes" : "No Limit",
								"setupfee" : "",
								"trial" : "None"
							} ]
						}
					}
					JotForm
							.setPhoneMaskingValidator(
									'input_9_full',
									'\u0028\u0023\u0023\u0023\u0029 \u0023\u0023\u0023\u002d\u0023\u0023\u0023\u0023');
					if (window.JotForm && JotForm.accessible)
						$('input_13').setAttribute('tabindex', 0);
					JotForm
							.setCustomHint('input_13',
									'\uc5ec\uae30\uc5d0 \uc785\ub825\ud558\uc138\uc694...');
					if (window.JotForm && JotForm.accessible)
						$('input_14').setAttribute('tabindex', 0);
					JotForm
							.setCustomHint('input_14',
									'\uc5ec\uae30\uc5d0 \uc785\ub825\ud558\uc138\uc694...');
					if (window.JotForm && JotForm.accessible)
						$('input_15').setAttribute('tabindex', 0);
					JotForm
							.setCustomHint('input_15',
									'\uc5ec\uae30\uc5d0 \uc785\ub825\ud558\uc138\uc694...');
					JotForm.alterTexts(undefined, true);
					/*INIT-END*/
				});

		setTimeout(function() {
			JotForm.paymentExtrasOnTheFly([ null, {
				"name" : "clickTo",
				"qid" : "1",
				"text" : "결제 폼",
				"type" : "control_head"
			}, {
				"name" : "input2",
				"qid" : "2",
				"text" : "결제 페이지로 가기",
				"type" : "control_button"
			}, null, {
				"name" : "yourName",
				"qid" : "4",
				"text" : "이름",
				"type" : "control_fullname"
			}, {
				"name" : "yourEmail",
				"qid" : "5",
				"subLabel" : "example@example.com",
				"text" : "이메일",
				"type" : "control_email"
			}, {
				"name" : "input6",
				"qid" : "6",
				"text" : "청구지 주소",
				"type" : "control_address"
			}, {
				"name" : "myProducts",
				"qid" : "7",
				"text" : "My Products",
				"type" : "control_paypalcomplete"
			}, {
				"name" : "paymentMethods",
				"qid" : "8",
				"text" : "Payment Methods",
				"type" : "control_paymentmethods"
			}, {
				"name" : "input9",
				"qid" : "9",
				"text" : "연락처 번호",
				"type" : "control_phone"
			}, {
				"name" : "address",
				"qid" : "10",
				"text" : "배송지 주소",
				"type" : "control_address"
			}, {
				"name" : "input11",
				"qid" : "11",
				"text" : "배송지 주소가 청구지 주소와 같나요?",
				"type" : "control_radio"
			}, {
				"name" : "input12",
				"qid" : "12",
				"text" : "선물을 보낼까요?",
				"type" : "control_radio"
			}, {
				"mde" : "No",
				"name" : "input13",
				"qid" : "13",
				"text" : "수취인 이름",
				"type" : "control_textarea",
				"wysiwyg" : "Disable"
			}, {
				"mde" : "No",
				"name" : "input14",
				"qid" : "14",
				"text" : "선물 메시지",
				"type" : "control_textarea",
				"wysiwyg" : "Disable"
			}, {
				"mde" : "No",
				"name" : "input15",
				"qid" : "15",
				"text" : "특별 요청사항",
				"type" : "control_textarea",
				"wysiwyg" : "Disable"
			} ]);
		}, 20);
	</script>
	<link type="text/css" rel="stylesheet"
		href="https://cdn02.jotfor.ms/stylebuilder/static/form-common.css?v=18cfc0e
" />
	<style type="text/css">
@media print {
	* {
		-webkit-print-color-adjust: exact !important;
		color-adjust: exact !important;
	}
	.form-section {
		display: inline !important
	}
	.form-pagebreak {
		display: none !important
	}
	.form-section-closed {
		height: auto !important
	}
	.page-section {
		position: initial !important
	}
}
</style>
	<link type="text/css" rel="stylesheet"
		href="https://cdn03.jotfor.ms/themes/CSS/5e6b428acc8c4e222d1beb91.css?v=3.3.51787&themeRevisionID=5eb3b4ae85bd2e1e2966db96" />
	<link type="text/css" rel="stylesheet"
		href="https://cdn01.jotfor.ms/css/styles/payment/payment_styles.css?3.3.51787" />
	<link type="text/css" rel="stylesheet"
		href="https://cdn02.jotfor.ms/css/styles/payment/payment_feature.css?3.3.51787" />
	<link type="text/css" rel="stylesheet"
		href="https://cdn03.jotfor.ms/stylebuilder/static/donationBox.css?v=3.3.51787">
	<style type="text/css" id="form-designer-style">
/* Injected CSS Code */
/*PREFERENCES STYLE*/
.form-all {
	font-family: Inter, sans-serif;
}

.form-label.form-label-auto {
	display: block;
	float: none;
	text-align: left;
	width: 100%;
}

.form-line {
	margin-top: 12px 36px 12px 36px px;
	margin-bottom: 12px 36px 12px 36px px;
}

.form-all {
	max-width: 752px;
	width: 100%;
}

.form-label.form-label-left, .form-label.form-label-right, .form-label.form-label-left.form-label-auto,
	.form-label.form-label-right.form-label-auto {
	width: 230px;
}

.form-all {
	font-size: 16px
}

.supernova {
	background-color: #f3f3fe;
}

.supernova body {
	background: transparent;
}

.supernova .form-all, .form-all {
	background-color: #ffffff;
}

.form-all {
	color: #2c3344;
}

.form-header-group .form-header {
	color: #2c3344;
}

.form-header-group .form-subHeader {
	color: #2c3344;
}

.form-label-top, .form-label-left, .form-label-right, .form-html,
	.form-checkbox-item label, .form-radio-item label, span.FITB .qb-checkbox-label,
	span.FITB .qb-radiobox-label, span.FITB .form-radio label, span.FITB .form-checkbox label,
	[data-blotid][data-type=checkbox] [data-labelid], [data-blotid][data-type=radiobox] [data-labelid],
	span.FITB-inptCont[data-type=checkbox] label, span.FITB-inptCont[data-type=radiobox] label
	{
	color: #2c3344;
}

.form-sub-label {
	color: #464d5e;
}

.form-textbox, .form-textarea, .form-dropdown, .form-radio-other-input,
	.form-checkbox-other-input, .form-captcha input, .form-spinner input {
	background-color: #ffffff;
}

.form-line-error {
	overflow: hidden;
	transition: none;
	background-color: #ffd6d6;
}

.form-line-error .form-error-message {
	background-color: #DC2626;
	clear: both;
	float: none;
}

.form-line-error .form-error-arrow {
	border-bottom-color: #FF3200;
}

.form-line-error input:not(#coupon-input), .form-line-error textarea,
	.form-line-error .form-validation-error {
	border: 1px solid #c61515;
	box-shadow: 0 0 3px #c61515;
}

.supernova {
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
	background-position: center top;
}

.supernova, #stage {
	background-image: none;
}

.form-all {
	background-image: none;
}
/*PREFERENCES STYLE*/ /*__INSPECT_SEPERATOR__*/
/* Injected CSS Code */
</style>

	<form class="jotform-form"
		onsubmit="return typeof testSubmitFunction !== 'undefined' && testSubmitFunction();"
		action="https://submit.jotform.com/submit/240570068903455"
		method="post" name="form_240570068903455" id="240570068903455"
		accept-charset="utf-8" autocomplete="on">
		<input type="hidden" name="formID" value="240570068903455" /><input
			type="hidden" id="JWTContainer" value="" /><input type="hidden"
			id="cardinalOrderNumber" value="" /><input type="hidden"
			id="jsExecutionTracker" name="jsExecutionTracker"
			value="build-date-1709010713521" /><input type="hidden"
			id="submitSource" name="submitSource" value="unknown" /><input
			type="hidden" id="buildDate" name="buildDate" value="1709010713521" />
		<div role="main" class="form-all">
			<ul class="form-section page-section">
				<li id="cid_1" class="form-input-wide" data-type="control_head">
					<div class="form-header-group  header-large">
						<div class="header-text httal htvam">
							<h1 id="header_1" class="form-header" data-component="header">결제
								폼</h1>
							<div id="subHeader_1" class="form-subHeader">무엇을 구매하시고
								싶으신가요?</div>
						</div>
					</div>
				</li>
				<li class="form-line" data-type="control_paypalcomplete" id="id_7"
					data-payment="true"><label class="form-label form-label-top"
					id="label_7" for="input_7" aria-hidden="false"> My Products
				</label>
					<div id="cid_7" class="form-input-wide" data-layout="full">
						<div data-wrapper-react="true">
							<div data-wrapper-react="true" class="product-container-wrapper">
								<div class="filter-container"></div>
								<input type="hidden" name="simple_fpc"
									data-payment_type="paypalcomplete" data-component="payment1"
									value="7" /><input type="hidden"
									name="payment_transaction_uuid" id="paymentTransactionId" /><input
									type="hidden" name="payment_version" id="payment_version"
									value="3" /><input type="hidden" name="payment_total_checksum"
									id="payment_total_checksum" data-component="payment2" /><input
									type="hidden" name="payment_discount_value"
									id="payment_discount_value" data-component="payment3" />
								<div id="image-overlay" class="overlay-content"
									style="display: none">
									<img id="current-image" /><span class="lb-prev-button">prev</span><span
										class="lb-next-button">next</span><span
										class="lb-close-button">( X )</span><span
										class="image-overlay-product-container">
										<ul class="form-overlay-item" pid="1001" hasicon="false"
											hasimages="false" iconvalue=""></ul>
										<ul class="form-overlay-item" pid="1002" hasicon="false"
											hasimages="false" iconvalue=""></ul>
										<ul class="form-overlay-item" pid="1003" hasicon="false"
											hasimages="false" iconvalue=""></ul>
										<ul class="form-overlay-item" pid="1004" hasicon="false"
											hasimages="false" iconvalue=""></ul>
									</span>
								</div>
								<div data-wrapper-react="true">
									<span class="form-product-item hover-product-item  new_ui"
										categories="non-categorized" pid="1001"
										aria-labelledby="label_7">
										<div data-wrapper-react="true"
											class="form-product-item-detail new_ui">
											<div class="p_col">
												<div class="p_checkbox">
													<input type="checkbox"
														class="form-checkbox  form-product-input"
														id="input_7_1001" name="q7_myProducts[][id]"
														data-inputname="q7_myProducts[][id]" value="1001"
														readonly="" aria-label="Select Product: 신제품 1" />
													<div class="checked"></div>
													<div class="select_border"></div>
												</div>
											</div>
											<div class="p_image">
												<div class="image_area "></div>
											</div>
											<div for="input_7_1001" class="form-product-container">
												<span data-wrapper-react="true">
													<div class="title_description">
														<span class="form-product-name"
															id="product-name-input_7_1001">신제품 1</span><span
															class="form-product-description"
															id="product-name-description-input_7_1001"></span>
													</div>
													<span class="form-product-details"><b><span
															data-wrapper-react="true">$<span
																id="input_7_1001_price">5.00</span></span></b></span>
												</span>
											</div>
											<div class="focus_action_button_container">
												<a class="btn-inline-product-delete"> </a><a
													class="btn-inline-product-settings"> </a>
											</div>
										</div>
									</span>
									<div class="p_item_separator "></div>
									<span class="form-product-item hover-product-item  new_ui"
										categories="non-categorized" pid="1002"
										aria-labelledby="label_7">
										<div data-wrapper-react="true"
											class="form-product-item-detail new_ui">
											<div class="p_col">
												<div class="p_checkbox">
													<input type="checkbox"
														class="form-checkbox  form-product-input"
														id="input_7_1002" name="q7_myProducts[][id]"
														data-inputname="q7_myProducts[][id]" value="1002"
														readonly="" aria-label="Select Product: 신제품 2" />
													<div class="checked"></div>
													<div class="select_border"></div>
												</div>
											</div>
											<div class="p_image">
												<div class="image_area "></div>
											</div>
											<div for="input_7_1002" class="form-product-container">
												<span data-wrapper-react="true">
													<div class="title_description">
														<span class="form-product-name"
															id="product-name-input_7_1002">신제품 2</span><span
															class="form-product-description"
															id="product-name-description-input_7_1002"></span>
													</div>
													<span class="form-product-details"><b><span
															data-wrapper-react="true">$<span
																id="input_7_1002_price">10.00</span></span></b></span>
												</span>
											</div>
											<div class="focus_action_button_container">
												<a class="btn-inline-product-delete"> </a><a
													class="btn-inline-product-settings"> </a>
											</div>
										</div>
									</span>
									<div class="p_item_separator "></div>
									<span class="form-product-item hover-product-item  new_ui"
										categories="non-categorized" pid="1003"
										aria-labelledby="label_7">
										<div data-wrapper-react="true"
											class="form-product-item-detail new_ui">
											<div class="p_col">
												<div class="p_checkbox">
													<input type="checkbox"
														class="form-checkbox  form-product-input"
														id="input_7_1003" name="q7_myProducts[][id]"
														data-inputname="q7_myProducts[][id]" value="1003"
														readonly="" aria-label="Select Product: 신제품 3" />
													<div class="checked"></div>
													<div class="select_border"></div>
												</div>
											</div>
											<div class="p_image">
												<div class="image_area "></div>
											</div>
											<div for="input_7_1003" class="form-product-container">
												<span data-wrapper-react="true">
													<div class="title_description">
														<span class="form-product-name"
															id="product-name-input_7_1003">신제품 3</span><span
															class="form-product-description"
															id="product-name-description-input_7_1003"></span>
													</div>
													<span class="form-product-details"><b><span
															data-wrapper-react="true">$<span
																id="input_7_1003_price">20.00</span></span></b></span>
												</span>
											</div>
											<div class="focus_action_button_container">
												<a class="btn-inline-product-delete"> </a><a
													class="btn-inline-product-settings"> </a>
											</div>
										</div>
									</span>
									<div class="p_item_separator "></div>
									<span class="form-product-item hover-product-item  new_ui"
										categories="non-categorized" pid="1004"
										aria-labelledby="label_7">
										<div data-wrapper-react="true"
											class="form-product-item-detail new_ui">
											<div class="p_col">
												<div class="p_checkbox">
													<input type="checkbox"
														class="form-checkbox  form-product-input"
														id="input_7_1004" name="q7_myProducts[][id]"
														data-inputname="q7_myProducts[][id]" value="1004"
														readonly="" aria-label="Select Product: 신제품 4" />
													<div class="checked"></div>
													<div class="select_border"></div>
												</div>
											</div>
											<div class="p_image">
												<div class="image_area "></div>
											</div>
											<div for="input_7_1004" class="form-product-container">
												<span data-wrapper-react="true">
													<div class="title_description">
														<span class="form-product-name"
															id="product-name-input_7_1004">신제품 4</span><span
															class="form-product-description"
															id="product-name-description-input_7_1004"></span>
													</div>
													<span class="form-product-details"><b><span
															data-wrapper-react="true">$<span
																id="input_7_1004_price">30.00</span></span></b></span>
												</span>
											</div>
											<div class="focus_action_button_container">
												<a class="btn-inline-product-delete"> </a><a
													class="btn-inline-product-settings"> </a>
											</div>
										</div>
									</span>
									<div class="payment_footer new_ui ">
										<div class="total_area">
											<div class="form-payment-total">
												<div id="total-text">Total</div>
												<div class="form-payment-price">
													<span data-wrapper-react="true">$<span
														id="payment_total">0.00</span></span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div></li>
				<li class="form-line" data-type="control_fullname" id="id_4"><label
					class="form-label form-label-top form-label-auto" id="label_4"
					for="first_4" aria-hidden="false"> 이름 </label>
					<div id="cid_4" class="form-input-wide" data-layout="full">
						<div data-wrapper-react="true">
							<span class="form-sub-label-container"
								style="vertical-align: top" data-input-type="first"><input
								type="text" id="first_4" name="q4_yourName[first]"
								class="form-textbox" data-defaultvalue=""
								autoComplete="section-input_4 given-name" size="10"
								data-component="first"
								aria-labelledby="label_4 sublabel_4_first" value="" /><label
								class="form-sub-label" for="first_4" id="sublabel_4_first"
								style="min-height: 13px">이름</label></span><span
								class="form-sub-label-container" style="vertical-align: top"
								data-input-type="last"><input type="text" id="last_4"
								name="q4_yourName[last]" class="form-textbox"
								data-defaultvalue="" autoComplete="section-input_4 family-name"
								size="15" data-component="last"
								aria-labelledby="label_4 sublabel_4_last" value="" /><label
								class="form-sub-label" for="last_4" id="sublabel_4_last"
								style="min-height: 13px">성</label></span>
						</div>
					</div></li>
				<li class="form-line" data-type="control_email" id="id_5"><label
					class="form-label form-label-top form-label-auto" id="label_5"
					for="input_5" aria-hidden="false"> 이메일 </label>
					<div id="cid_5" class="form-input-wide" data-layout="half">
						<span class="form-sub-label-container" style="vertical-align: top"><input
							type="email" id="input_5" name="q5_yourEmail"
							class="form-textbox validate[Email]" data-defaultvalue=""
							autoComplete="section-input_5 email" style="width: 310px"
							size="310" placeholder="예: myname@example.com"
							data-component="email" aria-labelledby="label_5 sublabel_input_5"
							value="" /><label class="form-sub-label" for="input_5"
							id="sublabel_input_5" style="min-height: 13px">example@example.com</label></span>
					</div></li>
				<li class="form-line" data-type="control_phone" id="id_9"><label
					class="form-label form-label-top form-label-auto" id="label_9"
					for="input_9_full"> 연락처 번호 </label>
					<div id="cid_9" class="form-input-wide" data-layout="half">
						<span class="form-sub-label-container" style="vertical-align: top"><input
							type="tel" id="input_9_full" name="q9_input9[full]"
							data-type="mask-number"
							class="mask-phone-number form-textbox validate[Fill Mask]"
							data-defaultvalue="" autoComplete="section-input_9 tel-national"
							style="width: 310px" data-masked="true"
							placeholder="(000) 000-0000" data-component="phone"
							aria-labelledby="label_9" value="" /></span>
					</div></li>
				<li class="form-line" data-type="control_address" id="id_6"><label
					class="form-label form-label-top form-label-auto" id="label_6"
					for="input_6_addr_line1" aria-hidden="false"> 청구지 주소 </label>
					<div id="cid_6" class="form-input-wide" data-layout="full">
						<div summary="" class="form-address-table jsTest-addressField">
							<div
								class="form-address-line-wrapper jsTest-address-line-wrapperField">
								<span
									class="form-address-line form-address-street-line jsTest-address-lineField"><span
									class="form-sub-label-container" style="vertical-align: top"><input
										type="text" id="input_6_addr_line1"
										name="q6_input6[addr_line1]"
										class="form-textbox form-address-line" data-defaultvalue=""
										autoComplete="section-input_6 address-line1"
										data-component="address_line_1"
										aria-labelledby="label_6 sublabel_6_addr_line1" required=""
										value="" /><label class="form-sub-label"
										for="input_6_addr_line1" id="sublabel_6_addr_line1"
										style="min-height: 13px">주소 1</label></span></span>
							</div>
							<div
								class="form-address-line-wrapper jsTest-address-line-wrapperField">
								<span
									class="form-address-line form-address-street-line jsTest-address-lineField"><span
									class="form-sub-label-container" style="vertical-align: top"><input
										type="text" id="input_6_addr_line2"
										name="q6_input6[addr_line2]"
										class="form-textbox form-address-line" data-defaultvalue=""
										autoComplete="section-input_6 address-line2"
										data-component="address_line_2"
										aria-labelledby="label_6 sublabel_6_addr_line2" value="" /><label
										class="form-sub-label" for="input_6_addr_line2"
										id="sublabel_6_addr_line2" style="min-height: 13px">주소
											2</label></span></span>
							</div>
							<div
								class="form-address-line-wrapper jsTest-address-line-wrapperField">
								<span
									class="form-address-line form-address-city-line jsTest-address-lineField "><span
									class="form-sub-label-container" style="vertical-align: top"><input
										type="text" id="input_6_city" name="q6_input6[city]"
										class="form-textbox form-address-city" data-defaultvalue=""
										autoComplete="section-input_6 address-level2"
										data-component="city"
										aria-labelledby="label_6 sublabel_6_city" required="" value="" /><label
										class="form-sub-label" for="input_6_city" id="sublabel_6_city"
										style="min-height: 13px">시</label></span></span><span
									class="form-address-line form-address-state-line jsTest-address-lineField "><span
									class="form-sub-label-container" style="vertical-align: top"><input
										type="text" id="input_6_state" name="q6_input6[state]"
										class="form-textbox form-address-state" data-defaultvalue=""
										autoComplete="section-input_6 address-level1"
										data-component="state"
										aria-labelledby="label_6 sublabel_6_state" required=""
										value="" /><label class="form-sub-label" for="input_6_state"
										id="sublabel_6_state" style="min-height: 13px">주 / 도</label></span></span>
							</div>
							<div
								class="form-address-line-wrapper jsTest-address-line-wrapperField">
								<span
									class="form-address-line form-address-zip-line jsTest-address-lineField "><span
									class="form-sub-label-container" style="vertical-align: top"><input
										type="text" id="input_6_postal" name="q6_input6[postal]"
										class="form-textbox form-address-postal" data-defaultvalue=""
										autoComplete="section-input_6 postal-code"
										data-component="zip"
										aria-labelledby="label_6 sublabel_6_postal" required=""
										value="" /><label class="form-sub-label" for="input_6_postal"
										id="sublabel_6_postal" style="min-height: 13px">우편번호</label></span></span><span
									class="form-address-line form-address-country-line jsTest-address-lineField "><span
									class="form-sub-label-container" style="vertical-align: top"><select
										class="form-dropdown form-address-country"
										name="q6_input6[country]" id="input_6_country"
										data-component="country" required=""
										aria-labelledby="label_6 sublabel_6_country"
										autoComplete="section-input_6 country">
											<option value="">Please Select</option>
											<option value="United States">United States</option>
											<option value="Afghanistan">Afghanistan</option>
											<option value="Albania">Albania</option>
											<option value="Algeria">Algeria</option>
											<option value="American Samoa">American Samoa</option>
											<option value="Andorra">Andorra</option>
											<option value="Angola">Angola</option>
											<option value="Anguilla">Anguilla</option>
											<option value="Antigua and Barbuda">Antigua and
												Barbuda</option>
											<option value="Argentina">Argentina</option>
											<option value="Armenia">Armenia</option>
											<option value="Aruba">Aruba</option>
											<option value="Australia">Australia</option>
											<option value="Austria">Austria</option>
											<option value="Azerbaijan">Azerbaijan</option>
											<option value="The Bahamas">The Bahamas</option>
											<option value="Bahrain">Bahrain</option>
											<option value="Bangladesh">Bangladesh</option>
											<option value="Barbados">Barbados</option>
											<option value="Belarus">Belarus</option>
											<option value="Belgium">Belgium</option>
											<option value="Belize">Belize</option>
											<option value="Benin">Benin</option>
											<option value="Bermuda">Bermuda</option>
											<option value="Bhutan">Bhutan</option>
											<option value="Bolivia">Bolivia</option>
											<option value="Bosnia and Herzegovina">Bosnia and
												Herzegovina</option>
											<option value="Botswana">Botswana</option>
											<option value="Brazil">Brazil</option>
											<option value="Brunei">Brunei</option>
											<option value="Bulgaria">Bulgaria</option>
											<option value="Burkina Faso">Burkina Faso</option>
											<option value="Burundi">Burundi</option>
											<option value="Cambodia">Cambodia</option>
											<option value="Cameroon">Cameroon</option>
											<option value="Canada">Canada</option>
											<option value="Cape Verde">Cape Verde</option>
											<option value="Cayman Islands">Cayman Islands</option>
											<option value="Central African Republic">Central
												African Republic</option>
											<option value="Chad">Chad</option>
											<option value="Chile">Chile</option>
											<option value="China">China</option>
											<option value="Christmas Island">Christmas Island</option>
											<option value="Cocos (Keeling) Islands">Cocos
												(Keeling) Islands</option>
											<option value="Colombia">Colombia</option>
											<option value="Comoros">Comoros</option>
											<option value="Congo">Congo</option>
											<option value="Cook Islands">Cook Islands</option>
											<option value="Costa Rica">Costa Rica</option>
											<option value="Cote d&#x27;Ivoire">Cote
												d&#x27;Ivoire</option>
											<option value="Croatia">Croatia</option>
											<option value="Cuba">Cuba</option>
											<option value="Curaçao">Curaçao</option>
											<option value="Cyprus">Cyprus</option>
											<option value="Czech Republic">Czech Republic</option>
											<option value="Democratic Republic of the Congo">Democratic
												Republic of the Congo</option>
											<option value="Denmark">Denmark</option>
											<option value="Djibouti">Djibouti</option>
											<option value="Dominica">Dominica</option>
											<option value="Dominican Republic">Dominican
												Republic</option>
											<option value="Ecuador">Ecuador</option>
											<option value="Egypt">Egypt</option>
											<option value="El Salvador">El Salvador</option>
											<option value="Equatorial Guinea">Equatorial Guinea</option>
											<option value="Eritrea">Eritrea</option>
											<option value="Estonia">Estonia</option>
											<option value="Ethiopia">Ethiopia</option>
											<option value="Falkland Islands">Falkland Islands</option>
											<option value="Faroe Islands">Faroe Islands</option>
											<option value="Fiji">Fiji</option>
											<option value="Finland">Finland</option>
											<option value="France">France</option>
											<option value="French Polynesia">French Polynesia</option>
											<option value="Gabon">Gabon</option>
											<option value="The Gambia">The Gambia</option>
											<option value="Georgia">Georgia</option>
											<option value="Germany">Germany</option>
											<option value="Ghana">Ghana</option>
											<option value="Gibraltar">Gibraltar</option>
											<option value="Greece">Greece</option>
											<option value="Greenland">Greenland</option>
											<option value="Grenada">Grenada</option>
											<option value="Guadeloupe">Guadeloupe</option>
											<option value="Guam">Guam</option>
											<option value="Guatemala">Guatemala</option>
											<option value="Guernsey">Guernsey</option>
											<option value="Guinea">Guinea</option>
											<option value="Guinea-Bissau">Guinea-Bissau</option>
											<option value="Guyana">Guyana</option>
											<option value="Haiti">Haiti</option>
											<option value="Honduras">Honduras</option>
											<option value="Hong Kong">Hong Kong</option>
											<option value="Hungary">Hungary</option>
											<option value="Iceland">Iceland</option>
											<option value="India">India</option>
											<option value="Indonesia">Indonesia</option>
											<option value="Iran">Iran</option>
											<option value="Iraq">Iraq</option>
											<option value="Ireland">Ireland</option>
											<option value="Israel">Israel</option>
											<option value="Italy">Italy</option>
											<option value="Jamaica">Jamaica</option>
											<option value="Japan">Japan</option>
											<option value="Jersey">Jersey</option>
											<option value="Jordan">Jordan</option>
											<option value="Kazakhstan">Kazakhstan</option>
											<option value="Kenya">Kenya</option>
											<option value="Kiribati">Kiribati</option>
											<option value="North Korea">North Korea</option>
											<option value="South Korea">South Korea</option>
											<option value="Kosovo">Kosovo</option>
											<option value="Kuwait">Kuwait</option>
											<option value="Kyrgyzstan">Kyrgyzstan</option>
											<option value="Laos">Laos</option>
											<option value="Latvia">Latvia</option>
											<option value="Lebanon">Lebanon</option>
											<option value="Lesotho">Lesotho</option>
											<option value="Liberia">Liberia</option>
											<option value="Libya">Libya</option>
											<option value="Liechtenstein">Liechtenstein</option>
											<option value="Lithuania">Lithuania</option>
											<option value="Luxembourg">Luxembourg</option>
											<option value="Macau">Macau</option>
											<option value="Macedonia">Macedonia</option>
											<option value="Madagascar">Madagascar</option>
											<option value="Malawi">Malawi</option>
											<option value="Malaysia">Malaysia</option>
											<option value="Maldives">Maldives</option>
											<option value="Mali">Mali</option>
											<option value="Malta">Malta</option>
											<option value="Marshall Islands">Marshall Islands</option>
											<option value="Martinique">Martinique</option>
											<option value="Mauritania">Mauritania</option>
											<option value="Mauritius">Mauritius</option>
											<option value="Mayotte">Mayotte</option>
											<option value="Mexico">Mexico</option>
											<option value="Micronesia">Micronesia</option>
											<option value="Moldova">Moldova</option>
											<option value="Monaco">Monaco</option>
											<option value="Mongolia">Mongolia</option>
											<option value="Montenegro">Montenegro</option>
											<option value="Montserrat">Montserrat</option>
											<option value="Morocco">Morocco</option>
											<option value="Mozambique">Mozambique</option>
											<option value="Myanmar">Myanmar</option>
											<option value="Nagorno-Karabakh">Nagorno-Karabakh</option>
											<option value="Namibia">Namibia</option>
											<option value="Nauru">Nauru</option>
											<option value="Nepal">Nepal</option>
											<option value="Netherlands">Netherlands</option>
											<option value="Netherlands Antilles">Netherlands
												Antilles</option>
											<option value="New Caledonia">New Caledonia</option>
											<option value="New Zealand">New Zealand</option>
											<option value="Nicaragua">Nicaragua</option>
											<option value="Niger">Niger</option>
											<option value="Nigeria">Nigeria</option>
											<option value="Niue">Niue</option>
											<option value="Norfolk Island">Norfolk Island</option>
											<option value="Turkish Republic of Northern Cyprus">Turkish
												Republic of Northern Cyprus</option>
											<option value="Northern Mariana">Northern Mariana</option>
											<option value="Norway">Norway</option>
											<option value="Oman">Oman</option>
											<option value="Pakistan">Pakistan</option>
											<option value="Palau">Palau</option>
											<option value="Palestine">Palestine</option>
											<option value="Panama">Panama</option>
											<option value="Papua New Guinea">Papua New Guinea</option>
											<option value="Paraguay">Paraguay</option>
											<option value="Peru">Peru</option>
											<option value="Philippines">Philippines</option>
											<option value="Pitcairn Islands">Pitcairn Islands</option>
											<option value="Poland">Poland</option>
											<option value="Portugal">Portugal</option>
											<option value="Puerto Rico">Puerto Rico</option>
											<option value="Qatar">Qatar</option>
											<option value="Republic of the Congo">Republic of
												the Congo</option>
											<option value="Romania">Romania</option>
											<option value="Russia">Russia</option>
											<option value="Rwanda">Rwanda</option>
											<option value="Saint Barthelemy">Saint Barthelemy</option>
											<option value="Saint Helena">Saint Helena</option>
											<option value="Saint Kitts and Nevis">Saint Kitts
												and Nevis</option>
											<option value="Saint Lucia">Saint Lucia</option>
											<option value="Saint Martin">Saint Martin</option>
											<option value="Saint Pierre and Miquelon">Saint
												Pierre and Miquelon</option>
											<option value="Saint Vincent and the Grenadines">Saint
												Vincent and the Grenadines</option>
											<option value="Samoa">Samoa</option>
											<option value="San Marino">San Marino</option>
											<option value="Sao Tome and Principe">Sao Tome and
												Principe</option>
											<option value="Saudi Arabia">Saudi Arabia</option>
											<option value="Senegal">Senegal</option>
											<option value="Serbia">Serbia</option>
											<option value="Seychelles">Seychelles</option>
											<option value="Sierra Leone">Sierra Leone</option>
											<option value="Singapore">Singapore</option>
											<option value="Slovakia">Slovakia</option>
											<option value="Slovenia">Slovenia</option>
											<option value="Solomon Islands">Solomon Islands</option>
											<option value="Somalia">Somalia</option>
											<option value="Somaliland">Somaliland</option>
											<option value="South Africa">South Africa</option>
											<option value="South Ossetia">South Ossetia</option>
											<option value="South Sudan">South Sudan</option>
											<option value="Spain">Spain</option>
											<option value="Sri Lanka">Sri Lanka</option>
											<option value="Sudan">Sudan</option>
											<option value="Suriname">Suriname</option>
											<option value="Svalbard">Svalbard</option>
											<option value="eSwatini">eSwatini</option>
											<option value="Sweden">Sweden</option>
											<option value="Switzerland">Switzerland</option>
											<option value="Syria">Syria</option>
											<option value="Taiwan">Taiwan</option>
											<option value="Tajikistan">Tajikistan</option>
											<option value="Tanzania">Tanzania</option>
											<option value="Thailand">Thailand</option>
											<option value="Timor-Leste">Timor-Leste</option>
											<option value="Togo">Togo</option>
											<option value="Tokelau">Tokelau</option>
											<option value="Tonga">Tonga</option>
											<option value="Transnistria Pridnestrovie">Transnistria
												Pridnestrovie</option>
											<option value="Trinidad and Tobago">Trinidad and
												Tobago</option>
											<option value="Tristan da Cunha">Tristan da Cunha</option>
											<option value="Tunisia">Tunisia</option>
											<option value="Turkey">Turkey</option>
											<option value="Turkmenistan">Turkmenistan</option>
											<option value="Turks and Caicos Islands">Turks and
												Caicos Islands</option>
											<option value="Tuvalu">Tuvalu</option>
											<option value="Uganda">Uganda</option>
											<option value="Ukraine">Ukraine</option>
											<option value="United Arab Emirates">United Arab
												Emirates</option>
											<option value="United Kingdom">United Kingdom</option>
											<option value="Uruguay">Uruguay</option>
											<option value="Uzbekistan">Uzbekistan</option>
											<option value="Vanuatu">Vanuatu</option>
											<option value="Vatican City">Vatican City</option>
											<option value="Venezuela">Venezuela</option>
											<option value="Vietnam">Vietnam</option>
											<option value="British Virgin Islands">British
												Virgin Islands</option>
											<option value="Isle of Man">Isle of Man</option>
											<option value="US Virgin Islands">US Virgin Islands</option>
											<option value="Wallis and Futuna">Wallis and Futuna</option>
											<option value="Western Sahara">Western Sahara</option>
											<option value="Yemen">Yemen</option>
											<option value="Zambia">Zambia</option>
											<option value="Zimbabwe">Zimbabwe</option>
											<option value="other">Other</option>
									</select><label class="form-sub-label" for="input_6_country"
										id="sublabel_6_country" style="min-height: 13px">국가</label></span></span>
							</div>
						</div>
					</div></li>
				<li class="form-line" data-type="control_radio" id="id_11"><label
					class="form-label form-label-top form-label-auto" id="label_11"
					aria-hidden="false"> 배송지 주소가 청구지 주소와 같나요? </label>
					<div id="cid_11" class="form-input-wide" data-layout="full">
						<div class="form-single-column" role="group"
							aria-labelledby="label_11" data-component="radio">
							<span class="form-radio-item" style="clear: left"><span
								class="dragger-item"></span><input type="radio"
								aria-describedby="label_11" class="form-radio" id="input_11_0"
								name="q11_input11" value="예" /><label id="label_input_11_0"
								for="input_11_0">예</label></span><span class="form-radio-item"
								style="clear: left"><span class="dragger-item"></span><input
								type="radio" aria-describedby="label_11" class="form-radio"
								id="input_11_1" name="q11_input11" value="아니오" /><label
								id="label_input_11_1" for="input_11_1">아니오</label></span>
						</div>
					</div></li>
				<li class="form-line form-field-hidden" style="display: none;"
					data-type="control_address" id="id_10"><label
					class="form-label form-label-top form-label-auto" id="label_10"
					for="input_10_addr_line1" aria-hidden="false"> 배송지 주소 </label>
					<div id="cid_10" class="form-input-wide" data-layout="full">
						<div summary="" class="form-address-table jsTest-addressField">
							<div
								class="form-address-line-wrapper jsTest-address-line-wrapperField">
								<span
									class="form-address-line form-address-street-line jsTest-address-lineField"><span
									class="form-sub-label-container" style="vertical-align: top"><input
										type="text" id="input_10_addr_line1"
										name="q10_address[addr_line1]"
										class="form-textbox form-address-line" data-defaultvalue=""
										autoComplete="section-input_10 address-line1"
										data-component="address_line_1"
										aria-labelledby="label_10 sublabel_10_addr_line1" required=""
										value="" /><label class="form-sub-label"
										for="input_10_addr_line1" id="sublabel_10_addr_line1"
										style="min-height: 13px">주소 1</label></span></span>
							</div>
							<div
								class="form-address-line-wrapper jsTest-address-line-wrapperField">
								<span
									class="form-address-line form-address-street-line jsTest-address-lineField"><span
									class="form-sub-label-container" style="vertical-align: top"><input
										type="text" id="input_10_addr_line2"
										name="q10_address[addr_line2]"
										class="form-textbox form-address-line" data-defaultvalue=""
										autoComplete="section-input_10 address-line2"
										data-component="address_line_2"
										aria-labelledby="label_10 sublabel_10_addr_line2" value="" /><label
										class="form-sub-label" for="input_10_addr_line2"
										id="sublabel_10_addr_line2" style="min-height: 13px">주소
											2</label></span></span>
							</div>
							<div
								class="form-address-line-wrapper jsTest-address-line-wrapperField">
								<span
									class="form-address-line form-address-city-line jsTest-address-lineField "><span
									class="form-sub-label-container" style="vertical-align: top"><input
										type="text" id="input_10_city" name="q10_address[city]"
										class="form-textbox form-address-city" data-defaultvalue=""
										autoComplete="section-input_10 address-level2"
										data-component="city"
										aria-labelledby="label_10 sublabel_10_city" required=""
										value="" /><label class="form-sub-label" for="input_10_city"
										id="sublabel_10_city" style="min-height: 13px">시</label></span></span><span
									class="form-address-line form-address-state-line jsTest-address-lineField "><span
									class="form-sub-label-container" style="vertical-align: top"><input
										type="text" id="input_10_state" name="q10_address[state]"
										class="form-textbox form-address-state" data-defaultvalue=""
										autoComplete="section-input_10 address-level1"
										data-component="state"
										aria-labelledby="label_10 sublabel_10_state" required=""
										value="" /><label class="form-sub-label" for="input_10_state"
										id="sublabel_10_state" style="min-height: 13px">주 / 도</label></span></span>
							</div>
							<div
								class="form-address-line-wrapper jsTest-address-line-wrapperField">
								<span
									class="form-address-line form-address-zip-line jsTest-address-lineField "><span
									class="form-sub-label-container" style="vertical-align: top"><input
										type="text" id="input_10_postal" name="q10_address[postal]"
										class="form-textbox form-address-postal" data-defaultvalue=""
										autoComplete="section-input_10 postal-code"
										data-component="zip"
										aria-labelledby="label_10 sublabel_10_postal" required=""
										value="" /><label class="form-sub-label"
										for="input_10_postal" id="sublabel_10_postal"
										style="min-height: 13px">우편번호</label></span></span><span
									class="form-address-line form-address-country-line jsTest-address-lineField "><span
									class="form-sub-label-container" style="vertical-align: top"><select
										class="form-dropdown form-address-country"
										name="q10_address[country]" id="input_10_country"
										data-component="country" required=""
										aria-labelledby="label_10 sublabel_10_country"
										autoComplete="section-input_10 country">
											<option value="">Please Select</option>
											<option value="United States">United States</option>
											<option value="Afghanistan">Afghanistan</option>
											<option value="Albania">Albania</option>
											<option value="Algeria">Algeria</option>
											<option value="American Samoa">American Samoa</option>
											<option value="Andorra">Andorra</option>
											<option value="Angola">Angola</option>
											<option value="Anguilla">Anguilla</option>
											<option value="Antigua and Barbuda">Antigua and
												Barbuda</option>
											<option value="Argentina">Argentina</option>
											<option value="Armenia">Armenia</option>
											<option value="Aruba">Aruba</option>
											<option value="Australia">Australia</option>
											<option value="Austria">Austria</option>
											<option value="Azerbaijan">Azerbaijan</option>
											<option value="The Bahamas">The Bahamas</option>
											<option value="Bahrain">Bahrain</option>
											<option value="Bangladesh">Bangladesh</option>
											<option value="Barbados">Barbados</option>
											<option value="Belarus">Belarus</option>
											<option value="Belgium">Belgium</option>
											<option value="Belize">Belize</option>
											<option value="Benin">Benin</option>
											<option value="Bermuda">Bermuda</option>
											<option value="Bhutan">Bhutan</option>
											<option value="Bolivia">Bolivia</option>
											<option value="Bosnia and Herzegovina">Bosnia and
												Herzegovina</option>
											<option value="Botswana">Botswana</option>
											<option value="Brazil">Brazil</option>
											<option value="Brunei">Brunei</option>
											<option value="Bulgaria">Bulgaria</option>
											<option value="Burkina Faso">Burkina Faso</option>
											<option value="Burundi">Burundi</option>
											<option value="Cambodia">Cambodia</option>
											<option value="Cameroon">Cameroon</option>
											<option value="Canada">Canada</option>
											<option value="Cape Verde">Cape Verde</option>
											<option value="Cayman Islands">Cayman Islands</option>
											<option value="Central African Republic">Central
												African Republic</option>
											<option value="Chad">Chad</option>
											<option value="Chile">Chile</option>
											<option value="China">China</option>
											<option value="Christmas Island">Christmas Island</option>
											<option value="Cocos (Keeling) Islands">Cocos
												(Keeling) Islands</option>
											<option value="Colombia">Colombia</option>
											<option value="Comoros">Comoros</option>
											<option value="Congo">Congo</option>
											<option value="Cook Islands">Cook Islands</option>
											<option value="Costa Rica">Costa Rica</option>
											<option value="Cote d&#x27;Ivoire">Cote
												d&#x27;Ivoire</option>
											<option value="Croatia">Croatia</option>
											<option value="Cuba">Cuba</option>
											<option value="Curaçao">Curaçao</option>
											<option value="Cyprus">Cyprus</option>
											<option value="Czech Republic">Czech Republic</option>
											<option value="Democratic Republic of the Congo">Democratic
												Republic of the Congo</option>
											<option value="Denmark">Denmark</option>
											<option value="Djibouti">Djibouti</option>
											<option value="Dominica">Dominica</option>
											<option value="Dominican Republic">Dominican
												Republic</option>
											<option value="Ecuador">Ecuador</option>
											<option value="Egypt">Egypt</option>
											<option value="El Salvador">El Salvador</option>
											<option value="Equatorial Guinea">Equatorial Guinea</option>
											<option value="Eritrea">Eritrea</option>
											<option value="Estonia">Estonia</option>
											<option value="Ethiopia">Ethiopia</option>
											<option value="Falkland Islands">Falkland Islands</option>
											<option value="Faroe Islands">Faroe Islands</option>
											<option value="Fiji">Fiji</option>
											<option value="Finland">Finland</option>
											<option value="France">France</option>
											<option value="French Polynesia">French Polynesia</option>
											<option value="Gabon">Gabon</option>
											<option value="The Gambia">The Gambia</option>
											<option value="Georgia">Georgia</option>
											<option value="Germany">Germany</option>
											<option value="Ghana">Ghana</option>
											<option value="Gibraltar">Gibraltar</option>
											<option value="Greece">Greece</option>
											<option value="Greenland">Greenland</option>
											<option value="Grenada">Grenada</option>
											<option value="Guadeloupe">Guadeloupe</option>
											<option value="Guam">Guam</option>
											<option value="Guatemala">Guatemala</option>
											<option value="Guernsey">Guernsey</option>
											<option value="Guinea">Guinea</option>
											<option value="Guinea-Bissau">Guinea-Bissau</option>
											<option value="Guyana">Guyana</option>
											<option value="Haiti">Haiti</option>
											<option value="Honduras">Honduras</option>
											<option value="Hong Kong">Hong Kong</option>
											<option value="Hungary">Hungary</option>
											<option value="Iceland">Iceland</option>
											<option value="India">India</option>
											<option value="Indonesia">Indonesia</option>
											<option value="Iran">Iran</option>
											<option value="Iraq">Iraq</option>
											<option value="Ireland">Ireland</option>
											<option value="Israel">Israel</option>
											<option value="Italy">Italy</option>
											<option value="Jamaica">Jamaica</option>
											<option value="Japan">Japan</option>
											<option value="Jersey">Jersey</option>
											<option value="Jordan">Jordan</option>
											<option value="Kazakhstan">Kazakhstan</option>
											<option value="Kenya">Kenya</option>
											<option value="Kiribati">Kiribati</option>
											<option value="North Korea">North Korea</option>
											<option value="South Korea">South Korea</option>
											<option value="Kosovo">Kosovo</option>
											<option value="Kuwait">Kuwait</option>
											<option value="Kyrgyzstan">Kyrgyzstan</option>
											<option value="Laos">Laos</option>
											<option value="Latvia">Latvia</option>
											<option value="Lebanon">Lebanon</option>
											<option value="Lesotho">Lesotho</option>
											<option value="Liberia">Liberia</option>
											<option value="Libya">Libya</option>
											<option value="Liechtenstein">Liechtenstein</option>
											<option value="Lithuania">Lithuania</option>
											<option value="Luxembourg">Luxembourg</option>
											<option value="Macau">Macau</option>
											<option value="Macedonia">Macedonia</option>
											<option value="Madagascar">Madagascar</option>
											<option value="Malawi">Malawi</option>
											<option value="Malaysia">Malaysia</option>
											<option value="Maldives">Maldives</option>
											<option value="Mali">Mali</option>
											<option value="Malta">Malta</option>
											<option value="Marshall Islands">Marshall Islands</option>
											<option value="Martinique">Martinique</option>
											<option value="Mauritania">Mauritania</option>
											<option value="Mauritius">Mauritius</option>
											<option value="Mayotte">Mayotte</option>
											<option value="Mexico">Mexico</option>
											<option value="Micronesia">Micronesia</option>
											<option value="Moldova">Moldova</option>
											<option value="Monaco">Monaco</option>
											<option value="Mongolia">Mongolia</option>
											<option value="Montenegro">Montenegro</option>
											<option value="Montserrat">Montserrat</option>
											<option value="Morocco">Morocco</option>
											<option value="Mozambique">Mozambique</option>
											<option value="Myanmar">Myanmar</option>
											<option value="Nagorno-Karabakh">Nagorno-Karabakh</option>
											<option value="Namibia">Namibia</option>
											<option value="Nauru">Nauru</option>
											<option value="Nepal">Nepal</option>
											<option value="Netherlands">Netherlands</option>
											<option value="Netherlands Antilles">Netherlands
												Antilles</option>
											<option value="New Caledonia">New Caledonia</option>
											<option value="New Zealand">New Zealand</option>
											<option value="Nicaragua">Nicaragua</option>
											<option value="Niger">Niger</option>
											<option value="Nigeria">Nigeria</option>
											<option value="Niue">Niue</option>
											<option value="Norfolk Island">Norfolk Island</option>
											<option value="Turkish Republic of Northern Cyprus">Turkish
												Republic of Northern Cyprus</option>
											<option value="Northern Mariana">Northern Mariana</option>
											<option value="Norway">Norway</option>
											<option value="Oman">Oman</option>
											<option value="Pakistan">Pakistan</option>
											<option value="Palau">Palau</option>
											<option value="Palestine">Palestine</option>
											<option value="Panama">Panama</option>
											<option value="Papua New Guinea">Papua New Guinea</option>
											<option value="Paraguay">Paraguay</option>
											<option value="Peru">Peru</option>
											<option value="Philippines">Philippines</option>
											<option value="Pitcairn Islands">Pitcairn Islands</option>
											<option value="Poland">Poland</option>
											<option value="Portugal">Portugal</option>
											<option value="Puerto Rico">Puerto Rico</option>
											<option value="Qatar">Qatar</option>
											<option value="Republic of the Congo">Republic of
												the Congo</option>
											<option value="Romania">Romania</option>
											<option value="Russia">Russia</option>
											<option value="Rwanda">Rwanda</option>
											<option value="Saint Barthelemy">Saint Barthelemy</option>
											<option value="Saint Helena">Saint Helena</option>
											<option value="Saint Kitts and Nevis">Saint Kitts
												and Nevis</option>
											<option value="Saint Lucia">Saint Lucia</option>
											<option value="Saint Martin">Saint Martin</option>
											<option value="Saint Pierre and Miquelon">Saint
												Pierre and Miquelon</option>
											<option value="Saint Vincent and the Grenadines">Saint
												Vincent and the Grenadines</option>
											<option value="Samoa">Samoa</option>
											<option value="San Marino">San Marino</option>
											<option value="Sao Tome and Principe">Sao Tome and
												Principe</option>
											<option value="Saudi Arabia">Saudi Arabia</option>
											<option value="Senegal">Senegal</option>
											<option value="Serbia">Serbia</option>
											<option value="Seychelles">Seychelles</option>
											<option value="Sierra Leone">Sierra Leone</option>
											<option value="Singapore">Singapore</option>
											<option value="Slovakia">Slovakia</option>
											<option value="Slovenia">Slovenia</option>
											<option value="Solomon Islands">Solomon Islands</option>
											<option value="Somalia">Somalia</option>
											<option value="Somaliland">Somaliland</option>
											<option value="South Africa">South Africa</option>
											<option value="South Ossetia">South Ossetia</option>
											<option value="South Sudan">South Sudan</option>
											<option value="Spain">Spain</option>
											<option value="Sri Lanka">Sri Lanka</option>
											<option value="Sudan">Sudan</option>
											<option value="Suriname">Suriname</option>
											<option value="Svalbard">Svalbard</option>
											<option value="eSwatini">eSwatini</option>
											<option value="Sweden">Sweden</option>
											<option value="Switzerland">Switzerland</option>
											<option value="Syria">Syria</option>
											<option value="Taiwan">Taiwan</option>
											<option value="Tajikistan">Tajikistan</option>
											<option value="Tanzania">Tanzania</option>
											<option value="Thailand">Thailand</option>
											<option value="Timor-Leste">Timor-Leste</option>
											<option value="Togo">Togo</option>
											<option value="Tokelau">Tokelau</option>
											<option value="Tonga">Tonga</option>
											<option value="Transnistria Pridnestrovie">Transnistria
												Pridnestrovie</option>
											<option value="Trinidad and Tobago">Trinidad and
												Tobago</option>
											<option value="Tristan da Cunha">Tristan da Cunha</option>
											<option value="Tunisia">Tunisia</option>
											<option value="Turkey">Turkey</option>
											<option value="Turkmenistan">Turkmenistan</option>
											<option value="Turks and Caicos Islands">Turks and
												Caicos Islands</option>
											<option value="Tuvalu">Tuvalu</option>
											<option value="Uganda">Uganda</option>
											<option value="Ukraine">Ukraine</option>
											<option value="United Arab Emirates">United Arab
												Emirates</option>
											<option value="United Kingdom">United Kingdom</option>
											<option value="Uruguay">Uruguay</option>
											<option value="Uzbekistan">Uzbekistan</option>
											<option value="Vanuatu">Vanuatu</option>
											<option value="Vatican City">Vatican City</option>
											<option value="Venezuela">Venezuela</option>
											<option value="Vietnam">Vietnam</option>
											<option value="British Virgin Islands">British
												Virgin Islands</option>
											<option value="Isle of Man">Isle of Man</option>
											<option value="US Virgin Islands">US Virgin Islands</option>
											<option value="Wallis and Futuna">Wallis and Futuna</option>
											<option value="Western Sahara">Western Sahara</option>
											<option value="Yemen">Yemen</option>
											<option value="Zambia">Zambia</option>
											<option value="Zimbabwe">Zimbabwe</option>
											<option value="other">Other</option>
									</select><label class="form-sub-label" for="input_10_country"
										id="sublabel_10_country" style="min-height: 13px">국가</label></span></span>
							</div>
						</div>
					</div></li>
				<li class="form-line" data-type="control_radio" id="id_12"><label
					class="form-label form-label-top form-label-auto" id="label_12"
					aria-hidden="false"> 선물을 보낼까요? </label>
					<div id="cid_12" class="form-input-wide" data-layout="full">
						<div class="form-single-column" role="group"
							aria-labelledby="label_12" data-component="radio">
							<span class="form-radio-item" style="clear: left"><span
								class="dragger-item"></span><input type="radio"
								aria-describedby="label_12" class="form-radio" id="input_12_0"
								name="q12_input12" value="예" /><label id="label_input_12_0"
								for="input_12_0">예</label></span><span class="form-radio-item"
								style="clear: left"><span class="dragger-item"></span><input
								type="radio" aria-describedby="label_12" class="form-radio"
								id="input_12_1" name="q12_input12" value="아니오" /><label
								id="label_input_12_1" for="input_12_1">아니오</label></span>
						</div>
					</div></li>
				<li class="form-line form-field-hidden" style="display: none;"
					data-type="control_textarea" id="id_13"><label
					class="form-label form-label-top form-label-auto" id="label_13"
					for="input_13" aria-hidden="false"> 수취인 이름 </label>
					<div id="cid_13" class="form-input-wide" data-layout="full">
						<textarea id="input_13" class="form-textarea" name="q13_input13"
							style="width: 648px; height: 163px" data-component="textarea"
							aria-labelledby="label_13"></textarea>
					</div></li>
				<li class="form-line form-field-hidden" style="display: none;"
					data-type="control_textarea" id="id_14"><label
					class="form-label form-label-top form-label-auto" id="label_14"
					for="input_14" aria-hidden="false"> 선물 메시지 </label>
					<div id="cid_14" class="form-input-wide" data-layout="full">
						<textarea id="input_14" class="form-textarea" name="q14_input14"
							style="width: 648px; height: 163px" data-component="textarea"
							aria-labelledby="label_14"></textarea>
					</div></li>
				<li class="form-line" data-type="control_textarea" id="id_15"><label
					class="form-label form-label-top form-label-auto" id="label_15"
					for="input_15" aria-hidden="false"> 특별 요청사항 </label>
					<div id="cid_15" class="form-input-wide" data-layout="full">
						<textarea id="input_15" class="form-textarea" name="q15_input15"
							style="width: 648px; height: 163px" data-component="textarea"
							aria-labelledby="label_15"></textarea>
					</div></li>
				<li class="form-line" data-type="control_paymentmethods" id="id_8"><label
					class="form-label form-label-top" id="label_8" for="input_8"
					aria-hidden="false"> Payment Methods </label>
					<div id="cid_8" class="form-input-wide" data-layout="full">
						<div class="payment-methods-area">
							<div data-wrapper-react="true"
								class="paypalcomplete-payment-wrapper" data-sandbox="enabled"
								data-currency="USD" data-billing-address="6" data-auth-only="No"
								data-show-spb="true" data-show-card-fields="true">
								<div id="paypal-commerce-platform-container">
									<div class="paypal-toggle-buttons">
										<div class="paypal-toggle">
											<div id="paypal-card-fields">
												<div class="payment-method-container"
													data-id="paypal-card-fields">
													<input type="radio" class="form-radio"
														name="paypal-payment-method" data-id="paypal-card-fields"
														id="paypal-card-fields-input" aria-describedby="label_8" /><label
														for="paypal-card-fields-input"><span
														class="CC_ico"></span>Debit or Credit Card</label>
												</div>
											</div>
											<div id="paypal-smart-buttons">
												<div class="payment-method-container"
													data-id="paypal-smart-buttons">
													<input type="radio" class="form-radio"
														name="paypal-payment-method"
														data-id="paypal-smart-buttons"
														id="paypal-smart-buttons-input" aria-label="Paypal"
														aria-describedby="label_8" /><label
														for="paypal-smart-buttons-input" aria-hidden="true"></label>
												</div>
											</div>
										</div>
									</div>
									<div class="paypal-toggle-content " render-paypal-type="">
										<div class="content-area">
											<div id="paypal-credit-card-fields">
												<div class="paypal-commerce-platform">
													<div class="paypal-content">
														<table class="form-address-table payment-form-table"
															style="border: 0" cellPadding="0" cellSpacing="0"
															role="presentation">
															<tbody>
																<tr>
																	<td width="50%"><span
																		class="form-sub-label-container"
																		style="vertical-align: top"><input type="text"
																			id="7_cc_firstName"
																			name="q7_myProducts[cc_firstName]"
																			class="form-textbox cc_firstName"
																			data-defaultvalue="" size="20"
																			data-component="cc_firstName"
																			aria-label="Credit Card First Name"
																			aria-labelledby="" value="" /><label
																			class="form-sub-label" for="7_cc_firstName"
																			id="sublabel_cc_firstName"
																			style="min-height: 13px; margin: 0 0 3px 0">이름</label></span></td>
																	<td width="50%"><span
																		class="form-sub-label-container"
																		style="vertical-align: top"><input type="text"
																			id="7_cc_lastName" name="q7_myProducts[cc_lastName]"
																			class="form-textbox cc_lastName" data-defaultvalue=""
																			size="20" data-component="cc_lastName"
																			aria-label="Credit Card Last Name" aria-labelledby=""
																			value="" /><label class="form-sub-label"
																			for="7_cc_lastName" id="sublabel_cc_lastName"
																			style="min-height: 13px; margin: 0 0 3px 0">성</label></span></td>
																</tr>
																<tr class="if_cc_field">
																	<td width="50%"><span
																		class="form-sub-label-container"
																		style="vertical-align: top">
																			<div class="form-textbox cc_numberMount cc_number"></div>
																			<label class="form-sub-label" for="7_cc_number"
																			id="sublabel_cc_number"
																			style="min-height: 13px; margin: 0 0 3px 0">신용카드
																				번호</label>
																	</span></td>
																	<td width="50%"><span
																		class="form-sub-label-container"
																		style="vertical-align: top">
																			<div class="form-textbox cc_ccvMount cc_ccv"></div>
																			<label class="form-sub-label" for="7_cc_ccv"
																			id="sublabel_cc_ccv"
																			style="min-height: 13px; margin: 0 0 3px 0">보안코드</label>
																	</span></td>
																</tr>
																<tr>
																	<td width="50%"><span
																		class="form-sub-label-container"
																		style="vertical-align: top">
																			<div
																				class="form-textbox cc_cardExpiryMount cc_card_expiry"></div>
																			<label class="form-sub-label" for="7_cc_card_expiry"
																			id="sublabel_cc_card_expiry"
																			style="min-height: 13px; margin: 0 0 3px 0">카드
																				만료일</label>
																	</span></td>
																	<td width="50%">
																<tr style="display: none">
																	<td><input id="paypal_complete_dummy"
																		style="display: none" /></td>
																</tr>
																</td>
																</tr>
																<div id="payments-sdk__contingency-lightbox"></div>
															</tbody>
														</table>
													</div>
												</div>
											</div>
											<div id="paypal-spb-area">
												<p>
													Please click one of the PayPal options to complete payment
													and <b>submit</b> the form.
												</p>
												<div id="paypal-button-container" style="pointer-events:"></div>
											</div>
										</div>
										<div class="paypal-paylater-messages"
											style="display: block; padding-top: 12px">
											<div class="message-area"></div>
										</div>
									</div>
								</div>
							</div>
							<input type="hidden" id="input_8_payment_method"
								name="q8_paymentMethods[payment_method]" class=""
								data-defaultvalue="" data-component="payment_method"
								aria-labelledby="" value="" />
						</div>
					</div></li>
				<li class="form-line" data-type="control_button" id="id_2">
					<div id="cid_2" class="form-input-wide" data-layout="full">
						<div data-align="auto"
							class="form-buttons-wrapper form-buttons-auto   jsTest-button-wrapperField">
							<button id="input_2" type="submit"
								class="form-submit-button submit-button jf-form-buttons jsTest-submitField"
								data-component="button" data-content="">결제 페이지로 가기</button>
						</div>
					</div>
				</li>
				<li style="display: none">Should be Empty: <input type="text"
					name="website" value="" type="hidden" /></li>
			</ul>
		</div>
		<script>
			JotForm.showJotFormPowered = "new_footer";
		</script>
		<script>
			JotForm.poweredByText = "Powered by Jotform";
		</script>
		<input type="hidden" class="simple_spc" id="simple_spc"
			name="simple_spc" value="240570068903455" />
		<script type="text/javascript">
			var all_spc = document
					.querySelectorAll("form[id='240570068903455'] .si" + "mple"
							+ "_spc");
			for (var i = 0; i < all_spc.length; i++) {
				all_spc[i].value = "240570068903455-240570068903455";
			}
		</script>
	</form>
	<link id=color-scheme-style
		href="https://cdn01.jotfor.ms/stylebuilder/static/color-scheme.css?v=3.3.51787"
		type="text/css" rel="stylesheet" />
	<script type="text/javascript">
		JotForm.ownerView = true;
	</script>
	<script type="text/javascript">
		JotForm.isNewSACL = true;
	</script>
</body>
</html>