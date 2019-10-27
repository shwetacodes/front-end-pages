
<!DOCTYPE html>
<html>

<head>

<title>Retailer LOGGED IN</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>

table, th, td {
	border: 2px solid black;
	font-size: 20px;
	text-align: center;
	padding: 10px;
}

table {
	border-collapse: collapse;
	width: 100%;
}

.deletebin {
	width: 35px;
	height: 35px;
}

.addnewprod {
	width: 35px;
	height: 35px;
	font-size: 25px;
}

.addnewprodlabel {
	font-size: 25px;
	padding-left: 950px;
	padding =bottom: 1px;
}

.deleteall {
	font-size: 25px;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a,.dropbtn{
	display: inline-block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
	background-color: red;
}

li.dropdown {
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #f1f1f1;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.topnav .searchbtn {
	padding: 10px 20px 10px 20px;
	background-color: #efefef;
	border: none;
	border-radius: 4px;
}

.topnav #searchbar {
	width: 80%;
	padding: 10px;
	margin: 10px 0 10px 0;
	border: 1px solid #efefef;
	border-radius: 5px;
}

* {
	box-sizing: border-box;
}

body {
	font-family: Verdana, sans-serif;
}

.mySlides {
	display: none;
}

img {
	vertical-align: middle;
}

/* Slideshow container */
.slideshow-container {
	max-width: 1000px;
	position: relative;
	margin: auto;
}

/* Caption text */
.text {
	color: #f2f2f2;
	font-size: 15px;
	padding: 8px 12px;
	position: absolute;
	bottom: 8px;
	width: 100%;
	text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}

/* The dots/bullets/indicators */
.dot {
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

.active {
	background-color: #717171;
}

/* Fading animation */
.fade {
	-webkit-animation-name: fade;
	-webkit-animation-duration: 1.5s;
	animation-name: fade;
	animation-duration: 1.5s;
}

@
-webkit-keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}
@
keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
	.text {
		font-size: 11px
	}
}
</style>

</head>

<body>
	<h1>Retailer Logged In Page</h1>
	
	<jsp:include page="header.jsp"></jsp:include>

	<!-- <br>
	<br>
	
	<ul>
  <li><a href="./addproduct">Home</a></li>
  <li><a href="#editprofile">Edit Profile</a></li> 
  
  <li class="dropdown" style="float:right">
    <a href="javascript:void(0)" class="dropbtn" >Hi Retailer Name</a>
    <div class="dropdown-content">
      <a href="/ShopHere/logout">Logout</a>
           
    </div>
  </li>
</ul> -->
	
	
	
	<br><br>
	
	<a href="/ShopHere/app/addproduct"><input type="button" value="Add Product" style="float:left; font-size:18px; background-color:orange;" name="addproduct"/></a>
	
	<input type="submit" value="Delete All Products" style="float:right; font-size:18px; background-color:orange;">
	
	<div class="row" id="ul1">
		<div class="column electronic" value="Iphone">
		<table>
			<tr>
				<th>PRODUCT ID
				<th>PRODUCT NAME
				<th>PRODUCT PRICE
				<th>DELETE PRODUCT
			</tr>
			
			<c:forEach items="${listOfProduct}" var="p">
			
			<tr>
				<td>Product ID: ${ p.prodid }</td>
				<td>Product Name: ${ p.prodname }</td>
				<td>Product Price: ${ p.prodprice }</td>
				<td><a href="/ShopHere/app/deleteprod"><input type="submit" name="1" value="Delete" style=" font-size:18px; background-color:orange;"></a>
			</tr>
			<tr>
				<td>Product ID: ${ p.prodid }</td>
				<td>Product Name: ${ p.prodname }</td>
				<td>Product Price: ${ p.prodprice }</td>
				<td><a href="/ShopHere/app/deleteprod"><input type="submit" name="1" value="Delete" style=" font-size:18px; background-color:orange;"></a>
			</tr>
			</c:forEach>
		</table>
		</div>
	</div>

</body>

</html>