<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6-offset-md-3">
				<h1 class="test-center-md-3">All product</h1>
				<form action="handle-product" method="post">
					<div class="form-group">
						<label for="name"> product name</label> <input type="text"
							class="form-control" id="name" aria-describedby="emailHelp"
							name="name">
					</div>

					<div class="form-group">
						<label for="description"> product description</label> <input type="text"
							class="form-control" id="description" aria-describedby="emailHelp"
							name="description">
					</div>

					<div class="form-group">
						<label for="price"> product price</label> <input type="text"
							class="form-control" id="price" aria-describedby="emailHelp"
							name="price">
					</div>
					<div class = "container test-center">
						<a href="${pageContext.request.contextPath}" class= "btn  btn-outline-danger">Back</a>
						<button type="submit" class= "btn btn-primary">Add</button>
					</div>
				</form>
			</div>

		</div>

	</div>
</body>
</html>