<!DOCTYPE html>
<html>
<head>
<title>Commodity</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<!--theme style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<script src="js/jquery.min.js"></script>
<!--//theme style-->
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

<%
	Double totalPrice = (Double)session.getAttribute("totalPrice");
	if(totalPrice == null){
		totalPrice = 0.;
	}

	Integer cmAmount = (Integer)session.getAttribute("cmAmount");
	if(cmAmount == null){
		cmAmount = 0;
	}
%>

<div class="header-top">
	 <div class="header-bottom">			
				<div class="logo">
					<h1><a href="index(welcome).jsp">NiceKey</a></h1>
				</div>
			 <!---->		 
			 <div class="top-nav">
				<ul class="memenu skyblue"><li class="active"><a href="index(welcome).jsp">Home</a>
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
								<h4>My Detail</h4>
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
					<li class="grid"><a href="./aboutus.jsp">ABOUT US</a>
					</li>
					<li class="grid"><a href="https://www.bupt.edu.cn/">FOUR</a></li>
				</ul>
				<div class="clearfix"> </div>
			 </div>
			 <!---->
		 <div id="user" class="cart box_1">
			 <a href="checkout.jsp"><img  src="imagesOfUs/user.jpg" href="#"/>
				 <%
					 session.removeAttribute("cmId");
					 session.removeAttribute("cmCount");
				 %>
				 <%String name=(String)session.getAttribute("username");%>
				 <p>Welcome! <%=name%></p>
				 <%--<div class="total">--%>
				 <div>
					 <p>$<%=totalPrice+"        "%>(<%=cmAmount%>)</p>
				 </div>
				 <%--<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)
             <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>--%>
			 </a>
			 <form method="post" action="${pageContext.request.contextPath}/logout">
				 <input class="mysubmit" type="submit" value="Log out">
			 </form>
			 <%--<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>--%>
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
</div>
<!--header//-->
<div class="product">
	<div class="container">
		<div class="product-price1">
			<div class="top-sing">
				<%
					int cmId = Integer.parseInt(request.getParameter("CommdityId"));
					StringBuffer cmName = new StringBuffer();
					Double cmPrice = 0.;
					StringBuffer descText = new StringBuffer();
					StringBuffer imageUrl1 = new StringBuffer();
					StringBuffer imageUrl2 = new StringBuffer();
					StringBuffer imageUrl3 = new StringBuffer();

					switch(cmId){
						case 1:
							cmName.append("Electronic organ1");
							cmPrice = 1200.;
							descText.append("The keyboard comes with world leading digital audio technology, " +
									"with professional quality and gives you the best experience.");
							imageUrl1.append("imagesOfUs/key1.jpg");
							imageUrl2.append("imagesOfUs/key2.jpg");
							imageUrl3.append("imagesOfUs/key3.png");
							break;

						case 2:
							cmName.append("Electronic organ2");
							cmPrice = 1400.;
							descText.append("The keyboard comes with world leading digital audio technology, " +
									"with professional quality and gives you the best experience.");
							imageUrl1.append("imagesOfUs/key2.jpg");
							imageUrl2.append("imagesOfUs/key3.png");
							imageUrl3.append("imagesOfUs/key4.jpg");
							break;

						default:
							System.out.println("Error");
							System.exit(1);
							break;
					}

					session.setAttribute("cmName", cmName);
					session.setAttribute("cmPrice", cmPrice);
					session.setAttribute("cmId", cmId);
				%>

				<div class="col-md-7 single-top">
					<div class="flexslider">
						<ul class="slides">
							<li data-thumb=<%=imageUrl1.toString()%>>
								<div class="thumb-image"> <img src="imagesOfUs/key1.jpg", data-imagezoom="true", class="img-responsive", alt=""/> </div>
							</li>
							<li data-thumb=<%=imageUrl2.toString()%>>
								<div class="thumb-image"> <img src="imagesOfUs/key2.jpg", data-imagezoom="true", class="img-responsive", alt=""/> </div>
							</li>
							<li data-thumb=<%=imageUrl3.toString()%>>
								<div class="thumb-image"> <img src="imagesOfUs/key3.png", data-imagezoom="true", class="img-responsive", alt=""/> </div>
							</li>
						</ul>
					</div>
					<script src="js/imagezoom.js"></script>
					<script defer src="js/jquery.flexslider.js"></script>
					<script>
						// Can also be used with $(document).ready()
						$(window).load(function() {
							$('.flexslider').flexslider({
								animation: "slide",
								controlNav: "thumbnails"
							});
						});
					</script>

				</div>
				<div class="col-md-5 single-top-in simpleCart_shelfItem">
					<div class="single-para ">

						<h4><%=cmName.toString()%></h4>
						<h5 class="item_price">$ <%=cmPrice%></h5>
						<p class="para"><%=descText.toString()%></p>
						<div class="prdt-info-grid">
							<ul>
								<%--
                              <li>- Brand : Nice Key</li>
                              <li>- Dimensions : 80cm x 35cm x 20cm</li>
                              <li>- Color : Black&nbsp;</li>
                              <li>- Material : Steel</li>
                              --%>
							</ul>

						</div>
						<!--
                                                    <div class="check">
                                                     <p><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>Enter pin code for delivery &amp; availability</p>
                                                     <form class="navbar-form">
                                                          <div class="form-group">
                                                            <input type="text" class="form-control" placeholder="Enter Pin code">
                                                          </div>
                                                          <button type="submit" class="btn btn-default">Verify</button>
                                                     </form>
                                                    </div>
                        -->
						<a ></a>
						<script type="text/javascript">
							function increase()
							{
								var txt = document.getElementById('Bnumber');
								var number=+txt.value;
								number=number+1;
								txt.value=number;
							}
							function decrease() {
								var txt = document.getElementById('Bnumber');
								var number=+txt.value;
								number=number-1;
								if(number<=0){
									number=0;
								}
								txt.value=number;
							}
						</script>

						<script type="text/javascript">
							function IdCheck(){
								var a='<%=session.getAttribute("try")%>';
								if(a != 'ok' || !a){
									document.addingCart.action="./login.jsp";
								}else{
									document.addingCart.action="./checkout.jsp";
								}
							}
						</script>
						<form name="addingCart" method="post" action="" onsubmit="IdCheck();">
							<%--System.out.println(session.getAttribute("try"));--%>
							<input type="button" onclick="decrease()" value="-"/>
							<input id="Bnumber" type="text" size="5" name="number" value="0">
							<input type="button" onclick="increase()" value="+"/><br/>
							<input type="submit" value="Add to Cart" class="add-cart item_add">

						</form>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
