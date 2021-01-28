<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%><html>
<head>
<title>FileUpload Form</title>
</head>
<body>
		<form action="fileUpload.jsp" method="post"
			enctype="multipart/form-data">
			<table border="3">
				<tr>
					<td colspan="2" align="center"><h4>FileUpload Form</h4></td>
				</tr>
				<tr>
					<td>Name :</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>File Name :</td>
					<td><input type="file" name="filename"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="Upload"></td>
				</tr>
			</table>
		</form>
</body>
</html>