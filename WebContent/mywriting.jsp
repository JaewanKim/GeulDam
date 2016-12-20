<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

  	

	
	<!-- Animate -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Flexslider -->
	<link rel="stylesheet" href="css/flexslider.css">
	<!-- Icomoon -->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<link rel="stylesheet" href="css/style.css">
        
    <link rel="stylesheet" href="css/list.css">
    <script src="js/pinterest.js"></script>


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>

    <!-- Start Facebook Login Script -->
<script>
	//var whoami;
    function statusChangeCallback(response) {
    	var divLogin = document.getElementById('login');
		var divLogout = document.getElementById('logout');
		
        console.log('statusChangeCallback');
        console.log(response);   // response : 현재 로그인 상태를 나타내는 정보   // 앱에서 현재의 로그인 상태에 따라 동작.
                                //// FB.getLoginStatus().의 레퍼런스에서 더 자세한 내용이 참조 가능.
        if (response.status === 'connected') { // 페이스북을 통해서 로그인이 되어있음.
            testAPI();
            login.style.display = "none";
            FB.api('/me', function(response) {
            	
            	var image = document.getElementById('image');
            	image.src = 'http://graph.facebook.com/' + response.id + '/picture';
            	var name = document.getElementById('name');
            	name.innerHTML = response.name;
            	alert(response.name);
            	
            });
            
        } else if (response.status === 'not_authorized') { // 페이스북 로그인 O, 앱 로그인 X -> 권한 없음.
            document.getElementById('status').innerHTML = 'Please log into this app.';
        } else { // 페이스북 로그인 X -> 앱 로그인 여부 불확실.
            document.getElementById('status').innerHTML = 'Please log into Facebook.';
            divLogin.style.display = "block";
			divLogout.style.display = "none";
        }
    }

    function checkLoginState() {   // login 버튼에 대한 처리가 끝나면 호출됨.   // onlogin 핸들러
    	var f = document.testForm;
    	FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
            alert("ddd");
        });
    }

    window.fbAsyncInit = function() {
        FB.init({
        appId      : '{1025925507533286}',   // 글담AppID
        cookie     : true,  // 쿠키가 세션을 참조할 수 있도록 허용
        xfbml      : true,  // 소셜 플러그인이 있으면 처리
        version    : 'v2.7' // 버전 2.7 사용
    });
        FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
        });
        var divLogin = document.getElementById('login');
		var divLogout = document.getElementById('logout');
        
        FB.Event.subscribe('auth.login', function(response) {
            document.location.reload();
        });
  
        FB.Event.subscribe('auth.logout', function(response) {
            document.location.reload();
      
        });
    };

    function testAPI() {
        console.log('Welcome!  Fetching your information.... ');
        FB.api('/me', function(response) {
            console.log('Successful login for: ' + response.name);
            var fb_name=document.getElementById("fb_name");
            fb_name.innerHTML =  "<h4>"+response.name+" 님</h4>";
            var image = document.getElementById("image");
            image.src = "http://graph.facebook.com/" + response.id + "/picture?type=square"
            document.getElementById('status').innerHTML = 'Thanks for logging in, ' + response.name + '!'; 
           whoami=response.id;
            console.log(whoami);
        });
    }
   
</script>
<!-- End Facebook Login Script -->
    
 <%
	String URL = "jdbc:mysql://localhost:3306/test?useSSL=false";
	String USER="root";
	String PASS="0000";
	
	Connection conn=null;
	Statement stmt=null;
	ResultSet rs = null;
