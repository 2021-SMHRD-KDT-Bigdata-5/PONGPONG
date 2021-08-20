<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>동아리 모집</title>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="java.util.ArrayList"%>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header">
					<!-- #f56a6a 메인 컬러 -->
					<a href="index1.jsp" class="logo"><strong
						style="font-size: xx-large; color: #f56a6a;">Campus
							Community : CC</strong></a>
					<ul class="icons">
						<li><a href="#" class="icon brands fa-twitter"><span
								class="label">Twitter</span></a></li>
						<li><a href="#" class="icon brands fa-facebook-f"><span
								class="label">Facebook</span></a></li>
						<li><a href="#" class="icon brands fa-snapchat-ghost"><span
								class="label">Snapchat</span></a></li>
						<li><a href="#" class="icon brands fa-instagram"><span
								class="label">Instagram</span></a></li>
						<li><a href="#" class="icon brands fa-medium-m"><span
								class="label">Medium</span></a></li>
					</ul>
				</header>
				<%
				String userID = null;
				if (session.getAttribute("userID") != null) {
					userID = (String) session.getAttribute("userID");
				}
				int pageNumber = 1;
				if (request.getParameter("pageNumber") != null) {
					pageNumber = Integer.parseInt("pageNumber");
				}
				%>
				<%
				if (userID == null) {
				%>

				<%
				} else {
				%>
				<%
				}
				%>

				<!-- Table -->
				<br>
				<h3>CAMPUS BOARD</h3>


				<div class="table-wrapper">

					<div class="container">
						<div class="row">
							<table class="table table-striped"
								style="text-align: center; border: 1px solid #dddddd">
								<thread>
								<tr>
									<th style="background-color: #eeeeee; text-align: center;">글쓴이</th>
									<th style="background-color: #eeeeee; text-align: center;">제목</th>

									<th style="background-color: #eeeeee; text-align: center;">날짜</th>

								</tr>
								</thread>
								<tbody>
								
								
									<tr>
										<td>서지연</td>
										<td><a href="seo1.jsp">금융권 스터디 인원 2명 충원합니다.(조대후문)</td>
										<td>2021-08-12</td>
									</tr>
									<tr>
										<td>김상민</td>
										<td>국민은행 최종면접 스터디 인원 구합니다.</td>
										<td>2021-08-10</td>
									</tr>
									<tr>
										<td>신재용</td>
										<td>소방공무원 최종 면접 스터디 구해요!</td>
										<td>2021-08-09</td>
									</tr>
									<tr>
										<td>김진우</td>
										<td>토익 스터디(800점 이상만) 모집</td>
										<td>2021-08-05</td>
									</tr>
									<tr>
										<td>이명훈</td>
										<td>정보처리기사 실기 스터디 모집합니다.</td>
										<td>2021-08-04</td>
									</tr>
									<tr>
										<td>김동현</td>
										<td>토익 스피킹 스터디 그룹 모집합니다(총 4명)</td>
										<td>2021-08-01</td>
									</tr>
									<tr>
										<td>이호준</td>
										<td>컴퓨터활용능력 1급 필기 스터디 구합니다.(열심히 하실 분만!!)</td>
										<td>2021-07-28</td>
									</tr>
									<tr>
										<td>박성현</td>
										<td>전산회계 자격증 스터디 구해요!(선착순 1명)</td>
										<td>2021-07-25</td>
									</tr>
									<tr>
										<td>이상준</td>
										<td>매경테스트 스터디 상무지구에서 모집합니다.</td>
										<td>2021-07-20</td>
									</tr>
									<tr>
										<td>이기성</td>
										<td>정보처리기사 필기 스터디(전남대) 모집</td>
										<td>2021-07-15</td>
									</tr>
									
									<%
					BbsDAO bbsDAO = new BbsDAO();
					ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
					for (int i = 0; i < list.size(); i++) {
					%>
					<tr>
						<td><%=list.get(i).getBbsID()%></td>
						<td><a href="view.jsp?bbsID=<%=list.get(i).getBbsID()%>"><%=list.get(i).getBbsTitle()%></a></td>
						<td><%=list.get(i).getUserName()%></td>
						<td><%=list.get(i).getBbsDate()%></td>
					</tr>
					<%
					}
					%>
					
								</tbody>

							</table>
							
							
						</div>
					</div>

