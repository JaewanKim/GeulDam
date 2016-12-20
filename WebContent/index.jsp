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
// (모달창에서 버튼 이벤트 실행 또는 닫기 후)모달창이 닫혔을 때 부모창에서 실행 할 함수
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
        console.log(response);   // response : 현재 로그인 상태를 나타내는 정보   // 앱에서 현재의 로그인 상태에 따라 동작.
                                //// FB.getLoginStatus().의 레퍼런스에서 더 자세한 내용이 참조 가능.
        if (response.status === 'connected') { // 페이스북을 통해서 로그인이 되어있음.
        	testAPI();
        } else if (response.status === 'not_authorized') { // 페이스북 로그인 O, 앱 로그인 X -> 권한 없음.
            document.getElementById('status').innerHTML = 'Please log into this app.';
        } else { // 페이스북 로그인 X -> 앱 로그인 여부 불확실.
            document.getElementById('status').innerHTML = 'Please log into Facebook.';
        }
    }

    function checkLoginState() {   // login 버튼에 대한 처리가 끝나면 호출됨.   // onlogin 핸들러
        FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
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
         <div id="fh5co-logo"><a href="index.jsp">글담</a></div>
         <nav id="fh5co-main-nav">
            <ul>
               <li><a href="#" data-nav-section="home">오늘의 단어</a></li>
               <li><a href="every.jsp#fh5co-portfolio" class="transition">모두의 글</a></li>
    <!--       <li><a href="mywriting.jsp#fh5co-portfolio" class="transition" >나의 글</a></li>  -->
    		   <li><a href="javascript:sendToMyWriting();" class="transition">나의 글</a></li>
               <li><a href="javascript:sendToScrap();" class="transition">담은 글</a></li>
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
                                <h4>2016년 11월 26일,<br>
                                    오늘의 단어</h4>
                     </div>
                     <h1 class="animate-box">계절</h1>
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
                           모두의 글
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
                  <h2 >모두의 글</h2><br>
                  <p class="fh5co-lead animate-box">하루에 한 번 글감을 제공합니다. <br>당신의 소중한 생각을 들려주세요.<br>많은 사람의 멋진 생각과 글을 만나고 소통할 수 있습니다.</p>
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
           <a class="viewingModalPopup" href="writingmodal.jsp?num=<%=num%>"> <!-- 이게 넘값을 보내는건데  -->
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
<!--  이건또 뭐람! -->
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