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

										<div class="box">
											<span style="width: 600px;" class="image fit"><img
												src="images/수지1.jpg" alt="" /></span>
											<ul class="actions">
												<li><input type="checkbox" id="boyoung" name="boyoung"
													value="1" name="check"> <label for="boyoung"><h3>여자1</h3></label></li>
											</ul>
											<h4>
												박세라(21)<br> 조선대학교 간호학과<br> 취미 : 운동<br> 성격 :
												다정한<br> 생활패턴 : 나는 아침새 타입!<br> <br>
											</h4>
										</div>

										<div class="box">
											<span style="width: 600px;" class="image fit"><img
												src="images/수지2.jpg" alt="" /></span>
											<ul class="actions">
												<li><input type="checkbox" value="4" id="goun"
													name="check"> <label for="goun"><h3>여자2</h3></label></li>
											</ul>
											<h4>
												서지혜(22)<br> 전남대학교 생물학과<br> 취미 : 독서<br> 성격 :
												다정한<br> 생활패턴 : 나는 아침새 타입!<br> <br>
											</h4>
										</div>


										<div class="box">
											<span style="width: 600px;" class="image fit"><img
												src="images/수지3.jpg" alt="" /></span>
											<ul class="actions">
												<li><input type="checkbox" value="7" id="jimin"
													name="check"> <label for="jimin"><h3>여자3</h3></label></li>
											</ul>
											<h4>
												신지현(24)<br> 광주여자대학교 유아교육과<br> 취미 : 운동<br> 성격
												: 차분한<br> 생활패턴 : 나는 아침새 타입!<br> <br>
											</h4>
										</div>
										
										<div class="box">
											<span style="width: 600px;" class="image fit"><img
												src="images/수지4.jpg" alt="" /></span>
											<ul class="actions">
												<li><input type="checkbox" value="7" id="jimin"
													name="check"> <label for="jimin"><h3>여자4</h3></label></li>
											</ul>
											<h4>
												김단아(25)<br> 전남대학교 경영학과<br> 취미 : 운동<br> 성격
												: 시크한<br> 생활패턴 : 나는 아침새 타입!<br> <br>
											</h4>
										</div>


									</div>
								</div>
								<ul class="actions">
									<li><input type="submit" value="제출" class="primary" /></li>
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