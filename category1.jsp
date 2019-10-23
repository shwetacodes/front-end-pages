<!DOCTYPE html>
<html>
<head>
  <title>Category</title>
  <!-- <script type="text/javascript" src="category_js.js"></script> -->
  <!-- <link rel="stylesheet" type="text/css" href="category_css.css"> -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
 <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

  <style>
   
body {
  background-color: #f1f1f1;
  padding: 20px;
  font-family: Arial;
}
/* Center website */
.main {
  max-width: 1000px;
  margin: auto;
}
h1 {
  font-size: 50px;
  word-break: break-all;
}
.row {
  margin: 8px -16px ;
}
/* Add padding BETWEEN each column (if you want) */
.row,
.row > .column {
  padding: 10px;

}

.vline{
	border-right: 4px solid black;
  	height: 800px;
  	padding: 25px;
	
}
/* Create three equal columns that floats next to each other */
.column {
  float: left;
  width: 21%;
  max-height: 400px;
  margin: 2px;
  display: none; /* Hide columns by default */
}
/* Clear floats after rows */ 
.row:after {
  content: "";
  display: table;
  clear: both;
}
/* Content */
.content {
  background-color: white;
  padding: 10px;
}

.column img {
    width: 90%;
    height: 200px;
 
}
.filter label:hover {
  cursor: pointer;
}
/* The "show" class is added to the filtered elements */
.show {
  display: block;
}
/* Style the buttons */
.btn {
  border: none;
  outline: none;
  padding: 12px 16px;
  background-color: white;
  cursor: pointer;
}
/* Add a grey background color on mouse-over */
.btn:hover {
  background-color: #ddd;
}
aside{
	float:left;

}
section{
	float:middle;
	
}
/* Add a dark background color to the active button */
.btn.active {
  background-color: #666;
   color: white;
}
.mybtn1{
  display: inline-block; 
}
/* .filter{
  display: inline-block; 
  position: absolute;
  right: 32px;
} */
</style>
</head>

<body>

<jsp:include page="header.jsp"></jsp:include>

<br><br>
<aside>
<div class="vline">
<div >
  <h3>Sort By Price</h3>
  <!-- <label><input type="radio" value="LowToHigh" name="test"> Price LowToHigh</label><br>
  <label><input type="radio" value="HighToLow" name="test"> Price HighToLow</label><br><br><br> -->

  <select class="price-sorting type-regular" name="price-sorting">
    <option selected disabled>Default</option>
    <option value="l2h">Low to high</option>
    <option value="h2l">High to low</option>
  </select>
</div>


<h3>Filter By Brand</h3>

	
    	<div class="column electronic">
	    	<div class="f1" style="width:120px;" >
				<input type="radio" value="Iphone"  name="test"> Iphone<br>
				<input type="radio" value="Oppo"  name="test"> Oppo<br>
				<input type="radio" value="Samsung"  name="test"> Samsung<br>
			</div>
		</div>
		<br>
	    <div class="column grocery" style="margin-top: 120px;">
		    <div class="f2" style="width:120px; float:right; padding-left: 150px;" >
			    <input type="radio" value="Vegetables"  name="test"> Vegetables<br>
				<input type="radio" value="Fruits"  name="test">Fruits<br>
			    <input type="radio" value="Pulses"  name="test">Pulses<br>
		    </div>
		</div>
		<br>
	
	    <div class="column clothing" style="margin-top: 240px;">
		    <div class="f3" style="width:150px; float:right; margin-right: 36px;" >
			    <input type="radio" value="Menswear"  name="test">Menswear<br>
				<input type="radio" value="Womenswear"  name="test"> Womenswear<br>
			    <input type="radio" value="Kidswear" name="test"> Kidswear<br> 
		    </div>
		</div>

  <!-- <button class="btn active" onclick="filterSelection('all')"> Show all</button><br>
  <button class="btn" onclick="filterSelection('electronic')"> Electronics</button><br>
  <button class="btn" onclick="filterSelection('grocery')"> Grocery</button><br>
  <button class="btn" onclick="filterSelection('clothing')"> Clothing</button><br> -->
</div>

</aside>


