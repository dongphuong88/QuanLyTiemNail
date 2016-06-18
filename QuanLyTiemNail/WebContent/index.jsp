<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%! 
public String base32encode(String value){
	return value;
}
public String base32decode(String value){
	return value;
}
%>

<%
String pageLink = base32decode(request.getParameter("ID")) + ".jsp?" + request.getQueryString();
if( null != request.getParameter("ID")){ %>
	<jsp:forward page="<%= pageLink %>"></jsp:forward>
<%}%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
</head>
<body>

Inside index.jsp

</body>
</html>