<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
			<!DOCTYPE html>
			<html>

			<head>
				<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
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
					        $("#main_manager_nav").html(res_data);
					    },
					    error: function (jqXHR, textStatus, errorThrown) {
					        console.table(jqXHR)
					    },

					});

					
					$.ajax({
						url: "mypage_header.do",
						success: function (res_data) {
							$("#mypage_header").html(res_data);
						},

						error: function (jqXHR, textStatus, errorThrown) {
							console.table(jqXHR)
						}
					});


					//내정보
					$.ajax({
						url: "mypage_container_info.do",
						success: function (res_data) {
							$("#container_info").html(res_data);
						},
						error: function (jqXHR, textStatus, errorThrown) {
							console.table(jqXHR)
						},

					});

					//회원목록
					$.ajax({
						url: "mymanager_container_member.do",
						success: function (res_data) {
							$("#container_member").html(res_data);
						},
						error: function (jqXHR, textStatus, errorThrown) {
							console.table(jqXHR)
						},

					});

					//문의내역
					$.ajax({
						url: "mymanager_container_qna.do",
						success: function (res_data) {
							$("#container_qna").html(res_data);
						},
						error: function (jqXHR, textStatus, errorThrown) {
							console.table(jqXHR)
						},

					});

					//FAQ
					$.ajax({
						url: "mymanager_container_faq.do",
						success: function (res_data) {
							$("#container_faq").html(res_data);
						},
						error: function (jqXHR, textStatus, errorThrown) {
							console.table(jqXHR)
						},

					});

					//신청내역
					$.ajax({
						url: "mymanager_container_req_content.do",
						success: function (res_data) {
							$("#container_req_content").html(res_data);
						},
						error: function (jqXHR, textStatus, errorThrown) {
							console.table(jqXHR)
						},

					});
					
					$.ajax({
						url: "footer.do",
						success: function (res_data) {
							$("#main_mymanager_footer").html(res_data);
						},
						error: function (jqXHR, textStatus, errorThrown) {
							console.table(jqXHR)
						},

					});

				</script>
			</head>

			<body>
				<div id="main_manager_nav"></div>
				<div id="mypage_header"></div>
				<div id="container_info"></div>
				<div id="container_member"></div>
				<div id="container_qna"></div>
				<div id="container_faq"></div>
				<div id="container_req_content"></div>
				<div id="detail_footer"></div>

			</body>

			</html>