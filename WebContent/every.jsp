<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>�۴� - ������ ���.</title>
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

    <!-- Start Facebook Login Script -->
        <style type ="text/css">
        	.subject{
        		
        	}
        	.context{
        	
        	}
        </style>
    </head>
<script>
    function statusChangeCallback(response) {
        console.log('statusChangeCallback');
        console.log(response);   // response : ���� �α��� ���¸� ��Ÿ���� ����   // �ۿ��� ������ �α��� ���¿� ���� ����.
                                //// FB.getLoginStatus().�� ���۷������� �� �ڼ��� ������ ���� ����.
        if (response.status === 'connected') { // ���̽����� ���ؼ� �α����� �Ǿ�����.
            testAPI();
        } else if (response.status === 'not_authorized') { // ���̽��� �α��� O, �� �α��� X -> ���� ����.
            document.getElementById('status').innerHTML = 'Please log into this app.';
        } else { // ���̽��� �α��� X -> �� �α��� ���� ��Ȯ��.
            document.getElementById('status').innerHTML = 'Please log into Facebook.';
        }
    }

    function checkLoginState() {   // login ��ư�� ���� ó���� ������ ȣ���.   // onlogin �ڵ鷯
        FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
        });
    }

    window.fbAsyncInit = function() {
        FB.init({
        appId      : '{1025925507533286}',   // �۴�AppID
        cookie     : true,  // ��Ű�� ������ ������ �� �ֵ��� ���
        xfbml      : true,  // �Ҽ� �÷������� ������ ó��
        version    : 'v2.7' // ���� 2.7 ���
    });
        FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
        });
    };

    function testAPI() {
        console.log('Welcome!  Fetching your information.... ');
        FB.api('/me', function(response) {
            console.log('Successful login for: ' + response.name);
            document.getElementById('status').innerHTML = 'Thanks for logging in, ' + response.name + '!';
        });
    }
</script>
<!-- End Facebook Login Script -->    
        
    
	<body>
	
      
        
        
	<div id="fh5co-header">
		<div class="container">
			<!-- Mobile Toggle Menu Button -->
			<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
			<div id="fh5co-logo">
				<a href="index.jsp">�۴�</a>
			</div>
			<nav id="fh5co-main-nav">
				<ul>
					<li><a href="#" data-nav-section="home">������ �ܾ�</a></li>
               <li><a href="every.jsp#fh5co-portfolio" class="transition">����� ��</a></li>
               <li><a href="mywriting.jsp#fh5co-portfolio" class="transition" >���� ��</a></li>
               <li><a href="scrap.jsp#fh5co-portfolio" class="transition">���� ��</a></li>
                <a href="#" onclick="FB.login();" class="ghost-button">�α���</a>
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
                                <h4>2016�� 11�� 26��,<br>
                                    ������ �ܾ�</h4>
							</div>
                            
							<h1 class="animate-box">����</h1>
                            <br><br><br>
                                
                        <!-- button_write -->  
                        <div class="animate-box">
                            <a href="��ũ���ּ�">
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
		<div id="fh5co-portfolio" data-section="portfolio">
			<div class="container">
				<div class="row r-pb">
					<div class="col-md-8 col-md-offset-2 text-center section-heading">
						<h2>����� ��</h2><br>
						<p class="fh5co-lead animate-box">�۰��� �����ϸ� �ش� �۰��� ����� ���� ������ �� �ֽ��ϴ�.</p>
					</div>
				</div>
            </div>

        <section id="blog-landing">
<%
	String URL = "jdbc:mysql://localhost:3306/test?useSSL=false";
	String USER="root";
	String PASS="0000";

	Connection conn=null;
	Statement stmt=null;
	ResultSet rs = null;
	int ClickedNum=1;
%>
<%
     try{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(URL, USER, PASS);
	stmt =conn.createStatement();
	rs=stmt.executeQuery("select * from title");
	String date = "";
	while(rs.next()){
		String subject=rs.getString("subject");
		date=rs.getString("date");
			
%>       
            <article class="white-panel-title">
                <a class="transition" href="forsubject.jsp?date=<%=date %>#fh5co-portfolio"> <h1><%=subject %></h1></a>
            </article> 
  
<% 
	}
     }catch(SQLException e){
		e.printStackTrace();
	}finally{
		if(rs!=null) try{ rs.close(); } catch(SQLException ex){}
		if(stmt != null) try{ stmt.close(); } catch(SQLException ex){}
		if(conn!=null) try{ conn.close(); } catch(SQLException ex){}
	}
	
%>
</a>
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
                no_columns: 4,
                padding_x: 10,
                padding_y: 10,
                margin_bottom: 150,
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
	  });
	</script>
<!-- End list -->
</html>