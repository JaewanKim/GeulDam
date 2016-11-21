<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>글담</title>

    <!-- Start 지혜언니가 넣은 코드라 어떤 용도인지 모름 //언니 주석 좀 달아주세요 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-beta1/jquery.js"></script>
	<script src="./js/script.js"></script>
	<link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/list.css">

    <!--    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">-->
    
    <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <!-- End 지혜언니가 넣은 코드라 어떤 용도인지 모름 //언니 주석 좀 달아주세요 -->
    
    <!-- Start Modal CSS -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/writingModal.css">
    <link rel="stylesheet" href="./css/custombox.min.css">
    <!-- End Modal CSS -->
</head>

<!-- Start Facebook Login Script -->
	<script>
		function statusChangeCallback(response) {
			console.log('statusChangeCallback');
			console.log(response);	// response : 현재 로그인 상태를 나타내는 정보	// 앱에서 현재의 로그인 상태에 따라 동작.
									//// FB.getLoginStatus().의 레퍼런스에서 더 자세한 내용이 참조 가능.
			if (response.status === 'connected') { // 페이스북을 통해서 로그인이 되어있음.
				testAPI();
			} else if (response.status === 'not_authorized') { // 페이스북 로그인 O, 앱 로그인 X -> 권한 없음.
				document.getElementById('status').innerHTML = 'Please log into this app.';
			} else { // 페이스북 로그인 X -> 앱 로그인 여부 불확실.
				document.getElementById('status').innerHTML = 'Please log into Facebook.';
			}
		}
	
		function checkLoginState() {	// login 버튼에 대한 처리가 끝나면 호출됨.	// onlogin 핸들러
			FB.getLoginStatus(function(response) {
				statusChangeCallback(response);
			});
		}
	
		window.fbAsyncInit = function() {
			FB.init({
			appId      : '{1025925507533286}',	// 글담AppID
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
				console.log('Successful login for: ' + response.name);
				document.getElementById('status').innerHTML = 'Thanks for logging in, ' + response.name + '!';
			});
		}
	</script>
<!-- End Facebook Login Script -->

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

    <!-- Start header -Today's Word- -->
	<header>
		<div id="navigation">
            <div class="heading">계절</div>
            <div class="text">오늘의 단어</div>
        </div>
	</header>
    <!-- End header -Today's Word- -->
    
    <!-- Start Navigation Bar -->
    <span class="toggle-button">
        <div class="menu-bar menu-bar-top"></div>
        <div class="menu-bar menu-bar-middle"></div>
        <div class="menu-bar menu-bar-bottom"></div>
    </span>
    <div class="menu-wrap">
        <div class="menu-sidebar">
            <div align = center>
            	<div class="fb-login-button" scope="public_profile,email" data-max-rows="1" data-size="medium" data-show-faces="true" data-auto-logout-link="true" onlogin="checkLoginState();"></div>
            </div>

            <ul class="menu" align="center">
                <li><a href="#">오늘의 단어</a></li>
                <li><a href="#">모두의 글</a></li>
                <li class="menu-item-has-children"><a href="mywriting.html">나의 글</a>
                    <span class="sidebar-menu-arrow"></span>
                    <ul class="sub-menu">
                        <li><a href="#">이거</a></li>
                        <li><a href="#">필요</a></li>
                        <li><a href="#">없겠지?</a></li>
                    </ul>
                </li>
                <li><a href="#">담은 글</a></li>
                <li><a href="#">설정</a></li>
            </ul>			
        </div>
    </div>
    <!-- End Navigation Bar -->
    
    <!-- Start Content -->
	<div class="wrapper">
		<section class="text" align=center>
			<p>2016년 11월 6일,<br>오늘의 키워드</p>
            <h1 class="heading">계절</h1>
            <br><br><br><br>
            <p>세상에는 멋진 생각들이 많고,<br>우리는 누구나 글을 쓸 수 있습니다.</p>
            <br><br><br>
			<!-- Delete <form> tag /Unnecessary -->
                <a class="writingModalPopup" href="#modal">
                    <img src="./img/button_write.png" align="absmiddle">
                </a>
                <!-- &nbsp; /Unnecessary -->
		</section>
	</div>
    <!-- End Content -->
    
    <!-- Start Modal -->
    <div id="modal" class="modal-demo">
        <div class="modalbox">
            <form>
                <button type="button" class="btn_exit" onclick="Custombox.close();">닫기</button>
                <span class="keyword">키워드</span>
                <button type="submit" class="btn_submit" onclick="Custombox.submit();">완료</button> <!-- TODO : To make function submit() /alert --> 
                <hr/>
                <select name="sel_font">
                    <option value="">폰트</option>
                    <option value="1">폰트1</option>
                    <option value="2">폰트2</option>
                    <option value="3">폰트3</option>
                </select>
                &nbsp;&nbsp;&nbsp;
                <select name="sel_font_size">
                    <option value="">폰트 크기</option>
                    <option value="10">10</option>
                    <option value="12">12</option>
                    <option value="14">14</option>
                </select>
                &nbsp;&nbsp;&nbsp;
                <input type="radio" name="sort" id="left_align"/>
                <label for="left_align"><img src=""/></label>
                <input type="radio" name="sort" id="center_align"/>
                <label for="center_align"><img src=""/></label>   <input type="radio" name="sort" id="right_align"/>
                <label for="right_align"><img src=""/></label>
                글 정렬
                <hr/>
                <textarea class="js-textarea-minrows form-control" placeholder="당신의 생각을 들려주세요.." rows="10"></textarea>
            </form>
        </div>
    </div>    
    <!-- End Modal -->
 
