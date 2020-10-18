<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/docs.min.css" rel="stylesheet">
    <!-- Custom Theme files -->
    <!--theme style-->
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
</head>
<body>
<!--header-->
<script src="js/responsiveslides.min.js"></script>
<script>
    $(function () {
        $("#slider").responsiveSlides({
            auto: false,
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
                <li class="grid"><a href="./aboutus.jsp">About us</a>
                </li>
                <li class="grid"><a href="https://www.bupt.edu.cn/">FOUR</a></li>
            </ul>
            <div class="clearfix"> </div>
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
                <input type="submit" value="Log out">
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
</div>
<!---->
<div class="login_sec">
    <div class="container">
        <ol class="breadcrumb">
            <li><a href="index(welcome).jsp">Home</a></li>
            <li class="active">Register</li>
        </ol>
        <h2>Register</h2>
        <div class="col-md-6 log">
            <form method="post" action="./logup" >
                <h5>User Name</h5>
                <input type="text" value="" name="Name">
                <h5>Account</h5>
                <input type="text" value="" name="Account">
                <h5>Password</h5>
                <input type="text" value="" name="Password">
                <h5>Gender</h5>
                <input type="text" value="" name="Gender">
                <h5>Address</h5>
                <input type="text" value="" name="Address">
                <input type="submit" value="Register">
            </form>
            <a href="./login.jsp">Back to Login</a>

        </div>

        <div class="clearfix"></div>
    </div>
</div>
<!---->

<div class="subscribe">
    <div class="container">
        <h3>NiceKey</h3>
        <!--
        <form>
            <input type="text" class="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
            <input type="submit" value="Subscribe">
        </form>
        -->
    </div>
</div>

<!---->
<div class="footer">
    <p>
        <a href="https://www.apple.com.cn/"><img  src="imagesOfUs/partner/PA1.jpg" style="margin-left:80px;" width="200" height="100" class="img-rounded"/></a>
        <a href="https://www.qualcomm.cn/"><img  src="imagesOfUs/partner/PA2.jpg" style="margin-left:80px;" width="200" height="100" class="img-rounded"/></a>
        <a href="https://www.dolby.com/"><img  src="imagesOfUs/partner/PA3.jpg" style="margin-left:80px;" width="200" height="100" class="img-rounded"/></a>
        <a href="https://www.yamaha.com.cn/"><img href="https://www.yamaha.com.cn/" src="imagesOfUs/partner/PA4.jpg" style="margin-left:80px;" width="200" height="100" class="img-rounded"/></a>
        <a href="https://www.qualcomm.cn/"><img src="imagesOfUs/partner/PA5.jpg" style="margin-left:80px;"width="200" height="100" class="img-rounded"/></a>    </p>
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