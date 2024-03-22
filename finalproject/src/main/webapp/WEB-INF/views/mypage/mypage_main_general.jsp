<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<meta charset="UTF-8">
	<title>캠프로버</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/setting.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugin.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/template.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nav.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css">
	<script type="text/javascript">

		//main 초기화
		$.ajax({
			url: "nav.do",
			success: function (res_data) {
				$("#main_general_nav").html(res_data);
				$.ajax({
					url: "mypage_header.do",
					success: function (res_data) {
						$("#mypage_header").html(res_data);
						//contanier_list
						$.ajax({
							url: "mypage_container_list.do",
							success: function (res_data) {
								$("#container_list").html(res_data);
								//내정보
								$.ajax({
									url: "mypage_container_info.do",
									success: function (res_data) {
										$("#container").html(res_data);
										$.getScript("${pageContext.request.contextPath}/assets/js/domain.js");
										$.ajax({
											url: "footer.do",
											success: function (res_data) {
												$("#main_general_footer").html(res_data);
											},
											error: function (jqXHR, textStatus, errorThrown) {
												console.table(jqXHR)
											}

										});
									},
									error: function (jqXHR, textStatus, errorThrown) {
										console.table(jqXHR)
									}

								});
							},
							error: function (jqXHR, textStatus, errorThrown) {
								console.table(jqXHR)
							}

						});
					},

					error: function (jqXHR, textStatus, errorThrown) {
						console.table(jqXHR)
					}
				});
			},
			error: function (jqXHR, textStatus, errorThrown) {
				console.table(jqXHR)
			}

		});






		// //리뷰
		// $.ajax({
		// 	url: "mygeneral_container_review.do",
		// 	success: function (res_data) {
		// 		$("#container_review").html(res_data);
		// 	},
		// 	error: function (jqXHR, textStatus, errorThrown) {
		// 		console.table(jqXHR)
		// 	}

		// });



	</script>
</head>

<body>
	<div id="main_general_nav"></div>
	<div id="mypage_header"></div>
	<div class="container">
		<div id="container_list"></div>
		<div id="container"></div>
	</div>
	<div id="main_general_footer"></div>

</body>

</html>