<!--
        <div class="list">
		<section class="text" align=center>
			<p>2016년 11월 6일,<br>오늘의 키워드</p>
            <h1 class="heading">나의 글</h1>
            <br><br><br><br>
            <p>세상에는 멋진 생각들이 많고,<br>우리는 누구나 글을 쓸 수 있습니다.</p>
            </section>
	</div>
-->
    
    <div class="every">
        <br>
        <h1 style="margin-top:150px" align="center">모두의 글</h1>

        <section id="blog-landing">
            <article class="white-panel"> 
                <p>눈먼 손으로<br>
                나는 삶을 만져보았네<br>
                그건 가시 투성이였어<br>
                가시투성이 삶의 온몸을 만지면서<br>
                나는 미소지었지<br>
                <br>
                이토록 가시가 많으니<br>
                곧 장미꽃이 피겠구나라고<br>

                <br><br>
                장미와 가시 -  김승희</p>
            </article>

            <article class="white-panel"> 
                <p>사랑의 빛 위로 곤충들이 만들어 놓은<br>
                투명한 탑 위로 이슬 엊힌 거밀줄 위로<br>
                사랑의 기억이 흐려져 간다<br>
                <br><br>

                가을 나비들의 날개짓 첫눈 속에 파 묻힌<br>
                생각들 지켜지지 못한 그 많은 약속들 위로<br>
                사랑의 기억이 흐려져 간다<br>
                <br><br>

                한때는 모든 것이 여기에 있었다<br>
                그렇다, 나는 삶을 불태우고 싶었다<br>
                다른 모든 것이 하찮은 것이 되어 버릴 때까지<br>
                다만 그것들은 얼마나 빨리 내게서 멀어졌는가<br>

                <br><br>
                사랑의 기억이 흐려져 간다<br>
                여기 ,거기, 그리곤 모든 곳에<br>
                멀리,  언제나 더 멀리에<br>

                <br><br>
                말해봐, 이 모든 것들 위해<br>
                넌 아직도 내 생각을 하고 있는가<br>

                    <br><br><br>

                사랑의 기억은 흐려져 간다  -  류시화</p>
            </article>

            <article class="white-panel"> 
                <p>찾아 나서지 않기로 했다<br>
                가기만 하면 가지 못할 일도 아니다<br>
                그냥 두고 보기로 했다<br><br><br>


                그리움 안고 지내기로 했다<br>
                들려오는 말에 의하면 그대가 많이 변했다니<br>
                세월 따라 변하는 건 탓할 건 못되지만<br><br>


                예전의 그대가 아닌 그 낭패를<br>
                감당할 자신이 없기에<br>
                멀리서 멀리서만 그대 이름을 부르기로 했다<br><br><br>



                멀리서만 - 이정하</p>
            </article>

            <article class="white-panel"> 
                <p>눈사랑은 눈 멀고 귀 먹고<br>
                그래서 멍멍히 괴어 있는 물이 되는 일이다.<br>
                물이 되어 그대의 그릇에 정갈히 담기는 일이다.<br><br>

                사랑은 눈 뜨이고 귀 열리고 <br>
                그래서 총총히 빛나는별이 되는 일이다.<br>
                별이 되어 그대 밤 하늘을 <br>
                잠 안자고 지키는 일이다.<br><br>

                사랑은 꿈이다가 생시이다가 그 전부이다가<br>
                마침내 아무 것도 아닌 것이 되는 일이다.<br><br>

                아무 것도 아닌 것이 되어<br>
                그대의 한 부름을<br>
                고즈넉이 기다리는 일이다.<br><br><br>



                그대의 별이 되어  - 허영자</p>
            </article>

            <article class="white-panel"> 
                <p>눈먼 손으로<br>
                나는 삶을 만져보았네<br>
                그건 가시 투성이였어<br>
                가시투성이 삶의 온몸을 만지면서<br>
                나는 미소지었지<br>
                <br>
                이토록 가시가 많으니<br>
                곧 장미꽃이 피겠구나라고<br>

                <br><br>
                장미와 가시 -  김승희</p>
            </article>

            <article class="white-panel"> 
                <p>눈먼 손으로<br>
                나는 삶을 만져보았네<br>
                그건 가시 투성이였어<br>
                가시투성이 삶의 온몸을 만지면서<br>
                나는 미소지었지<br>
                <br>
                이토록 가시가 많으니<br>
                곧 장미꽃이 피겠구나라고<br>

                <br><br>
                장미와 가시 -  김승희</p>
            </article>

            <article class="white-panel"> 
                <p>눈먼 손으로<br>
                나는 삶을 만져보았네<br>
                그건 가시 투성이였어<br>
                가시투성이 삶의 온몸을 만지면서<br>
                나는 미소지었지<br>
                <br>
                이토록 가시가 많으니<br>
                곧 장미꽃이 피겠구나라고<br>

                <br><br>
                장미와 가시 -  김승희</p>
            </article>

            <article class="white-panel"> 
                <p>눈먼 손으로<br>
                나는 삶을 만져보았네<br>
                그건 가시 투성이였어<br>
                가시투성이 삶의 온몸을 만지면서<br>
                나는 미소지었지<br>
                <br>
                이토록 가시가 많으니<br>
                곧 장미꽃이 피겠구나라고<br>

                <br><br>
                장미와 가시 -  김승희</p>
            </article>

            <article class="white-panel"> 
                <p>눈먼 손으로<br>
                나는 삶을 만져보았네<br>
                그건 가시 투성이였어<br>
                가시투성이 삶의 온몸을 만지면서<br>
                나는 미소지었지<br>
                <br>
                이토록 가시가 많으니<br>
                곧 장미꽃이 피겠구나라고<br>

                <br><br>
                장미와 가시 -  김승희</p>
            </article>
        </section>
    </div>
    
    <!-- Start Auto-Grow-Of-TextArea JavaScript -->
    <script src="//code.jquery.com/jquery-3.1.0.slim.min.js"></script>
    <script src="./js/jquery.autoresize.min.js"></script>
    <!-- End Auto-Grow-Of-TextArea JavaScript -->    

    <!-- Start Modal JavaScript -->
    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    
    <script src="./js/custombox.min.js"></script>
    <script src="./js/legacy.min.js"></script>
    <script src="./js/writingModal.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <!-- End Modal JavaScript -->   
    
<!-- Start 지혜언니가 넣은 코드라 어떤 용도인지 모름 //언니 주석 좀 달아주세요 -->
    <!-- Bootstrap core JavaScript
    ================================================== --> 
    <!-- Placed at the end of the document so the pages load faster --> 
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="./js/pinterest_grid.js"></script> 
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
<!-- End 지혜언니가 넣은 코드라 어떤 용도인지 모름 //언니 주석 좀 달아주세요 -->
</body>

<!-- Start 지혜언니가 넣은 코드라 어떤 용도인지 모름 //언니 주석 좀 달아주세요 -->
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
<!-- End 지혜언니가 넣은 코드라 어떤 용도인지 모름 //언니 주석 좀 달아주세요 -->
</html>