%>
<body>
  <!-- Start Facebook Login Script -->
   <div id="fb-root"></div>
   <script>(function(d, s, id) {
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) return;
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.8&appId=1025925507533286";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));</script>
<!-- End Facebook Login Script -->
	
	<div id="fh5co-header">
		<div class="container">
			<!-- Mobile Toggle Menu Button -->
			<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
			<div id="fh5co-logo">
				<a href="index.jsp">글담</a>
			</div>
			<nav id="fh5co-main-nav">
				<ul>
					<li><a href="#" data-nav-section="home">오늘의 단어</a></li>
               <li><a href="every.jsp#fh5co-about" class="transition">모두의 글</a></li>
               <li><a href="#" class="transition" >나의 글</a></li>
               <li><a href="scrap.jsp#fh5co-about" class="transition">담은 글</a></li>
               <li> <a class="fb-login-button" scope="public_profile,email" data-max-rows="1" data-size="medium" data-show-faces="false" data-auto-logout-link="true" onlogin="checkLoginState();"></a></li>  
				</ul>
			</nav>
		</div>
	</div>
	<div id="fh5co-main">
		<div class="fh5co-overlay-mobile"></div>
		<div id="fh5co-home" class="js-fullheight" data-section="home">

			<div class="flexslider">
				
				<div class="fh5co-overlay"></div>
				<div class="fh5co-text">
					<div class="container">
						<div class="row text-center">
                            <div class="fh5co-go animate-box">
                                <h4>2016년 11월 26일,<br>
                                    오늘의 단어</h4>
							</div>
                            
							<h1 class="animate-box">계절</h1>
                            <br><br><br>
                                
                        <!-- button_write -->  
                        <div class="animate-box">
                            <a href="index.jsp">
                                <img  src="images/btn_write_a.png" style="WIDTH: 50pt; HEIGHT: 50pt" onmouseover="this.src='images/btn_write_b.png'" onmouseout="this.src='images/btn_write_a.png'" border="0"></a>
                            </div>
                         
						</div>
					</div>
				</div>
			  	<ul class="slides">
			   	<li style="background-image: url(images/slide_2.jpg);" data-stellar-background-ratio="0.5"></li>
			   	<li style="background-image: url(images/slide_1.jpg);" data-stellar-background-ratio="0.5"></li>
			   	<li style="background-image: url(images/slide_3.jpg);" data-stellar-background-ratio="0.5"></li>
			  	</ul>

			</div>
		</div>

<!-- Start my writing list-->
 <div id="fh5co-about" data-section="about">
        	<div class="my_info">
	          <ul id="countdown">
				  <li id="info">
				      <img id="image"/>
				  
			          <div id="fb_name" class="fh5co animate-box"><h4>이름<h4></div>
				  </li>
				  <li id="hours">
				    <div class="number">04</div>
				    <div class="label">내가 쓴 글</div>
				  </li>
				  <li id="minutes">
				    <div class="number">03</div>
				    <div class="label">공개글</div>
				  </li>
				  <li id="seconds">
				    <div class="number">01</div>
				    <div class="label">비공개글</div>
				  </li>
				  </ul>
				  </div>
			
</div>
		<div id="fh5co-portfolio" data-section="portfolio">
			<div class="container">
				<div class="row r-pb">
					<div class="col-md-8 col-md-offset-2 text-center section-heading">
						<h2 > 나의 글</h2><br>
						<p class="fh5co-lead animate-box">나의 글 - 내가 쓴 글을 열람하거나 수정할 수 있습니다.</p>
					</div>
				</div>
            </div>

        <section id="blog-landing">
        


<%
   
        String writingNum[] = new String[100];
try{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(URL, USER, PASS);
	stmt =conn.createStatement();
	String whoami =request.getParameter("whoami");
	
	rs=stmt.executeQuery("select writingNum from manager where  userNum='"+whoami+ "' and writingType=1"); // 내가 쓴글 type =1;
	int i = 0;
	while(rs.next()){
		writingNum[i]=rs.getString("writingNum");
		System.out.println(writingNum[i]);
		i++;
	}
	
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		if(rs!=null) try{ rs.close(); } catch(SQLException ex){}
		if(stmt != null) try{ stmt.close(); } catch(SQLException ex){}
		if(conn!=null) try{ conn.close(); } catch(SQLException ex){}
	}

%>
<% 
try{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(URL, USER, PASS);
	stmt =conn.createStatement();
	int i = 0;
	
	rs=stmt.executeQuery("select writingContext from writing where  writingNum='"+writingNum[i]+"'");
	while(rs.next()){
		System.out.println(writingNum[i]);
		String context=rs.getString("writingContext");
		System.out.println(context);
		%>
		<article class="white-panel" >
        <a class="viewingModalPopup" href="writingmodal.jsp?num=<%=writingNum[i]%>">
   			<%= context %>
        </article>
<%
		i++;
		rs=stmt.executeQuery("select writingContext from writing where  writingNum="+writingNum[i]);
	}
	
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		if(rs!=null) try{ rs.close(); } catch(SQLException ex){}
		if(stmt != null) try{ stmt.close(); } catch(SQLException ex){}
		if(conn!=null) try{ conn.close(); } catch(SQLException ex){}
	}
%>

        </section>
    </div>
			</div>
	
<!-- End my writing list-->
	<div id="fh5co-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-6 animate-box">
						<div class="fh5co-footer-widget">
							<p>&copy; Fotografy Free HTML5 Template. All Rights Reserved.</p>
							<p>Designed by <a href="http://freehtml5.co/">FREEHTML5.co</a> Demo Images: <a href="http://unsplash.com/" target="_blank">Unsplash</a> &amp; <a href="http://pexels.com/" target="_blank">Pexels</a></p>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 animate-box">
						<div class="fh5co-footer-widget">
							<ul class="fh5co-social pull-right">
								<li>
									<a href="#"><i class="icon-twitter"></i></a>
								</li>
								<li>
									<a href="#"><i class="icon-facebook"></i></a>
								</li>
								<li>
									<a href="#"><i class="icon-vine"></i></a>
								</li>
								<li>
									<a href="#"><i class="icon-behance"></i></a>
								</li>
								<li>
									<a href="#"><i class="icon-google"></i></a>
								</li>
								<li>
									<a href="#"><i class="icon-vimeo"></i></a>
								</li>
							</ul>
						<div class="fh5co-footer-widget">
					</div>
				</div>
			</div>
		</div>
            </div>

	</div> <!-- END fh5co-page -->

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>

<!-- Start list -->
    <!-- Bootstrap core JavaScript
    ================================================== --> 
    <!-- Placed at the end of the document so the pages load faster --> 
    <script src="js/pinterest.js"></script> 
    <script>
        $(document).ready(function() {

            $('#blog-landing').pinterest_grid({
                no_columns: 3,
                padding_x: 10,
                padding_y: 10,
                margin_bottom: 50,
                single_column_breakpoint: 700
            });

        });
    </script>
</body>

	<script type="text/javascript">
	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-36251023-1']);
	  _gaq.push(['_setDomainName', 'jqueryscript.net']);
	  _gaq.push(['_trackPageview']);
	
	  (function() {
	    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();
	</script>
<!-- End list -->
</html>