<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
    <meta name="author" content="FREEHTML5.CO" />
    
    
<head>
	<title>Insert title here</title>
   
   <!-- JQuery loaidng url -->
   <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
   
<!-- Facebook login button font -->    
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300' rel='stylesheet' type='text/css'>

<!-- Bootstrap Animate css -->
    <link rel="stylesheet" href="css/animate.css">
<!-- Main Image slider css -->
    <link rel="stylesheet" href="css/flexslider.css">
<!-- Main Arrow button css -->
    <link rel="stylesheet" href="css/icomoon.css">
<!-- Bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
    
<!-- Writing list css/js -->    
    <link rel="stylesheet" href="css/list.css">
    <script src="js/pinterest.js"></script>


<!-- Modernizr JS -->
    <script src="js/modernizr-2.6.2.min.js"></script>
<script language="javascript"> 

function modalPop(url){ 
var popOptions = "dialogWidth: 1000px; dialogHeight: 500px; center: yes; resizable: no; status: no; scroll: no;"; 
var vReturn = window.showModalDialog(url, window,  popOptions ); 
  
if (vReturn == 'ok'){
// (���â���� ��ư �̺�Ʈ ���� �Ǵ� �ݱ� ��)���â�� ������ �� �θ�â���� ���� �� �Լ�
location.reload(); 
return;
}else{
return;
}
	return vReturn;
} 
</script> 
</head>
<!-- Start Facebook Login Script -->


<script>
	var whoami;
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
            console.log('Successful login for: ' + response.name + response.id);
            whoami=response.id;
            console.log(whoami);
            //document.getElementById('status').innerHTML = 'Thanks for logging in, ' + response.name + '!';
        });
     
    }
    
    function sendToMyWriting(){
		console.log(whoami);
    	location.href="mywriting.jsp?whoami="+whoami+"#fh5co-portfolio";
    }
    function sendToScrap(){
		console.log(whoami);
    	location.href="scrap.jsp?whoami="+whoami+"#fh5co-portfolio";
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
	int ClickedNum=1;
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
         <div id="fh5co-logo"><a href="index.jsp">�۴�</a></div>
         <nav id="fh5co-main-nav">
            <ul>
               <li><a href="#" data-nav-section="home">������ �ܾ�</a></li>
               <li><a href="every.jsp#fh5co-portfolio" class="transition">����� ��</a></li>
    <!--       <li><a href="mywriting.jsp#fh5co-portfolio" class="transition" >���� ��</a></li>  -->
    		   <li><a href="javascript:sendToMyWriting();" class="transition">���� ��</a></li>
               <li><a href="javascript:sendToScrap();" class="transition">���� ��</a></li>
               <li> <a class="fb-login-button" scope="public_profile,email" data-max-rows="1" data-size="medium" data-show-faces="false" data-auto-logout-link="true" onlogin="checkLoginState();"></a></li>  
             
         </nav>
          
      </div>
   </div>
    <!-- End Navigation Bar -->

<!-- Start Main Page -->
    <div id="fh5co-main">
    <!-- Start Main -->
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
                            
                            <!-- Start writingModal Button -->  
                            <div class="animate-box">
                                <a class="writingModalPopup" href="javascript:modalPop('modal.jsp');">
                                    <img src="images/btn_write_a.png" style="WIDTH: 50pt; HEIGHT: 50pt" onmouseover="this.src='images/btn_write_b.png'" onmouseout="this.src='images/btn_write_a.png'" border="0">
                                </a>
                            </div><p>
                            <!-- End writingModal Button -->   
    
                            <div class="fh5co-go animate-box">
                        <a href="#fh5co-portfolio" class="js-fh5co-next">
                           ����� ��
                           <span><i class="icon-arrow-down2"></i></span>
                        </a>
                     </div>
                  </div>
               </div>
            </div>

              <ul class="slides">
                    <li style="background-image: url(images/slide_3.jpg);" data-stellar-background-ratio="0.5"></li>
                    <li style="background-image: url(images/slide_1.jpg);" data-stellar-background-ratio="0.5"></li>
                    <li style="background-image: url(images/slide_2.jpg);" data-stellar-background-ratio="0.5"></li>
              </ul>

         </div>
      </div>
    <!-- End Main -->

    <!-- Start Everyone's Writing list -->
      <div id="fh5co-portfolio" data-section="portfolio">
         <div class="container">
            <div class="row r-pb">
               <div class="col-md-8 col-md-offset-2 text-center section-heading">
                  <h2 >����� ��</h2><br>
                  <p class="fh5co-lead animate-box">�Ϸ翡 �� �� �۰��� �����մϴ�. <br>����� ������ ������ ����ּ���.<br>���� ����� ���� ������ ���� ������ ������ �� �ֽ��ϴ�.</p>
               </div>
            </div>
            </div>

        <section id="blog-landing">

        <%
        final StringBuilder builder = new StringBuilder();
try{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(URL, USER, PASS);
	stmt =conn.createStatement();
	rs=stmt.executeQuery("select* from writing");
	
	while(rs.next()){
		String context=rs.getString("writingContext");
		String font=rs.getString("writingFont");
		int num = rs.getInt("writingNum");
%>
           <article class="white-panel" >
           <a class="viewingModalPopup" href="writingmodal.jsp?num=<%=num%>"> <!-- �̰� �Ѱ��� �����°ǵ�  -->
      			<%= context %>
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
<!--  �̰Ƕ� ����! -->
        </section>
    </div>

    <!-- End Everyone's Writing list -->
</div>
<!-- End Main Page -->

<script>
$(document).ready(function(){
    $("#slide").load("slide.jsp");
});
$(document).ready(function(){
    $("#footer").load("footer.jsp");
});
</script>
<div id="slide"><div>
<div id="footer"></div>

    <!-- Start Auto-Grow-Of-TextArea JavaScript -->
    <script src="//code.jquery.com/jquery-3.1.0.slim.min.js"></script>
    <script src="./js/jquery.autoresize.min.js"></script>
    <!-- End Auto-Grow-Of-TextArea JavaScript -->    
         

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

<!-- Start list Script -->
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
<!-- End list Script -->
</html>