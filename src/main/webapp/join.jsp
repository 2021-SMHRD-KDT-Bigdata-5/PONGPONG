<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
<!DOCTYPE HTML>
<!--
   Editorial by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Join</title>

<meta charset="EUC-KR" />
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
				<h2>Join</h2>
				<section>
<<<<<<< HEAD
				
					<!--    - Ïù¥Î¶Ñ ÏïÑÏù¥Îîî ÎπÑÎ∞ÄÎ≤àÌò∏ ÏÉùÎÖÑÏõîÏùº Ï†ÑÌôîÎ≤àÌò∏ Ï£ºÏÜå ÎåÄÌïôÍµêÏù¥Î¶Ñ ÌïôÍ≥º -->
=======
					<!--    - ¿Ã∏ß æ∆¿Ãµ ∫Òπ–π¯»£ ª˝≥‚ø˘¿œ ¿¸»≠π¯»£ ¡÷º“ ¥Î«–±≥¿Ã∏ß «–∞˙ -->
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-5/PONGPONG.git
					<form id="register" action="JoinCon" method="post"
						class="input-group">
						<input type="text" class="input-field" name="id" id="input_id"
							placeholder="User ID" required>
						<input style="float: right;"  type="button"
							class="check" value="ID¡ﬂ∫π√º≈©" onclick="idCheck()">
						<span id="sp"></span>
						<br>
						<br> <input type="password"
							class="input-field" name="pw" placeholder="Password" required>
						<br> <input type="text" class="input-field" name="name"
							placeholder="User Name" required>
						<br> <input type="text" class="input-field" name="birth"
							placeholder="Year-Month-Day" required>
						<br>
						<div class="col-10 col-20-small">
							<input type="radio" id="priority-low" name="gender" value="ø©º∫" checked>
							<label for="priority-low">ø©º∫</label>

							<!-- <div class="col-4 col-12-small"> -->
							<input type="radio" id="priority-high" name="gender" value="≥≤º∫">
							<label for="priority-high">≥≤º∫</label>
							<!-- </div> -->
						</div>

						<br> <input type="text" class="input-field" name="tel"
							placeholder="Tel" required>
						<br> <input type="text" class="input-field" name="address"
							placeholder="Address" required>
						<br>
						<div class="col-30">
							<select name="university" id="input_university">
								<option value="">- University -</option>
								<option value="¿¸≥≤¥Î«–±≥">¿¸≥≤¥Î«–±≥</option>
								<option value="¡∂º±¥Î«–±≥">¡∂º±¥Î«–±≥</option>
								<option value="±§¡÷¥Î«–±≥">±§¡÷¥Î«–±≥</option>
								<option value="±§¡÷ø©¿⁄¥Î«–±≥">±§¡÷ø©¿⁄¥Î«–±≥</option>
								<option value="»£≥≤¥Î«–±≥">»£≥≤¥Î«–±≥</option>
								<option value="∏Ò∆˜¥Î«–±≥">∏Ò∆˜¥Î«–±≥</option>
								<option value="∏Ò∆˜«ÿæÁ¥Î«–±≥">∏Ò∆˜«ÿæÁ¥Î«–±≥</option>
								<option value="º¯√µ¥Î«–±≥">º¯√µ¥Î«–±≥</option>
								<option value="µøΩ≈¥Î«–±≥">µøΩ≈¥Î«–±≥</option>
								<option value="≥≤∫Œ¥Î«–±≥">≥≤∫Œ¥Î«–±≥</option>
								<option value="º≠øµ¥Î«–±≥">º≠øµ¥Î«–±≥</option>
								<option value="º€ø¯¥Î«–±≥">º€ø¯¥Î«–±≥</option>
								<option value="µø∞≠¥Î«–±≥">µø∞≠¥Î«–±≥</option>
								<option value="¿¸≥≤µµ∏≥¥Î«–±≥">¿¸≥≤µµ∏≥¥Î«–±≥</option>
								<option value="±§¡÷±≥¿∞¥Î«–±≥">±§¡÷±≥¿∞¥Î«–±≥</option>
								<option value="GIST">GIST</option>
							</select>
						</div>

						<br><input type="submit" class="button" value="JOIN">
					</form>




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
											<p style="text-align: center;">√Îæ˜ Ω∫≈Õµ ∞‘Ω√∆«</p>
										</article>
										<article>
											<a class="image"><img src="images/group.jpg" alt="" /></a>
											<p style="text-align: center;">µøæ∆∏Æ ∏¡˝ ∞‘Ω√∆«</p>
										</article>
										<article>
											<a class="image"><img src="images/buddy.jpg" alt="" /></a>
											<p  style="text-align: center;">ƒ£±∏ √£±‚ ∞‘Ω√∆«</p>
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
										<li class="icon solid fa-home"> ±§¡÷±§ø™Ω√ ≥≤±∏ º€æœ∑Œ 60</li>
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
			<script>
			           function idCheck(){
            var input = document.getElementById("input_id");
            //alert(input.value);
            $.ajax({
               type : "post", //µ•¿Ã≈Õ ¿¸º€πÊΩƒ
               data : {'id' : input.value},
               url : "IdCheckCon",        //µ•¿Ã≈Õ∏¶ ∫∏≥æ º≠πˆ ∆‰¿Ã¡ˆ
                dataType : "text",      //¿¿¥‰µ•¿Ã≈Õ ≈∏¿‘
               // ø‰√ªø° º∫∞¯Ω√ Ω««‡«“ «‘ºˆ ¡§¿«   //true   //false
               success : function(data){
                  //alert(data);
                  document.getElementById("sp");
                  if(data=="true"){
                     sp.innerHTML = "  ªÁøÎ ∫“∞°¥…«— ID¿‘¥œ¥Ÿ."
                  }else{
                     sp.innerHTML = "  ªÁøÎ ∞°¥…«— ID¿‘¥œ¥Ÿ."
                  }
               },
               error : function(){
                  alert("ø‰√ª Ω«∆–!");
               }
            });
           }
        </script>
			
			
		</body>
</html>