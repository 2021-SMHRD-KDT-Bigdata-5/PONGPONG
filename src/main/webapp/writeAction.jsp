<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="bbs" class="bbs.Bbs" scope="page" />
<jsp:setProperty name="bbs" property="bbsTitle" />
<jsp:setProperty name="bbs" property="bbsContents" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP web site</title>
</head>
<body>
	<%
	String userName = null;
	if (session.getAttribute("userName") != null) {
		userName = (String) session.getAttribute("userName");
	}
	if (userName == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('login')");
		script.println("location.href = 'login.jsp");
		script.println("</script>");
	} else {
	if(request.getParameter("bbsTitle") == null || request.getParameter("bbsContents") == null
			|| request.getParameter("bbsTitle").equals("")|| request.getParameter("bbsContents").equals("")) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('more write')");
		script.println("history.back()");
		script.println("</script>");
	} else {
		BbsDAO BbsDAO = new BbsDAO();
		int result = BbsDAO.update(bbsID, request.getParameter("bbsTitle"), request.getParameter("bbsContents"));
		if (result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('false')");
			script.println("history.back()");
			script.println("</script>");
		}
		else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
		}}}
	%>
		
</body>
</html>