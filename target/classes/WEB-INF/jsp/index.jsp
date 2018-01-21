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
      <li><a href="#">New Product</a></li>
      <li><a href="#">Page 2</a></li>
      <li><a href="#">Page 3</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
  <h3>Welcome </h3>
  <p>Save Time With Great Product</p>
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Product Name</th>
        <th>Details</th>
        <th>Price</th>
        <th>Product Type</th>
      </tr>
    </thead>
    <tbody>
      	<c:forEach var="product" items="${products}" >
		    <tr>
		        <td>${product.getId()}</td>
		        <td>${product.p_name}</td>
		        <td>${product.p_price}</td>
		        <td>${product.p_type}</td>
		    </tr>
		</c:forEach>
      	
    </tbody>
  </table>
</div>

</body>
</html>
