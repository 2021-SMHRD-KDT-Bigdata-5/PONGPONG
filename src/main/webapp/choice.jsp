<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>서지연1</title>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

				<!-- Content -->
				<section>

					<!-- <hr class="major" /> -->

					<!-- Elements -->
					<div class="row gtr-100">
						<div class="col-10 col-10-medium">

							<!-- Image -->
							<h3>Image</h3>
							<form action="post" action="matchCon">
							<div class="box alt">
								<div class="row gtr-50 gtr-uniform">

									<div class="col-6">
										<span style="width: 500px;" class="image fit"><img
											src="images/boyoung.jpg" alt="" /></span>
											<ul class="actions">
											<li><input type="checkbox"id="boyoung" name="boyoung" value="1" name="check">
											<label for="boyoung">박보영</label></li>
										</ul>
									</div>

									<div class="col-6">
										<span style="width: 500px;" class="image fit"><img
											src="images/nana.jpg" alt="" /></span>
																						<ul class="actions">
											<li><input type="checkbox" value="2"id="nana" name="check">
											<label for="nana">나나</label></li>
									</div>
									<div class="col-6">
										<span style="width: 500px;" class="image fit"><img
											src="images/suzy.jpg" alt="" /></span>
																						<ul class="actions">
											<li><input type="checkbox" value="3" id="suzy" name="check">
											<label for="suzy">수지</label></li>
									</div>
									<div class="col-6">
										<span style="width: 500px;" class="image fit"><img
											src="images/김고은.jpg" alt="" /></span>
																						<ul class="actions">
											<li><input type="checkbox" value="4"id="goun" name="check">
											<label for="goun">김고은</label></li>
									</div>

									<div class="col-6">
										<span style="width: 500px;" class="image fit"><img
											src="images/김소연.jpg" alt="" /></span>
																						<ul class="actions">
											<li><input type="checkbox" value="5"id="soyeon" name="check">
											<label for="soyeon">김소연</label></li>
									</div>
									<div class="col-6">
										<span style="width: 500px;" class="image fit"><img
											src="images/이지아.jpg" alt="" /></span>
																						<ul class="actions">
											<li><input type="checkbox" value="6" id="zia" name="check">
											<label for="zia">이지아</label></li>
									</div>
									<div class="col-6">
										<span style="width: 500px;" class="image fit"><img
											src="images/한지민.jpg" alt="" /></span>
																						<ul class="actions">
											<li><input type="checkbox" value="7" id="jimin" name="check">
											<label for="jimin">한지민</label></li>
									</div>
									<div class="col-6">
										<span style="width: 500px;" class="image fit"><img
											src="images/전지현.jpg" alt="" /></span>
																						<ul class="actions">
											<li><input type="checkbox" value="8" id="jihyeon" name="check">
											<label for="jihyeon">전지현</label></li>
									</div>

								</div>
							</div>
												<ul class="actions">
						<li><li><a href="from_woman_result1.jsp" class="button">선택</a></li></li>
						<!-- <li><a href="delete.jsp" class="button">삭제</a></li> -->
					</ul>
						</form>

						</div>
					</div>




				</section>

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