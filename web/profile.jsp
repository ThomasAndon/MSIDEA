<!doctype html>
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>NiceKey</title>
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

  .cif-inputbox {
  margin-top: 25px;
}
  </style>
  <link href="css/docs.min.css" rel="stylesheet">
  <!-- Custom Theme files -->
  <!--theme style-->
  <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
  <!-- <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /> -->
  <link href="css/bootstrap-3.4.0.css" rel="stylesheet" type="text/css">
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
  <link rel="stylesheet" href="css/profilepage.css">
  <!-- /start menu -->
  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>

<body>
<!--header-->
<script src="js/responsiveslides.min.js"></script> <script>
    $(function () {
        $("#slider").responsiveSlides({
            auto: true,
            nav: true,
            speed: 500,
            namespace: "callbacks",
            pager: false,
        });
    });
</script>




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
        <li class="grid" onclick="carr()"><a href="https://www.bupt.edu.cn/">FOUR</a></li>
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
      <form method="post" action="${pageContext.request.contextPath}/logout">
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
        if(a=="ok"){
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

<!---->
<!-- <script src="js/bootstrap.js"> </script> -->
<script src="js/bootstrap-3.4.0.js"></script>
<script type="text/jsp">
  <%String account=(String)session.getAttribute("username");%>
  <%String realname=(String)session.getAttribute("realName");%>
  <%String gender=(String)session.getAttribute("gender");%>
  <%String addr=(String)session.getAttribute("address");%>
  
  <%String password=(String)session.getAttribute("password");%>
</script>

<script type="text/jsp">
<!--  此处加入检测页面是否有Attribute需要提示内容。-->
  <%String msg = (String)session.getAttribute("message");%>
</script>


<script type="javascript">
  if(<%=msg%> != null) {
      alert(<%=msg%>);
  }
</script>

<script type="text/jsp">
<!--此处将msg信息归零-->
  <%
  msg = null;
  %>
</script>



  <script src="js/Profile.js"></script>

<div id="profileWrap">
  <div id="borderArea">
    <div id="ContentPanel">
      <h2 id="ProfileTitle">My Profile</h2>
      <br>
      <br>
      <div class="info">Your account:
        <div class="infocontent"><%=account%></div>
      </div>
      <div class="info">Your Real Name:
        <div class="infocontent"><%=realname%></div>
      </div>
      <div class="info">Your gender:
        <div class="infocontent"><%=gender%></div>
      </div>
      <div class="info">Your address:
        <div class="infocontent"><%=addr%></div>
      </div>
    </div>
    <br>
    <button type="button" class="btn btn-warning" id="changepibutton" onClick="showorclose('changeinfobox',1)">Change Profile Info</button>
    <button type="button" class="btn btn-warning" id="changepwbutton" onclick="showorclose('changepwbox', 1)">Change Password</button>
  </div>
</div>

<div id="changeinfobox" class="changebox">
  <button type="button" class="btn btn-danger" id="closechangeinfobtn" onClick="showorclose('changeinfobox',0)">Close</button>
<div class="cif-inputbox" id="pwcheck">
    <p class="prompt">We need to verify your password</p>
    <input type="password" width="50px" id="veripw">
    <button onClick="showchangebar(<%=password%>)">Verify</button>
    <br>
    <p id="rightorwrong">Waiting for verification...</p>
  </div>
  <form method="post" action="${pageContext.request.contextPath}/changepi">
    <div class="cif-inputbox" id="showchange" >
      <p>Change your real name "<%=realname%>" to:</p>
      <input id="changern" name="rninput">
      <p>Change your address "<%=addr%>" to:</p>
      <input id="changeaddr" name="addrinput">
      <br>
      <br>
      <input  type="submit" class="btn btn-warning submitbtn" value="Submit">
    </div>
  </form>

</div>

<div id="changepwbox" class="changebox">
  <button type="button" class="btn btn-danger" id="closechangepwbtn" onClick="showorclose('changepwbox',0)">Close</button>
  <form method="post" action="${pageContext.request.contextPath}/changepw">
    <div id='check-and-new'>
      <p class="changepwprompt">Enter your original password:</p>
      <input type="password" name="enter-ori">
      <p class="changepwprompt">Enter your new password:</p>
      <input name="enter-new" type='password'>
    </div>
    <div id='submit-changepw-btn'>
      <input type='submit' value='Submit' class='btn btn-success' >
    </div>
    </form>
</div>

<%--
<!--
<div class = "profile">
  <h3 class="profiletitle"><a href="css/style.css"> &nbsp; &nbsp;My Profile:</a></h3>
  <div class = "profilecontent">
	  <%String account=(String)session.getAttribute("username");%>
    <p class=paccount">Your Account: <%=account%></p>
</div>
	  <div class = "realname">
	  <%String realname=(String)session.getAttribute("realName");%>
    <p class=prealname">Your Name: <%=realname%></p>
	</div>
	<div class = "gender">
	  <%String gender=(String)session.getAttribute("gender");%>
    <p class="pgender">Your gender: <%=gender%></p>
	</div>
	<div class = "address">
	  <%String addr=(String)session.getAttribute("address");%>
    <p class=paddr">Your Address: <%=addr%></p>
	</div>
</div>

-->--%>

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
