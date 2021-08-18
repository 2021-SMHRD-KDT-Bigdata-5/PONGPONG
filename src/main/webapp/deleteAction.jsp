<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%
request.setCharacterEncoding("UTF-8");
%>
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
	if (userName == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('login')");
		script.println("location.href = 'login.jsp");
		script.println("</script>");
	}

	int bbsID = 0;
	if (session.getAttribute("bbsID") != null) {
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	if (bbsID == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('youhyohaji a na')");
		script.println("location.href = 'bbs.jsp");
		script.println("</script>");
	}
	Bbs bbs = new BbsDAO().getBbs(bbsID);
	if (!userName.equals(bbs.getUserName())) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('GWANHAN 2 X')");
		script.println("location.href = 'bbs.jsp");
		script.println("</script>");

	} else {
		BbsDAO BbsDAO = new BbsDAO();
		int result = BbsDAO.delete(bbsID);
		if (result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('false')");
			script.println("history.back()");
			script.println("</script>");
		} else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
		}
	}
	%>

</body>
</html>