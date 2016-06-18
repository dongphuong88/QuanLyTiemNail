<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.util.Random" %>
<%!
// Hash function
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
