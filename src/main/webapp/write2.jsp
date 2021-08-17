<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<form method="post" action="writeAction.jsp">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thread>
					<tr>
						<th colspan="2"
							style="background-color: #eeeeee; text-align: center;">gesipan
							write yangsick</th>

					</tr>
					</thread>
					<tbody>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="title" name="title" maxlength="50"></td>
						</tr>

						<tr>
							<td><textarea class="form-control" placeholder="content"
									name="content" maxlength="2000" style="height: 800px; width:1200px;"></textarea></td>
						</tr>
					</tbody>
				</table>
				<input type="submit" class="btn btn-primary pull-right"
					value="write">
			</form>
		</div>
	</div>
</body>
</html>