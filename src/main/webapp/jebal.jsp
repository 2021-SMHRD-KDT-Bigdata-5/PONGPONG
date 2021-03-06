<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

<head>
<title>COMPANY PAGE</title>
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

				<!-- Form -->
				<br>
				<h3>MY INFO</h3>
				<br>

				<form method="post" action="http://localhost:9000/test1">
					<div class="row gtr-uniform">
						<div class="col-6 col-12-xsmall">
							<input type="text" name="demo-name" id="demo-name" value=""
								placeholder="이름 - 나이" />
						</div>
						<div class="col-6 col-12-xsmall">
							<input type="email" name="demo-email" id="demo-email" value=""
								placeholder="대학교 - 학과" />
						</div>
						<!-- Break -->
						<div class="col-12">
							<select name="demo-category" id="demo-category">
								<option value="">- 취미 -</option>
								<option value="1">영화 감상</option>
								<option value="1">요리</option>
								<option value="1">운동</option>
								<option value="1">독서</option>
							</select>
						</div>
						<br>
						<div class="col-12">
							<select name="demo-category" id="demo-category">
								<option value="">- 성격 -</option>
								<option value="1">다정한</option>
								<option value="1">시크한</option>
								<option value="1">재밌는</option>
								<option value="1">차분한</option>
							</select>
						</div>
						<br>
						<div class="col-12">
							<select name="demo-category" id="demo-category">
								<option value="">- 생활 패턴 -</option>
								<option value="1">나는 아침새 타입!</option>
								<option value="1">나는 부엉이 타입!</option>
							</select>
						</div>
						<!-- Break -->
						<br>
						<div class="col-4 col-12-small">
							<input type="radio" id="demo-priority-low" name="demo-priority"
								checked> <label for="demo-priority-low">여자만</label>
						</div>
						<div class="col-4 col-12-small">
							<input type="radio" id="demo-priority-normal"
								name="demo-priority"> <label for="demo-priority-normal">남자만</label>
						</div>
						<div class="col-4 col-12-small">
							<input type="radio" id="demo-priority-high" name="demo-priority">
							<label for="demo-priority-high">둘 다</label> <br>
						</div>
						
						<div class="col-10 col-12-small">
							<dl>
								<h4>PROFILE PHOTO</h4>
								<p style="float: left;">(셀카 한장을 올리세요)</p>
							</dl>
						</div>
												<div class="image-container">
    <img style="width: 500px;" id="preview-image" src="images/pic01.jpg">
    <input style="display: block;" type="file" id="input-image">
</div>
						<script>
						function readImage(input) {
						    // 인풋 태그에 파일이 있는 경우
						    if(input.files && input.files[0]) {
						        // 이미지 파일인지 검사 (생략)
						        // FileReader 인스턴스 생성
						        const reader = new FileReader()
						        // 이미지가 로드가 된 경우
						        reader.onload = e => {
						            const previewImage = document.getElementById("preview-image")
						            previewImage.src = e.target.result
						        }
						        // reader가 이미지 읽도록 하기
						        reader.readAsDataURL(input.files[0])
						    }
						}
						// input file에 change 이벤트 부여
						const inputImage = document.getElementById("input-image")
						inputImage.addEventListener("change", e => {
						    readImage(e.target)
						})
						</script>



						<!-- okay -->

	


						<!-- Break -->

					</div>
				</form>
					<ul class="actions">
											<li><a href="from_woman_result1.jsp" class="button">제출</a></li>
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