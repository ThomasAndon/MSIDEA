<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@ page import="jspServlet.vo.Commodity" %>
<html>
<head>
	<title>Shopping Cart</title>
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

	<!-- Custom Theme files -->
	<!--theme style-->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<script src="js/jquery.min.js"></script>


	<!--//theme-style-->
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
</head>

<body>


<%


%>

<!-- header -->
<div class="header-top">
	<div class="header-bottom">
		<%
			session.setAttribute("cmCount", request.getParameter("number"));
			HashMap<Integer, Integer> shopCart = (HashMap<Integer, Integer>)session.getAttribute("shopCart");
			if(shopCart == null){
				shopCart = new HashMap<Integer, Integer>();
			}

			if(session.getAttribute("cmId")!=null && session.getAttribute("cmCount")!=null){
				Collection cl = shopCart.values();
				Iterator it = shopCart.entrySet().iterator();
				int isRepeated = 0;
				while(it.hasNext()) {
					Map.Entry entry = (Map.Entry) it.next();
					if((Integer)session.getAttribute("cmId") == (Integer) entry.getKey()){
						isRepeated = 1;
						break;
					}
				}
				if(isRepeated == 0){
					shopCart.put(Integer.parseInt(session.getAttribute("cmId").toString()), Integer.parseInt(session.getAttribute("cmCount").toString()));
				}else{
					Integer amount = (Integer)(shopCart.get((Integer)session.getAttribute("cmId")));
					amount += (Integer)session.getAttribute("cmCount");
					shopCart.replace(shopCart.get((Integer)session.getAttribute("cmId")), amount);
				}
			}

			Integer amount = 0;
			Double total = 0.;

			Collection cl = shopCart.values();
			Iterator it = shopCart.entrySet().iterator();
			while(it.hasNext()){
				Map.Entry entry = (Map.Entry)it.next();

				double price = 0.;
				switch((Integer) entry.getKey()){
					case 1:
						price = 1200.;
						break;
					case 2:
						price = 1400.;
						break;
					default:
						price = 0.;
				}
				amount += (Integer)entry.getValue();
				total += price * (Integer) entry.getValue();
			}

			Integer cmAmount = new Integer(amount.intValue());
			Double totalPrice = new Double(total.doubleValue());
			session.setAttribute("cmAmount", amount);
			session.setAttribute("totalPrice", total);
			session.setAttribute("shopCart", shopCart);

			Double interview =new Double(23.4);
			session.setAttribute("interview", interview);
			Enumeration<?> enumeration = session.getAttributeNames();
			while (enumeration.hasMoreElements()) {
				String name = enumeration.nextElement().toString();
				// 根据键值取session中的值
				Object value = session.getAttribute(name);
				// 打印结果
				System.out.println(name+ "=" + value);
			}

		%>
		<div class="logo">
			<h1><a href="index(welcome).jsp">NiceKey</a></h1>
		</div>
		<!---->
		<div class="top-nav">
			<ul class="memenu skyblue"><li><a href="index(welcome).jsp">Home</a>
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
				<li><a href="#">Products</a>
				</li>
				<li class="grid"><a href="./aboutus.jsp">ABOUT US</a>
				</li>
				<li><a href="https://www.bupt.edu.cn/">FOUR</a></li>
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
<!-- check out -->
<div class="container">
	<div class="check-sec">
		<div class="col-md-3 cart-total">
			<a class="continue" href="product.html">Continue to basket</a>
			<div class="price-details">
				<h3>Price Details</h3>
				<span>Total</span>
				<span class="total1">

				</span>
				<span>Discount</span>
				<span class="total1">0%(Festival Offer)</span>
				<span>Delivery Charges</span>
				<span class="total1">0.00</span>
				<div class="clearfix"></div>
			</div>
			<ul class="total_price">
				<li class="last_price"> <h4>TOTAL</h4></li>
				<li class="last_price"><span><%=(Double)session.getAttribute("totalPrice")%></span></li>
			</ul>
			<div class="clearfix"></div>
			<div class="clearfix"></div>
			<script>

			</script>
			<a class="order" href="index(welcome).jsp" onclick="orderPlace()">Place Order
				<script>
					function orderPlace() {
						alert("Order placed successfully!");
					}
				</script>
				<form method="post" action="index(welcome).jsp">
					<input type=hidden>
				<%
					session.removeAttribute("totalPrice");
					session.removeAttribute("cmAmount");
					session.removeAttribute("shopCart");
				%>
				</form>
			</a>
			<div class="total-item">
				<h3>OPTIONS</h3>
				<h4>COUPONS</h4>
				<a class="cpns" href="#">Apply Coupons</a>
			</div>
		</div>
		<div class="col-md-9 cart-items">
			<h1>My Shopping Bag</h1>
			<!--<% %>-->
			<script>$(document).ready(function(c) {
				$('.close1').on('click', function(c){
					$('.cart-header').fadeOut('slow', function(c){
						$('.cart-header').remove();
					});
				});
			});
			</script>
			<div class="cart-header">
				<div class="close1"> </div>
				<div class="cart-sec simpleCart_shelfItem">
					<div class="cart-item cyc">
						<img src="images/p4.jpg" class="img-responsive" alt=""/>
					</div>
					<div class="cart-item-info">
						<h3>Electronic organ1</h3>
						<ul class="qty">
							<%
								Integer count1 = (Integer)shopCart.get(1);
								if((Integer)shopCart.get(1) == null){
									count1 = 0;
								}
							%>
							<li><p>Count : <%=count1%></p></li>
						</ul>
						<div class="delivery">
							<p>Service Charges : Rs.0</p>
							<span>Delivered in 2-3 bussiness days</span>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="clearfix"></div>

				</div>
			</div>
			<script>$(document).ready(function(c) {
				$('.close2').on('click', function(c){
					$('.cart-header2').fadeOut('slow', function(c){
						$('.cart-header2').remove();
					});
				});
			});
			</script>
			<div class="cart-header">
				<div class="close1"> </div>
				<div class="cart-sec simpleCart_shelfItem">
					<div class="cart-item cyc">
						<img src="images/p3.jpg" class="img-responsive" alt=""/>
					</div>
					<div class="cart-item-info">
						<h3>Electronic organ2</h3>
						<ul class="qty">
							<%
								Integer count2 = (Integer)shopCart.get(2);
								if((Integer)shopCart.get(2) == null){
									count2 = 0;
								}
							%>
							<li><p>Count : <%=count2%></p></li>
						</ul>
						<div class="delivery">
							<p>Service Charges : Rs.0</p>
							<span>Delivered in 2-3 bussiness days</span>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="clearfix"></div>

				</div>
			</div>
		</div>
		<div class="clearfix"> </div>
	</div>
</div>
<!-- //check out -->


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
	<h3 class="text-center"><strong>OUR PARTNERS</strong></h3>
	<p>
		<a href="https://www.apple.com.cn/"><img  src="imagesOfUs/partner/PA1.jpg" style="margin-left:80px;" width="200" height="100" class="img-rounded"/></a>
		<a href="https://www.qualcomm.cn/"><img  src="imagesOfUs/partner/PA2.jpg" style="margin-left:80px;" width="200" height="100" class="img-rounded"/></a>
		<a href="https://www.dolby.com/"><img  src="imagesOfUs/partner/PA3.jpg" style="margin-left:80px;" width="200" height="100" class="img-rounded"/></a>
		<a href="https://www.yamaha.com.cn/"><img href="https://www.yamaha.com.cn/" src="imagesOfUs/partner/PA4.jpg" style="margin-left:80px;" width="200" height="100" class="img-rounded"/></a>
		<a href="https://www.qualcomm.cn/"><img src="imagesOfUs/partner/PA5.jpg" style="margin-left:80px;"width="200" height="100" class="img-rounded"/></a>	</p>
</div>
<!---->
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