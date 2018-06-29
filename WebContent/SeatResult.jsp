<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
body {
background-image:url("image/background1.jpg");
    background-size: 100%;
    position: center;
margin : 20px;}

div.space{
color:white;
width:50px;
display:inline;
}

img{
width:100px;
}

p.num{
display:inline;
position: absolute;
margin-left:-3%;
color:white;
}
</style>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
int peoplenum = Integer.parseInt(request.getParameter("peoplenum"));
int bundan = Integer.parseInt(request.getParameter("bundan"));
int nopeople = Integer.parseInt(request.getParameter("nopeople"));
int bundan2 = bundan*2;
%>

인원수: <%= peoplenum %><br>
분단:<%= bundan %><br>
결번:<%= nopeople %><br>

<%

int array[] = new int[peoplenum];

for(int i=0; i<array.length; i++){
	array[i]=(int)(Math.random()*peoplenum)+1;
	
	for(int j=0; j<i; j++){
		if(array[i]==array[j]){
			i--;
			break;
		}
	}
}







int bundannum = peoplenum/bundan;
int result[][] = new int[bundan][bundannum];

int num = 0;%>

<% for(int i=0; i<peoplenum; i++){ 
if(i%2==0){ %>
	<div class="space">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
<% }if(i%bundan2==0){
%><br><br>
<% } %>

<img src="image/desk.png"><p class="num"><%= array[i] %></p>
<% }%> 

</body>
</html>