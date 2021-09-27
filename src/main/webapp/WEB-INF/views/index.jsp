<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to Product App</h1>
				<table class="table table-dark">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Name</th>
							<th scope="col">Discription</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${product}" var="p">
						<tr>
							<th scope="row">${p.id} </th>
							<td>${p.name} </td>
							<td>${p.description} </td>
							<td>&#8377; ${p.price} </td>
							<td>
								<a href = "delete-product/${p.id} " ><i class="fas fa-trash text-danger"></i></a>
								<a href = "update-product/${p.id} " ><i class="fas fa-pen-nib text-primary"></i></a>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
					<div class = "container text-center">
						<a href = "add-product" class = "btn btn-outline-success">
						Add Product</a>
					</div>
			</div>

		</div>

	</div>
</body>
</html>
