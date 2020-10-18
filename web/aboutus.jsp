<!DOCTYPE html>
<html>
<head>
<title>single</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<!--theme style-->
	<style>

		.mysubmit {

			-webkit-transition-duration: 0.4s;

			transition-duration: 0.4s;

			padding: 16px 32px;

			text-align: center;

			background-color: white;

			size: 1px;

			color: black;

			border: 2px red ;

			border-radius:5px;

			box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
		}

		.mysubmit:hover {

			background-color: red;

			color: white;

		}

	</style>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<script src="js/jquery.min.js"></script>
<!--//theme style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Wedding Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<script src="js/simpleCart.min.js"> </script>
<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!-- /start menu -->
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

</head>
<body> 
<!--header-->
<div class="header-top">
	 <div class="header-bottom">			
				<div class="logo">
				  <h1><a href="index(welcome).jsp">NiceKey</a></h1>
				</div>
			 <!---->
		 <div class="top-nav">
			 <ul class="memenu skyblue">
				 <li class="active"><a href="index(welcome).jsp">Home</a>
					 <div class="mepanel">
						 <div class="row">
							 <div id="rl1" class="col1 me-one">
								 <h4>Login</h4>
								 <ul>
									 <li><a  href="login.jsp">Login</a></li>
									 <li><a  href="logup.jsp">register</a></li>
								 </ul>
							 </div>
							 <div id="rl2" class="col1 me-one">
								 <h4>My Detial</h4>
								 <ul>
									 <li><a  href="#">check</a></li>
									 <li><a  href="#">modify</a></li>
								 </ul>
							 </div>
						 </div>
					 </div>
				 </li>

				 <li class="grid"><a href="#">Products</a>
				 </li>
				 <li class="grid"><a href="./aboutus.jsp">About Us</a>
				 </li>
				 <li class="grid"><a href="https://www.bupt.edu.cn/">FOUR</a></li>
			 </ul>
		 </div>
			 <!---->
		 <div id="user" class="cart box_1">
			 <a href="checkout.jsp"><img  src="imagesOfUs/user.jpg" href="#"/>
				 <%String name=(String)session.getAttribute("username");%>
				 <p>Welcome! <%=name%></p>
				 <div class="total">
					 <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)</div>
				 <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
			 </a>
			 <form method="post" action="./logout">
				 <input class="mysubmit" type="submit" value="Log out">
			 </form>

			 <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
			 <div class="clearfix"> </div>
		 </div>
		 <div class="clearfix"> </div>
		 <!---->
	 </div>
	<div class="clearfix"> </div>
</div>


<script type="text/javascript">
	function carr() {
		var a='<%=session.getAttribute("try")%>';
		if(a=='ok'){
			document.getElementById("user").style.display='inline';
			document.getElementById("rl1").style.display='none';
			document.getElementById("rl2").style.display='inline';
		}else if(a!='ok'){
			document.getElementById("user").style.display='none';
			document.getElementById("rl1").style.display='inline';
			document.getElementById("rl2").style.display='none';
		}

	}
	window.onload = carr();
</script>
			 <!---->
  </div>
			<div class="clearfix"> </div>
			<h1 class="text-center">&nbsp;</h1>
			<h1 class="text-center">&nbsp;</h1>
  <h1 class="text-center"><strong>About Us </strong></h1>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</div>
<!--header//-->
<img src="imagesOfUs/add1/building1.jpg" width="300" height="214" alt=""/>
<div class="product col-xs-6">
<div>
    <article class="col-xs-9"><strong>NiceKey, as one of the world leading digital audio device company, has been the trend-setter and innovator for the past few decade. A long history of audio engineering and circuit designing offer us insights and opportunities to accomplish so much more.</strong></article>
    &nbsp;</div>
</div>
<p class="text-left">&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<!---->
<div>&nbsp;</div>
<div class="col-xs-6"><img src="imagesOfUs/add1/prod1.png" alt="" width="325" height="170" class="pic2"/>&nbsp;</div>
<article class="para2"><strong>As a company that keep close relationships with customers' voices, we keep our business based on customers' feedbacks and we do prompt communications for incoming products.</strong></article>
<div>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</div>
<div>
  <div class="col-xs-8">
    <article class="para3"><strong> In the future, we would keep delivering good products by innovating and keeping up with customers voices and needs. With the trend of self-media, we would believe that there's a bigger opportunity awaits. </strong></article>
  &nbsp;</div>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
<p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</div>

<div class="subscribe">
	<div class="container">
		<h3>NiceKey</h3>
		<form action="${pageContext.request.contextPath}/search"  method="get">
			<input type="text" name="SC" class="text" value="Search"
				   onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
			<input type="submit" value="Go"><br/>
			Query method:
			<div id="searchway">
				<input type="radio" name="Search" value="SN" checked>Search by name
				<input type="radio" name="Search" value="SLC">Search by large class
				<input type="radio" name="Search" value="SSC">Search by small class
			</div><br/>
			Order method:
			<div id="orderway">
				<input type="radio" name="Order" value="asc" checked>Increase
				<input type="radio" name="Order" value="desc">Decrease
			</div><br/>
		</form>
	</div>
</div>
<!---->
<div class="footer">
  <p>
	  <a href="https://www.apple.com.cn/"><img  src="imagesOfUs/partner/PA1.jpg" style="margin-left:80px;" width="200" height="100" class="img-rounded"/></a>
	  <a href="https://www.qualcomm.cn/"><img  src="imagesOfUs/partner/PA2.jpg" style="margin-left:80px;" width="200" height="100" class="img-rounded"/></a>
	  <a href="https://www.dolby.com/"><img  src="imagesOfUs/partner/PA3.jpg" style="margin-left:80px;" width="200" height="100" class="img-rounded"/></a>
	  <a href="https://www.yamaha.com.cn/"><img href="https://www.yamaha.com.cn/" src="imagesOfUs/partner/PA4.jpg" style="margin-left:80px;" width="200" height="100" class="img-rounded"/></a>
	  <a href="https://www.qualcomm.cn/"><img src="imagesOfUs/partner/PA5.jpg" style="margin-left:80px;"width="200" height="100" class="img-rounded"/></a>
  </p>
</div>
<div class="copywrite">
  <div class="container">
		 <div class="copy">
			 <p>Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
	   </div>
		 <div class="social">							
				<a href="#"><i class="facebook"></i></a>
				<a href="#"><i class="twitter"></i></a>
				<a href="#"><i class="dribble"></i></a>	
				<a href="#"><i class="google"></i></a>	
				<a href="#"><i class="youtube"></i></a>	
		 </div>
		 <div class="clearfix"></div>
  </div>
</div>
<!---->
</body>
</html>