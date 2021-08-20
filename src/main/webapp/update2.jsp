<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width-device-width" , initial-scale="1">
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
		script.println("alert('login haseyo')");
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

	}
	%>

	<div class="container">
		<div class="row">
			<form method="post" action="updateAction.jsp?bbsID=<%=bbsID %>">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thread>
					<tr>
						<th colspan="2"
							style="background-color: #eeeeee; text-align: center;">gesipan
							UPDATE yangsick</th>

					</tr>
					</thread>
					<tbody>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="title" name="BBStitle" maxlength="50" value="<%=bbs.getBbsTitle() %>"></td>
						</tr>

						<tr>
							<td><textarea class="form-control" placeholder="contents"
									name="bbscontents" maxlength="2000"
									style="height: 800px; width: 1200px;"><%=bbs.getBbsContents() %></textarea></td>
						</tr>
					</tbody>
				</table>
				<input type="submit" class="btn btn-primary pull-right"
					value="update">
			</form>
			</div>
			</div>
</body>
</html>