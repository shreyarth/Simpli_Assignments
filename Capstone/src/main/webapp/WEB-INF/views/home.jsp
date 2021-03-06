<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

			<!DOCTYPE html>
			<html>

			<head>
				<!-- <link href="webjars/bootstrap/5.0.0-beta1/css/bootstrap.min.css" rel="stylesheet" /> -->
				<!-- <script src="webjars/jquery/3.5.1/jquery.min.js"></script> -->
				<!-- <script src="webjars/popper/1.12.9-1/popper.min.js"></script> -->
				<!-- <script src="webjars/bootstrap/5.0.0-beta1/js/bootstrap.min.js"></script> -->
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
					rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
					crossorigin="anonymous">
				<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
					integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
					crossorigin="anonymous"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
					integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
					crossorigin="anonymous"></script>
				<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
					integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
					crossorigin="anonymous"></script>

				<meta charset="ISO-8859-1">
				<title>Music Store</title>
			</head>
			<body>
				<div class="container min-vh-100 min-vw-100" style="background-image: url('img/bg_img.jpg');">
					<h1 class="text-center">THE STORE</h1>
					<nav class="navbar navbar-expand-lg navbar-light bg-gradient">
						<span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
								class="bi bi-music-note-beamed" viewBox="0 0 16 16">
								<path
									d="M6 13c0 1.105-1.12 2-2.5 2S1 14.105 1 13c0-1.104 1.12-2 2.5-2s2.5.896 2.5 2zm9-2c0 1.105-1.12 2-2.5 2s-2.5-.895-2.5-2 1.12-2 2.5-2 2.5.895 2.5 2z" />
								<path fill-rule="evenodd" d="M14 11V2h1v9h-1zM6 3v10H5V3h1z" />
								<path d="M5 2.905a1 1 0 0 1 .9-.995l8-.8a1 1 0 0 1 1.1.995V3L5 4V2.905z" />
							</svg></span>
						<button class="navbar-toggler" type="button" data-toggle="collapse"
							data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
							aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav mr-auto">
								<li class="nav-item active">
									<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
								</li>
								<li class="nav-item ms-auto">
									<!-- https://stackoverflow.com/questions/13638446/checking-servlet-session-attribute-value-in-jsp-file/13638486 -->
									<% if(session.getAttribute("username")==null ||
										session.getAttribute("username").equals("")){ %>
										<button class="btn btn-outline-dark" onclick="location.href='login'"
											type="button">Login</button>
										<% } else{ %>
											<button class="btn btn-outline-dark" onclick="location.href='logout'"
												type="button">Logout</button>
											<span class="btn btn-outline-dark">User: <%=
													session.getAttribute("username")%> </span>
											<% } %>
								</li>
								<% if(session.getAttribute("username") !=null &&
									session.getAttribute("username").equals("admin")){ %>
									<li class="nav-item ms-auto">
										<!-- https://stackoverflow.com/questions/13638446/checking-servlet-session-attribute-value-in-jsp-file/13638486 -->

										<button class="btn btn-outline-dark" onclick="location.href='addproduct'"
											type="button">Add Product</button>
									</li>

									<li class="nav-item ms-auto">
										<!-- https://stackoverflow.com/questions/13638446/checking-servlet-session-attribute-value-in-jsp-file/13638486 -->

										<button class="btn btn-outline-dark" onclick="location.href='allusers'"
											type="button">Edit Users</button>
									</li>
									<% } %>
										<% if(session.getAttribute("username") !=null){ %>
											<li class="nav-item ms-auto">
												<!-- https://stackoverflow.com/questions/13638446/checking-servlet-session-attribute-value-in-jsp-file/13638486 -->

												<button class="btn btn-outline-dark"
													onclick="location.href='edituser'" type="button">Edit User</button>
											</li>
											<%}%>
												<li class="nav-item dropdown">
													<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
														role="button" data-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false">
														<button type="button" class="btn btn-dark ms-auto"
															aria-expanded="false">
															<svg xmlns="http://www.w3.org/2000/svg" width="16"
																height="16" fill="currentColor" class="bi bi-cart-fill"
																viewBox="0 0 16 16">
																<path
																	d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z">
																</path>
															</svg>
														</button>
													</a>
													<div class="dropdown-menu" aria-labelledby="navbarDropdown">
														<a class="dropdown-item" href="#">
															<table class="table table-striped">
																<!-- <caption>Your todos are</caption> -->
																<thead>
																	<tr>
																		<th>Name</th>
																		<th>Price</th>
																	</tr>
																</thead>
																<tbody>
																	<c:forEach items="${carts}" var="cart">
																		<tr>
																			<td>${cart.productname}</td>
																			<td>${cart.price}</td>
																		</tr>
																	</c:forEach>
																</tbody>
															</table>
															<button class="btn btn-dark"
																onclick="location.href='/viewcart'">Checkout</button>
														</a>
													</div>
												</li>
							</ul>
							<form class="form-inline ms-auto" action="productlist">
								<input class="ms-auto" type="text" placeholder="Search" aria-label="Search"
									name="search">
								<button class="btn btn-outline-dark ms-auto" value="submit">Search</button>
							</form>
						</div>
					</nav>
					<div class="container">
						<div class="row justify-content-center text-center ">
							<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel"
								data-interval=3000>
								<ol class="carousel-indicators">
									<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
									<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
									<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
									<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
									<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
									<li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
								</ol>
								<div class="carousel-inner">
									<div class="carousel-item active">
										<img class="d-block w-auto mx-auto ms-auto" src="img/ins_img_1.jpg"
											alt="First slide" height="407px">
									</div>
									<div class="carousel-item">
										<img class="d-block w-auto mx-auto ms-auto" src="img/ins_img_2.jpg"
											alt="Second slide" height="407px">
									</div>
									<div class="carousel-item">
										<img class="d-block w-auto mx-auto ms-auto" src="img/ins_img_3.jpg"
											alt="Third slide" height="407px">
									</div>
									<div class="carousel-item">
										<img class="d-block w-auto mx-auto ms-auto" src="img/ins_img_4.jpg"
											alt="Fourth slide" height="407px">
									</div>
									<div class="carousel-item">
										<img class="d-block w-auto mx-auto ms-auto" src="img/ins_img_5.jpg"
											alt="Fifth slide" height="407px">
									</div>
									<div class="carousel-item">
										<img class="d-block w-auto mx-auto ms-auto" src="img/ins_img_6.jpg"
											alt="Sixth slide" height="407px">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-11" id="tab">
								<table class="table table-striped">
									<!-- <caption>Your todos are</caption> -->
									<thead>
										<tr>
											<th>Image</th>
											<th>Name</th>
											<th>Category</th>
											<th>Description</th>
											<th>Price</th>
											<th></th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${products}" var="product">
											<tr>
												<td><img class="bg-transparent" src="${product.image}" alt="Nothing"
														width="200px" height="200px" /></td>
												<td>${product.productname}</td>
												<td>${product.category}</td>
												<td>${product.proddescription}</td>
												<td>${product.price}</td>
												<td>
													<button type="submit" class="btn btn-dark"
														onclick="location.href='addtocart/' + ${product.id}">
														<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
															fill="currentColor" class="bi bi-cart-fill"
															viewBox="0 0 16 16">
															<path
																d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z">
															</path>
														</svg>
													</button>
												</td>
												<td>
													<% if(session.getAttribute("username") !=null &&
														session.getAttribute("username").equals("admin")){ %>
														<button type="submit" class="btn btn-dark"
															onclick="location.href='editproduct/' + ${product.id}">
															<svg xmlns="http://www.w3.org/2000/svg" width="16"
																height="16" fill="currentColor" class="bi bi-pen-fill"
																viewBox="0 0 16 16">
																<path
																	d="M13.498.795l.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001z">
																</path>
															</svg>
														</button>
														<%}%>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="col-1">


							</div>
						</div>
					</div>
				</div>
			</body>

			</html>