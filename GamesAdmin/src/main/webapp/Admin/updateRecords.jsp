<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page import="com.entity.GameInfo"%>
<%@page import="com.DAO.gameDaoImp"%>
 <%@ page import="com.DAO.gameDaoImp" %> 
<%@ page import ="com.DataBase.DBConnect" %>
<%@ page import ="java.io.PrintWriter" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update games</title>
<%@include file="Css.jsp" %>
</head>
<body style="background-color:pink">
<%@include file="navbar.jsp" %>

	<div class="container">
		<div class="row ">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body"></div>
					   <h2 class="bg-success text-white card-header text-center">Update Record</h2>
					   <br>

					<%
					int gameId =Integer.parseInt(request.getParameter("id"));
				    response.setContentType("text/html");
				    
					GameInfo g = null;
					gameDaoImp dao = new gameDaoImp(DBConnect.getConnection());
					// Initialize your DAO properly

					try {
						g = dao.getGameInfoById(gameId);
					} catch (Exception e) {
						// Handle exceptions gracefully, for example, by displaying an error message.
						out.println("Error: " + e.getMessage());
					}
					%>

					<form action="/Admin/EditGame"  method="post" enctype="multipart/form-data" >
					   <input type="hidden" name="id"  value="<%= (g != null) ? g.getGameId() : "" %>">
					   
					   <div class="form-group ">
					      <label for="gamename">Game Name</label><br>
					      <input name="gname" type="text" class="form-control" id="gamename"  value="<%=g.getGameName() %>">
					   </div><br>
					   
					   <div class="form-group">
					      <label for="gameprice">Price</label><br>
					      <input name="gprice" type="number" class="form-control" id="gameprice" value="<%=g.getPrice()%>">
					   </div><br>
					   
					    <div class="form-group">
					      <label for="gamecategory">Category</label><br>
					      <select id="gamecategory" name="gcategory" class="form-control" >
					      <%
					      if("free".equals(g.getCategory())){
					      %>
					      <option value="free">Free</option>
					      <option value="advanced">Advanced</option>
					      <%
					      }else {
					      %>
					      <option value="advanced">Advanced</option>
					      <option value="free">Free</option>
					      <%
					      }
					      %>  
					        
					      </select>
					   </div><br>
					   
					   <div class="form-group">
					      <label for="gameimage">Image</label><br><br>
					      <input name="gimage" type="file" class="form-control-file" id="gameimage" >
					   </div><br><br>
					   
					   <button type="submit" class="btn btn-success">Update</button>
					   <br><br>
					   
					   </form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>