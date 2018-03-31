<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
  <title>Muhaiminur Rahman_SE_JAVA</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style type="text/css">
	/* body {
		color: #fff;
		background: #d47677;
	}
	.form-control {
        min-height: 41px;
		background: #fff;
		box-shadow: none !important;
		border-color: #e3e3e3;
	}
	.form-control:focus {
		border-color: #70c5c0;
	}
    .form-control, .btn {        
        border-radius: 2px;
    } */
	.login-form {
		width: 350px;
		margin: 0 auto;
		padding: 100px 0 30px;		
	}
	.login-form form {
		color: #7a7a7a;
		border-radius: 2px;
    	margin-bottom: 15px;
        font-size: 13px;
        background: #ececec;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;	
        position: relative;	
    }
	.login-form h2 {
		font-size: 22px;
        margin: 35px 0 25px;
    }
	.login-form .avatar {
		position: absolute;
		margin: 0 auto;
		left: 0;
		right: 0;
		top: -50px;
		width: 95px;
		height: 95px;
		border-radius: 50%;
		z-index: 9;
		background: #70c5c0;
		padding: 15px;
		box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
	}
	.login-form .avatar img {
		width: 100%;
	}	
    .login-form input[type="checkbox"] {
        margin-top: 2px;
    }
    .login-form .btn {        
        font-size: 16px;
        font-weight: bold;
		background: #70c5c0;
		border: none;
		margin-bottom: 20px;
    }
	.login-form .btn:hover, .login-form .btn:focus {
		background: #50b8b3;
        outline: none !important;
	}    
	.login-form a {
		color: #fff;
		text-decoration: underline;
	}
	.login-form a:hover {
		text-decoration: none;
	}
	.login-form form a {
		color: #7a7a7a;
		text-decoration: none;
	}
	.login-form form a:hover {
		text-decoration: underline;
	}
</style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/">Assessment</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/">All the Product</a></li>
      <li><a href="newproduct">New Product</a></li>
      <li><a href="update">UPDATE</a></li>
      <li><a href="delete">DELETE</a></li>
      <li><a href="login">Login</a></li>
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
			        <!-- <th>Edit</th>
			        <th>DELETE</th> -->
			      </tr>
			    </thead>
			    <tbody>
			      	<c:forEach var="product" items="${products}" >
					    <tr>
					        <td>${product.getId()}</td>
					        <td>${product.p_name}</td>
					        <td>${product.p_price}</td>
					        <td>${product.p_type}</td>
					        <%-- <td><a href="update?id=${product.getId()}"><div class="glyphicon glyphicon-pencil"></div></a></td>
					        <td><a href="delete_with_id?id=${product.getId()}"><div class="glyphicon glyphicon-remove"></div></a></td>
					     --%>
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
	<c:when test="${mode=='DELETE_VIEW'}">
		<table class="table table-striped">
			    <thead>
			      <tr>
			        <th>SL</th>
			        <th>Product Name</th>
			        <th>Price</th>
			        <th>Product Type</th>
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
					        <td><a href="delete_with_id?id=${product.getId()}"><div class="glyphicon glyphicon-remove"></div></a></td>
					    </tr>
					</c:forEach>
			      	
			    </tbody>
			  </table>
	</c:when>
	
	<c:when test="${mode=='UPDATE_VIEW'}">
		<table class="table table-striped">
			    <thead>
			      <tr>
			        <th>SL</th>
			        <th>Product Name</th>
			        <th>Price</th>
			        <th>Product Type</th>
			        <th>UPDATE</th>
			      </tr>
			    </thead>
			    <tbody>
			      	<c:forEach var="product" items="${products}" >
					    <tr>
					        <td>${product.getId()}</td>
					        <td>${product.p_name}</td>
					        <td>${product.p_price}</td>
					        <td>${product.p_type}</td>
					        <td><a href="update_with_id?id=${product.getId()}"><div class="glyphicon glyphicon-pencil"></div></a></td>
					    </tr>
					</c:forEach>
			      	
			    </tbody>
			  </table>
	</c:when>
	
	<c:when test="${mode=='USER_VIEW'}">
		<table class="table table-striped">
			    <thead>
			      <tr>
			        <th>SL</th>
			        <th>Product Name</th>
			        <th>Price</th>
			        <th>Product Type</th>
			        <th>Buy This Product</th>
			      </tr>
			    </thead>
			    <tbody>
			      	<c:forEach var="product" items="${products}" >
					    <tr>
					        <td>${product.getId()}</td>
					        <td>${product.p_name}</td>
					        <td>${product.p_price}</td>
					        <td>${product.p_type}</td>
					        <td><a href="update_with_id?id=${product.getId()}"><a href="#" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-plus-sign"></span> Buy
        </a></a></td>
					    </tr>
					</c:forEach>
			      	
			    </tbody>
			  </table>
	</c:when>
	<c:when test="${mode=='LOGIN'}">
		<div class="login-form">
			    <form action="/examples/actions/confirmation.php" method="post">
					<div class="avatar">
						<img src="/examples/images/avatar.png" alt="Avatar">
					</div>
			        <h2 class="text-center">Member Login</h2>   
			        <div class="form-group">
			        	<input type="text" class="form-control" name="username" placeholder="Username" required="required">
			        </div>
					<div class="form-group">
			            <input type="password" class="form-control" name="password" placeholder="Password" required="required">
			        </div>        
			        <div class="form-group">
			            <button type="submit" class="btn btn-primary btn-lg btn-block">Sign in</button>
			        </div>
					<div class="clearfix">
			            <label class="pull-left checkbox-inline"><input type="checkbox"> Remember me</label>
			            <a href="#" class="pull-right">Forgot Password?</a>
			        </div>
			    </form>
			    <p class="text-center small">Don't have an account? <a href="#">Sign up here!</a></p>
			</div>
	</c:when>
	
  </c:choose>
</div>

</body>
</html>