<!--
		 <div class="bottom-prdt">
			 <div class="btm-grid-sec">
				 <div class="col-md-2 btm-grid">
					 <a href="product.html">
						<img src="images/p3.jpg" alt=""/>
						<h4>Product#1</h4>
						<span>$1200</span></a>
				 </div>
				 <div class="col-md-2 btm-grid">
					 <a href="product.html">
						<img src="images/p10.jpg" alt=""/>
						<h4>Product#1</h4>
						<span>$700</span></a>
				 </div>
				 <div class="col-md-2 btm-grid">
					  <a href="product.html">
						<img src="images/p5.jpg" alt=""/>
						<h4>Product#1</h4>
						<span>$1300</span></a>
				 </div>
				 <div class="col-md-2 btm-grid">
					  <a href="product.html">
						<img src="images/p4.jpg" alt=""/>
						<h4>Product#1</h4>
						<span>$9000</span></a>
				 </div>
				 <div class="col-md-2 btm-grid">
					  <a href="product.html">
						<img src="images/p2.jpg" alt=""/>
						<h4>Product#1</h4>
						<span>$450</span></a>
				 </div>
				  <div class="clearfix"></div>
			 </div>			
		 </div>
-->
	 </div>
</div>
<!---->
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
		<a href="https://www.qualcomm.cn/"><img src="imagesOfUs/partner/PA5.jpg" style="margin-left:80px;"width="200" height="100" class="img-rounded"/></a>	</p>
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