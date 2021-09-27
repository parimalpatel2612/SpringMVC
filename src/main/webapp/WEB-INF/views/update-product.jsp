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
				<h1 class="test-center-md-3">Change product</h1>
				<form action="${pageContext.request.contextPath}/handle-product" method="post">
					<input type="text" name="id" value="${product.id}" readonly="readonly">
					<div class="form-group">
						<label for="name"> product name</label> <input type="text"
							class="form-control" id="name" aria-describedby="emailHelp"
							name="name" value="${product.name }">
					</div>

					<div class="form-group">
						<label for="description"> product description</label> 
						<textarea type="text"
							class="form-control" id="description" aria-describedby="emailHelp"
							name="description">${product.description}</textarea>
					</div>

					<div class="form-group">
						<label for="price"> product price</label> <input type="text"
							class="form-control" id="price" aria-describedby="emailHelp"
							name="price"
							value="${product.price }">
					</div>
					<div class = "container test-center">
						<a href="${pageContext.request.contextPath}" class= "btn  btn-outline-danger">Back</a>
						<button type="submit" class= "btn btn-warning">update</button>
					</div>
				</form>
			</div>

		</div>

	</div>
</body>
</html>