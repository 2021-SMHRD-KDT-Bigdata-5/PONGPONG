<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>COMPANY PAGE</title>
		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
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
									<a href="index1.jsp" class="logo"><strong style="font-size: xx-large; color:#f56a6a;">Campus Community : CC</strong></a>
									<ul class="icons">
										<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
										<li><a href="#" class="icon brands fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
										<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
										<li><a href="#" class="icon brands fa-medium-m"><span class="label">Medium</span></a></li>
									</ul>
								</header>

							<!-- Form -->
					<h3>Form</h3>

					<form method="post" action="#">
						<div class="row gtr-uniform">
							<div class="col-6 col-12-xsmall">
								<input type="text" name="demo-name" id="demo-name" value=""
									placeholder="Name" />
							</div>
							<div class="col-6 col-12-xsmall">
								<input type="email" name="demo-email" id="demo-email" value=""
									placeholder="Email" />
							</div>
							<!-- Break -->
							<div class="col-12">
								<select name="demo-category" id="demo-category">
									<option value="">- Category -</option>
									<option value="1">Manufacturing</option>
									<option value="1">Shipping</option>
									<option value="1">Administration</option>
									<option value="1">Human Resources</option>
								</select>
							</div>
							<!-- Break -->
							<div class="col-4 col-12-small">
								<input type="radio" id="demo-priority-low" name="demo-priority"
									checked> <label for="demo-priority-low">Low</label>
							</div>
							<div class="col-4 col-12-small">
								<input type="radio" id="demo-priority-normal"
									name="demo-priority"> <label for="demo-priority-normal">Normal</label>
							</div>
							<div class="col-4 col-12-small">
								<input type="radio" id="demo-priority-high" name="demo-priority">
								<label for="demo-priority-high">High</label>
							</div>
							<!-- Break -->
							<div class="col-6 col-12-small">
								<input type="checkbox" id="demo-copy" name="demo-copy">
								<label for="demo-copy">Email me a copy</label>
							</div>
							<div class="col-6 col-12-small">
								<input type="checkbox" id="demo-human" name="demo-human" checked>
								<label for="demo-human">I am a human</label>
							</div>
							<!-- Break -->
							<div class="col-12">
								<textarea name="demo-message" id="demo-message"
									placeholder="Enter your message" rows="6"></textarea>
							</div>
							<!-- Break -->
							<div class="col-12">
								<ul class="actions">
									<li><input type="submit" value="Send Message"
										class="primary" /></li>
									<li><input type="reset" value="Reset" /></li>
								</ul>
							</div>
						</div>
					</form>

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
										<li>
											<span class="opener">BOARD</span>
											<ul>
												<li><a href="study.jsp">STUDY CLUB</a></li>
												<li><a href="campus.jsp">CAMPUS CLUB</a></li>
												<li><a href="buddy.jsp">FIND BUDDY</a></li>
											</ul>
										</li>
										<li>
											<span class="opener">MY PAGE</span>
											<ul>
												<li><a href="history.jsp">MY HISTORY</a></li>
												<li><a href="mybuddy.jsp">MY BUDDY</a></li>
												<li><a href="myqna.jsp">MY Q&A</a></li>
												<li><a href="modify.jsp">MODIFY </a></li>
												
											</ul>
										</li>
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
											<p style="text-align: center;">?????? ????????? ?????????</p>
										</article>
										<article>
											<a class="image"><img src="images/group.jpg" alt="" /></a>
											<p style="text-align: center;">????????? ?????? ?????????</p>
										</article>
										<article>
											<a class="image"><img src="images/buddy.jpg" alt="" /></a>
											<p  style="text-align: center;">?????? ?????? ?????????</p>
										</article>
									</div>
									<ul class="actions">
										<li><a href="write.jsp" class="button" style="position: relative; left: 100%;">More</a></li>
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
										<li class="icon solid fa-home"> ??????????????? ?????? ????????? 60</li>
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