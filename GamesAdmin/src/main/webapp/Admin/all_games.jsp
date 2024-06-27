<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
 <%@ page import="com.DAO.gameDaoImp" %> 
<%@ page import ="com.DataBase.DBConnect" %>
<%@ page import="com.entity.GameInfo" %> 
<%@ page import="java.util.List" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Games</title>
<%@include file="Css.jsp" %>
</head>
<body style="background-color:pink;">
<%@include file="header.jsp" %>
<%@include file="navbar.jsp" %>

    <h3 class="text-center">Game Lists</h3>

	<c:if test="${not empty successMsg }">
		<p class="text-center text-success">${successMsg }</p>
		<c:remove var="successMsg" scope="session" />
	</c:if>

	<c:if test="${not empty errorMsg }">
		<p class="text-center text-danger">${errorMsg }</p>
		<c:remove var="errorMsg" scope="session" />
	</c:if>

	<table class="table ">
  <thead class="table-secondary">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Game Name</th>
      <th scope="col">Price</th>
      <th scope="col">Category</th>
      <th scope="col">Image</th>
      <th scope="col">Action</th>
     
    </tr>
  </thead>
  <tbody class="table-dark table-striped-columns">
  <%
     gameDaoImp  dao = new gameDaoImp(DBConnect.getConnection());
     List<GameInfo> list =dao.getAllGames();
     for(GameInfo g:list)
     {%>
      <tr>
      <td><%= g.getGameId()%></td>
      <td><%= g.getGameName() %></td>
      <td><%= g.getPrice() %></td>
      <td><%= g.getCategory() %></td>
      <td><img src="../images/<%= g.getImage() %>" 
      style="width:100px; height:100px;"></td>
      <td>
         <a href="updateRecords.jsp?id=<%=g.getGameId()%>" class="btn  btn-success">Edit</a>
         <a href="../DeleteGame?id=<%=g.getGameId() %>" class="btn btn-danger">Delete</a>
      </td>
    </tr>
    	 
     <% 
     }
  
     %>
 
  </tbody>
</table>
<%@include file="footer.jsp" %>
</body>
</html>