<!-- Portfolio Gallery Grid -->

<!-- <div class="row products-grid">
    <a class="product shadow-box active" href="product-link.com" data-store="STORENAME" data-price="738" target="_blank">
        <div class="product-image">
            <img src="product-image.jpg" alt="">
        </div>
        <h4 class="product-title">Product Name</h4>
        <div class="details">
            <span class="price">£738.00</span>
        </div>
        <div class="actions">
            <button>Buy Now</button>
        </div>
    </a>
<a class="product shadow-box active" href="product-link2.com" data-store="STORENAME2" data-price="200" target="_blank">
        <div class="product-image">
            <img src="product-image2.jpg" alt="">
        </div>
        <h4 class="product-title">Product Name</h4>
        <div class="details">
            <span class="price">£200.00</span>
        </div>
        <div class="actions">
            <button>Buy Now</button>
        </div>
    </a>
</div> -->

<div class="row products-grid" id="ul1">
<a class="product shadow-box active" href="product-link.com" data-store="STORENAME" data-price="54900" target="_blank">
  <div class="column electronic" value="Iphone">
    <div class="content">
      <img src="./resources/images/iphone.jpg" alt="Iphone" >
      <h4 value="brand">Iphone</h4>
      <p>Price: 54,900rs</p>
      <div class="actions">
            <button>Buy Now</button>
       </div>
    </div>
  </div>
</a>

<a class="product shadow-box active" href="product-link.com" data-store="STORENAME" data-price="15990" target="_blank">
  <div class="column electronic" value="Oppo">
    <div class="content">
      <img src="./resources/images/oppo.jpg" alt="oppo" >
      <h4 value="brand">Oppo</h4>
      <p>Price: 15,990rs</p>
      <div class="actions">
            <button>Buy Now</button>
       </div>
    </div>
  </div>
  </a>

  <div class="column electronic" value="Samsung">
    <div class="content">
      <img src="./resources/images/samsung.jpg" alt="samsung"  >
      <h4 value="brand">Samsung</h4>
      <p>Price: 14,980rs</p>
      <div class="actions">
            <button>Buy Now</button>
       </div>
    </div>
  </div>

  <div class="column grocery" value="Vegetables">
    <div class="content">
      <img src="./resources/images/vegetables.jpg" alt="vegetables" >
      <h4>Vegetables</h4>
      <p>Price: 100rs</p>
      <div class="actions">
            <button>Buy Now</button>
       </div>
    </div>
  </div>
  <div class="column grocery" value="Fruits">
    <div class="content">
      <img src="./resources/images/fruits.jpg" alt="fruits" >
      <h4>Fruits</h4>
      <p>Price: 550rs</p>
      <div class="actions">
            <button>Buy Now</button>
       </div>
    </div>
  </div>
  <div class="column grocery" value="Pulses">
    <div class="content">
      <img src="./resources/images/pulses.jpg" alt="pulses" >
      <h4>Pulses</h4>
      <p>Price: 770rs</p>
      <div class="actions">
            <button>Buy Now</button>
       </div>
    </div>
  </div>

  <div class="column clothing" value="Menswear">
    <div class="content">
      <img src="./resources/images/menswear.jpg" alt="menswear" >
      <h4>Menswear</h4>
      <p>Price: 1300rs</p>
      <div class="actions">
            <button>Buy Now</button>
       </div>
    </div>
  </div>
  <div class="column clothing" value="Womenswear">
    <div class="content">
      <img src="./resources/images/womenswear.jpg" alt="womenswear" >
      <h4>Womenswear</h4>
      <p>Price: 1990rs</p>
      <div class="actions">
            <button>Buy Now</button>
       </div>
    </div>
  </div>
  <div class="column clothing" value="kidswear">
    <div class="content">
      <img src="./resources/images/kidswear.jpg" alt="kidswear" >
      <h4>kidswear</h4>
      <p>Price: 1280rs</p>
      <div class="actions">
            <button>Buy Now</button>
       </div>
    </div>
  </div>
<!-- END GRID -->
</div>


</body>

