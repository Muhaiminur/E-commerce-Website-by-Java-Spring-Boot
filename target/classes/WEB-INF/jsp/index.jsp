<!DOCTYPE html>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<html lang="en">
<head>
  <title>Muhaiminur Rahman_SE_JAVA</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Assessment</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">All the Product</a></li>
      <li><a href="newproduct">New Product</a></li>
      <li><a href="#">UPDATE</a></li>
      <li><a href="#">DELETE</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
  <h3>Welcome </h3>
  <p>Save Time With Great Product</p>
  
  <c:choose>
  	<c:when test="${ mode == 'VIEW_ALL'}">
  
  
			  <table class="table table-striped">
			    <thead>
			      <tr>
			        <th>SL</th>
			        <th>Product Name</th>
			        <th>Price</th>
			        <th>Product Type</th>
			        <th>Edit</th>
			        <th>DELETE</th>
			      </tr>
			    </thead>
			    <tbody>
			      	<c:forEach var="product" items="${products}" >
					    <tr>
					        <td>${product.getId()}</td>
					        <td>${product.p_name}</td>
					        <td>${product.p_price}</td>
					        <td>${product.p_type}</td>
					        <td><a href="update?id=${product.getId()}"><div class="glyphicon glyphicon-pencil"></div></a></td>
					        <td><a href="delete?id=${product.getId()}"><div class="glyphicon glyphicon-remove"></div></a></td>
					    </tr>
					</c:forEach>
			      	
			    </tbody>
			  </table>
	</c:when>
	<c:when test="${mode=='PRODUCT_EDIT'}">
		<form action="save"  method="POST">
		<input type="hidden" class="form-control" value="${products.id }"name="id" id="id">
			  <div class="form-group">
			    <label for="p_name">Name</label>
			    <input type="text" class="form-control" value="${products.p_name}" name="p_name" id="p_name">
			  </div>
			  <div class="form-group">
			    <label for="p_price">Price:</label>
			    <input type="text" class="form-control" value="${products.p_price}" name="p_price" id="p_price">
			  </div>
			  <div class="form-group">
			    <label for="p_percent">Percent Benefits:</label>
			    <input type="text" class="form-control" value="${products.p_percent}" name="p_percent" id="p_percent">
			  </div>
			  <div class="form-group">
			    <label for="p_type">Product Type:</label>
			    <input type="text" class="form-control" value="${products.p_type}" name="p_type" id="p_type">
			  </div>
			  <button type="submit" class="btn btn-default">UPDATE</button>
		</form>
	</c:when>
	<c:when test="${mode=='NEW_PRODUCT'}">
		<form action="save"  method="POST">
			  <div class="form-group">
			    <label for="p_name">Name</label>
			    <input type="text" class="form-control" value="${products.p_name}" name="p_name" id="p_name">
			  </div>
			  <div class="form-group">
			    <label for="p_price">Price:</label>
			    <input type="text" class="form-control" value="${products.p_price}" name="p_price" id="p_price">
			  </div>
			  <div class="form-group">
			    <label for="p_percent">Percent Benefits:</label>
			    <input type="text" class="form-control" value="${products.p_percent}" name="p_percent" id="p_percent">
			  </div>
			  <div class="form-group">
			    <label for="p_type">Product Type:</label>
			    <input type="text" class="form-control" value="${products.p_type}" name="p_type" id="p_type">
			  </div>
			  <button type="submit" class="btn btn-default">SUBMIT</button>
		</form>
	</c:when>
	
	
  </c:choose>
</div>

</body>
</html>
