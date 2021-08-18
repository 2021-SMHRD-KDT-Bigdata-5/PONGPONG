<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<!-- gesipan main gesipan2rang + -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width-device-width" , initial-scale="1">
<title>JSP web site</title>
<style type="text/css">
a, a:hover {
	color: #000000;
	text-decoration: none;
}
</style>
</head>
<body>
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
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index1.jsp">gesipan web site</a>
		</div>
		<div class="collapse navbor-collapse"id-"bs-example-navbor-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="index1.jsp">main</a></li>
				<li class="active"><a href="bbs.jsp">board</a></li>
			</ul>
			<%
			if (userID == null) {
			%>
			<ulclass"navnavbor-navnavbor-right">
			<li class="dropdown"><a href="#"
				class"dropdown-toggle"
				data-toggle="dropdown" role="button"
				aria-haspopup="true" aria-expanded="false">go<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a>login</a></li>
				</ul></li>
			</ul>
			<%
			} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"> member <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logout.jsp">logout</a></li>
					</ul></li>
			</ul>
			<%
			}
			%>
			
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thread>
				<tr>
					<th>name</th>
					<th>title</th>
					<th>date</th>
				</tr>
				<tbody>
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
			<%
			if (pageNumber != 1) {
			%>
			<a href="bbs.jsp?pageNumber=<%=pageNumber - 1%>"
				class="btn btn-success btn-arraw-left">ejeon</a>
			<%
			}
			if (bbsDAO.nextPage(pageNumber + 1)) {
			%>
			<a href="bbs.jsp?pageNumber=<%=pageNumber + 1%>"
				class="btn btn-success btn-arraw-left">daum</a>
			<%
			}
			%>
			<a href="write3.jsp" class="btn btn-primary pull-right">write</a>
		</div>
	</div>
</body>
</html>