<script type="text/javascript">

	//sort by price

	$(document).on("change", ".price-sorting", function() {

    var sortingMethod = $(this).val();

    if(sortingMethod == 'l2h')
    {
        sortProductsPriceAscending();
    }
    else if(sortingMethod == 'h2l')
    {
        sortProductsPriceDescending();
    }

	});
	function sortProductsPriceAscending()
	{
	    var products = $('.product');
	    products.sort(function(a, b){ return $(a).data("price")-$(b).data("price")});
	    $(".products-grid").html(products);

	}

	function sortProductsPriceDescending()
	{
	    var products = $('.product');
	    products.sort(function(a, b){ return $(b).data("price") - $(a).data("price")});
	    $(".products-grid").html(products);

	}

//filtering images based on radio buttons
$(function () {
            $('input[name="test"]').on('change', function (a, b) {
                var value = this.value;
                $('#ul1 >.column').hide();
                
                if (value == 'Brand') {
                    $('#ul1 >.column').show();
                }
                
                if (value == 'Iphone') {
                    $('#ul1 >.column').filter(function (a, b) {
                    	 var v = $(b).attr('value');//Iphone
                    	 console.log(v);
                        return v=="Iphone";
                    }).show();
                }
                
                if (value == 'Oppo') {
                    $('#ul1 >.column').filter(function (a, b) {
                    	 var v = $(b).attr('value');//Iphone
                    	 console.log(v);
                        return v=="Oppo";
                    }).show();
                }
                
                if (value == 'Samsung') {
                    $('#ul1 >.column').filter(function (a, b) {
                    	 var v = $(b).attr('value');
                    	 console.log(v);
                    	 return v=="Samsung";
                    }).show();
                }
                
                if (value == 'Vegetables') {
                    $('#ul1 >.column').filter(function (a, b) {
                    	 var v = $(b).attr('value');
                    	 console.log(v);
                    	 return v=="Vegetables";
                    }).show();
                }
                if (value == 'Fruits') {
                    $('#ul1 >.column').filter(function (a, b) {
                    	 var v = $(b).attr('value');
                    	 console.log(v);
                    	 return v=="Fruits";
                    }).show();
                }
                if (value == 'Pulses') {
                    $('#ul1 >.column').filter(function (a, b) {
                    	 var v = $(b).attr('value');
                    	 console.log(v);
                    	 return v=="Pulses";
                    }).show();
                }
                if (value == 'Menswear') {
                    $('#ul1 >.column').filter(function (a, b) {
                    	 var v = $(b).attr('value');
                    	 console.log(v);
                    	 return v=="Menswear";
                    }).show();
                }
                if (value == 'Womenswear') {
                    $('#ul1 >.column').filter(function (a, b) {
                    	 var v = $(b).attr('value');
                    	 console.log(v);
                    	 return v=="Womenswear";
                    }).show();
                }
                if (value == 'Kidswear') {
                    $('#ul1 >.column').filter(function (a, b) {
                    	 var v = $(b).attr('value');
                    	 console.log(v);
                    	 return v=="kidswear";
                    }).show();
                }
            });
        });
         
 //filtering images based on categories
filterSelection("all") // Execute the function and show all columns
function filterSelection(c) {
  var x, i;
  x = document.getElementsByClassName("column");
  if (c == "all") c = "";
  // Add the "show" class (display:block) to the filtered elements, and remove the "show" class from the elements that are not selected
  for (i = 0; i < x.length; i++) {
    w3RemoveClass(x[i], "show");
    if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
  }
}
// Show filtered elements
function w3AddClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");//column
  arr2 = name.split(" ");//eletronics
  for (i = 0; i < arr2.length; i++) {
    if (arr1.indexOf(arr2[i]) == -1) {
      element.className += " " + arr2[i];
    }
  }
}
// Hide elements that are not selected
function w3RemoveClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    while (arr1.indexOf(arr2[i]) > -1) {
      arr1.splice(arr1.indexOf(arr2[i]), 1); 
    }
  }
  element.className = arr1.join(" ");
}
// Add active class to the current button (highlight it)
var btnContainer = document.getElementById("myBtnContainer");
var btns = btnContainer.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function(){
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}

</script>

</html>
