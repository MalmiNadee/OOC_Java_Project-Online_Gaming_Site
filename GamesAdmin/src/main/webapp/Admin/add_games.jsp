<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add games</title>
<%@include file="Css.jsp" %>

</head>
<body style="background-color:pink">
<%@include file="header.jsp" %>
<%@include file="navbar.jsp" %>

	<div class="container">
		<div class="row ">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
					   <h2 class="bg-success text-white card-header text-center">Add Game</h2>
					   <br>
					   
					   <c:if test="${not empty successMsg }">
					   <p class="text-center text-success">${successMsg }</p>
					   <c:remove var="successMsg" scope="session"/>
					   </c:if>
					   
					     <c:if test="${not empty errorMsg }">
					   <p class="text-center text-danger">${errorMsg }</p>
					   <c:remove var="errorMsg" scope="session"/>
					   </c:if>
					   
					   <form action="/Admin/AddGame"  method="post" enctype="multipart/form-data">
					   <div class="form-group ">
					      <label for="exampleInputEmail1">Game Name</label><br>
					      <input name="gname" type="text" class="form-control" id="exampleInputEmail1" aria-describeBy="emailHelp">
					   </div><br>
					   
					   <div class="form-group">
					      <label for="gameprice">Price</label><br>
					      <input name="gprice" type="number" class="form-control" id="gameprice" aria-describeBy="emailHelp">
					   </div><br>
					   
					    <div class="form-group">
					      <label for="gamecategory">Category</label><br>
					      <select id="gamecategory" name="gcategory" class="form-control">
					        <option value="free">Free</option>
					        <option value="advanced">Advanced</option>
					      </select>
					   </div><br>
					   
					   <div class="form-group">
					      <label for="gameimage">Image</label><br><br>
					      <input name="gimage" type="file" class="form-control-file" id="gameimage">
					   </div><br><br>
					   
					   <button type="submit" class="btn btn-primary">Add</button>
					   <br><br>
					   
					   </form>
					  
				</div>
				</div> 
			</div>
			
		</div>
		</div>

<%@include file="footer.jsp" %>
</body>
</html>