<%
			if (pageNumber != 1) {
			%>
			<a href="bbs.jsp?pageNumber=<%=pageNumber - 1%>"
				class="btn btn-success btn-arraw-left">이전</a>
			<%
			}
			if (bbsDAO.nextPage(pageNumber + 1)) {
			%>
			<a href="bbs.jsp?pageNumber=<%=pageNumber + 1%>"
				class="btn btn-success btn-arraw-left">다음</a>
			<%
			}
			%>





					<ul class="pagination" style="text-align: center;">
						<li><span class="button disabled">이전</span></li>
						<li><a href="#" class="page active">1</a></li>
						<li><a href="#" class="page">2</a></li>
						<li><a href="#" class="page">3</a></li>
						<li><span>&hellip;</span></li>
						<li><a href="#" class="page">8</a></li>
						<li><a href="#" class="page">9</a></li>
						<li><a href="#" class="page">10</a></li>
						<li><a href="#" class="button">다음</a></li>
					</ul>

				</div>
				<ul class="actions" style="float: right;">
					<li><a href="write3.jsp" class="button primary">작성</a></li>
					<li><a href="update.jsp" class="button" style="float: right;">수정</a></li>
				</ul>

			</div>
		</div>

		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">

				<!-- Search -->
				<section id="search" class="alt">
					<form method="post" action="#">
						<input type="text" name="query" id="query" placeholder="Search" />
					</form>
				</section>

				<!-- Menu -->
				<nav id="menu">
					<header class="major">
						<h2>Menu</h2>
					</header>
					<ul>
						<li><a href="index1.jsp">HOMEPAGE</a></li>
						<li><a href="login.jsp">LOGIN</a></li>
						<li><a href="join.jsp">JOIN</a></li>
						<li><span class="opener">BOARD</span>
							<ul>
								<li><a href="study.jsp">STUDY CLUB</a></li>
								<li><a href="campus.jsp">CAMPUS CLUB</a></li>
								<li><a href="buddy.jsp">FIND BUDDY</a></li>
							</ul></li>
						<li><span class="opener">MY PAGE</span>
							<ul>
								<li><a href="history.jsp">MY HISTORY</a></li>
								<li><a href="mybuddy.jsp">MY BUDDY</a></li>
								<li><a href="myqna.jsp">MY Q&A</a></li>
								<li><a href="modify.jsp">MODIFY </a></li>

							</ul></li>
						<li><a href="index1.jsp">LOGOUT</a></li>

					</ul>
				</nav>

				<!-- Section -->
				<section>
					<header class="major">
						<h2>Service</h2>
					</header>
					<div class="mini-posts">
						<article>
							<a class="image"><img src="images/study.jpg" alt="" /></a>
							<p style="text-align: center;">취업 스터디 게시판</p>
						</article>
						<article>
							<a class="image"><img src="images/group.jpg" alt="" /></a>
							<p style="text-align: center;">동아리 모집 게시판</p>
						</article>
						<article>
							<a class="image"><img src="images/buddy.jpg" alt="" /></a>
							<p style="text-align: center;">친구 찾기 게시판</p>
						</article>
					</div>
					<ul class="actions">
						<li><a href="write.jsp" class="button"
							style="position: relative; left: 100%;">More</a></li>
					</ul>
				</section>

				<!-- Section -->
				<section>
					<header class="major">
						<h2>Get in touch</h2>
					</header>
					<ul class="contact">
						<li class="icon solid fa-envelope"><a href="#">CC@gmail.com</a></li>
						<li class="icon solid fa-phone">(062) 655-3509</li>
						<li class="icon solid fa-home">광주광역시 남구 송암로 60</li>
					</ul>
				</section>


			</div>
		</div>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>