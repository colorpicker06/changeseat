
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
<link rel="stylesheet" href="css/index_design.css" type="text/css">

<title>Insert title here</title>
<style>

body{
	background-image:url("image/background2.jpg");
    background-size: 100%;
    position: center;
	}
	
</style>
</head>
<body>
<center>
<font size=30px>자리 바꾸기</font><br><br>

<form action="SeatResult.jsp">
학생 수 : <input type="number" name="peoplenum" required><br><br>
분단 : <input type="number" name="bundan" required><br><br>
결번 : <input type="number" name="nopeople" required><br><br>
<input type="submit" value="시작">
</form>

</center>
</body>
</html>