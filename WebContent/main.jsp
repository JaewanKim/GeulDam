<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>�۴�</title>

    <!-- Start ������ϰ� ���� �ڵ�� � �뵵���� �� //��� �ּ� �� �޾��ּ��� -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-beta1/jquery.js"></script>
	<script src="./js/script.js"></script>
	<link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/list.css">

    <!--    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">-->
    
    <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <!-- End ������ϰ� ���� �ڵ�� � �뵵���� �� //��� �ּ� �� �޾��ּ��� -->
    
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
			console.log(response);	// response : ���� �α��� ���¸� ��Ÿ���� ����	// �ۿ��� ������ �α��� ���¿� ���� ����.
									//// FB.getLoginStatus().�� ���۷������� �� �ڼ��� ������ ���� ����.
			if (response.status === 'connected') { // ���̽����� ���ؼ� �α����� �Ǿ�����.
				testAPI();
			} else if (response.status === 'not_authorized') { // ���̽��� �α��� O, �� �α��� X -> ���� ����.
				document.getElementById('status').innerHTML = 'Please log into this app.';
			} else { // ���̽��� �α��� X -> �� �α��� ���� ��Ȯ��.
				document.getElementById('status').innerHTML = 'Please log into Facebook.';
			}
		}
	
		function checkLoginState() {	// login ��ư�� ���� ó���� ������ ȣ���.	// onlogin �ڵ鷯
			FB.getLoginStatus(function(response) {
				statusChangeCallback(response);
			});
		}
	
		window.fbAsyncInit = function() {
			FB.init({
			appId      : '{1025925507533286}',	// �۴�AppID
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
            <div class="heading">����</div>
            <div class="text">������ �ܾ�</div>
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
                <li><a href="#">������ �ܾ�</a></li>
                <li><a href="#">����� ��</a></li>
                <li class="menu-item-has-children"><a href="mywriting.html">���� ��</a>
                    <span class="sidebar-menu-arrow"></span>
                    <ul class="sub-menu">
                        <li><a href="#">�̰�</a></li>
                        <li><a href="#">�ʿ�</a></li>
                        <li><a href="#">������?</a></li>
                    </ul>
                </li>
                <li><a href="#">���� ��</a></li>
                <li><a href="#">����</a></li>
            </ul>			
        </div>
    </div>
    <!-- End Navigation Bar -->
    
    <!-- Start Content -->
	<div class="wrapper">
		<section class="text" align=center>
			<p>2016�� 11�� 6��,<br>������ Ű����</p>
            <h1 class="heading">����</h1>
            <br><br><br><br>
            <p>���󿡴� ���� �������� ����,<br>�츮�� ������ ���� �� �� �ֽ��ϴ�.</p>
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
                <button type="button" class="btn_exit" onclick="Custombox.close();">�ݱ�</button>
                <span class="keyword">Ű����</span>
                <button type="submit" class="btn_submit" onclick="Custombox.submit();">�Ϸ�</button> <!-- TODO : To make function submit() /alert --> 
                <hr/>
                <select name="sel_font">
                    <option value="">��Ʈ</option>
                    <option value="1">��Ʈ1</option>
                    <option value="2">��Ʈ2</option>
                    <option value="3">��Ʈ3</option>
                </select>
                &nbsp;&nbsp;&nbsp;
                <select name="sel_font_size">
                    <option value="">��Ʈ ũ��</option>
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
                �� ����
                <hr/>
                <textarea class="js-textarea-minrows form-control" placeholder="����� ������ ����ּ���.." rows="10"></textarea>
            </form>
        </div>
    </div>    
    <!-- End Modal -->
 
<!--
        <div class="list">
		<section class="text" align=center>
			<p>2016�� 11�� 6��,<br>������ Ű����</p>
            <h1 class="heading">���� ��</h1>
            <br><br><br><br>
            <p>���󿡴� ���� �������� ����,<br>�츮�� ������ ���� �� �� �ֽ��ϴ�.</p>
            </section>
	</div>
-->
    
    <div class="every">
        <br>
        <h1 style="margin-top:150px" align="center">����� ��</h1>

        <section id="blog-landing">
            <article class="white-panel"> 
                <p>���� ������<br>
                ���� ���� �������ҳ�<br>
                �װ� ���� �����̿���<br>
                ���������� ���� �¸��� �����鼭<br>
                ���� �̼�������<br>
                <br>
                ����� ���ð� ������<br>
                �� ��̲��� �ǰڱ������<br>

                <br><br>
                ��̿� ���� -  �����</p>
            </article>

            <article class="white-panel"> 
                <p>����� �� ���� ������� ����� ����<br>
                ������ ž ���� �̽� ���� �Ź��� ����<br>
                ����� ����� ����� ����<br>
                <br><br>

                ���� ������� ������ ù�� �ӿ� �� ����<br>
                ������ �������� ���� �� ���� ��ӵ� ����<br>
                ����� ����� ����� ����<br>
                <br><br>

                �Ѷ��� ��� ���� ���⿡ �־���<br>
                �׷���, ���� ���� ���¿�� �;���<br>
                �ٸ� ��� ���� ������ ���� �Ǿ� ���� ������<br>
                �ٸ� �װ͵��� �󸶳� ���� ���Լ� �־����°�<br>

                <br><br>
                ����� ����� ����� ����<br>
                ���� ,�ű�, �׸��� ��� ����<br>
                �ָ�,  ������ �� �ָ���<br>

                <br><br>
                ���غ�, �� ��� �͵� ����<br>
                �� ������ �� ������ �ϰ� �ִ°�<br>

                    <br><br><br>

                ����� ����� ����� ����  -  ����ȭ</p>
            </article>

            <article class="white-panel"> 
                <p>ã�� ������ �ʱ�� �ߴ�<br>
                ���⸸ �ϸ� ���� ���� �ϵ� �ƴϴ�<br>
                �׳� �ΰ� ����� �ߴ�<br><br><br>


                �׸��� �Ȱ� ������� �ߴ�<br>
                ������� ���� ���ϸ� �״밡 ���� ���ߴٴ�<br>
                ���� ���� ���ϴ� �� ſ�� �� ��������<br><br>


                ������ �״밡 �ƴ� �� ���и�<br>
                ������ �ڽ��� ���⿡<br>
                �ָ��� �ָ����� �״� �̸��� �θ���� �ߴ�<br><br><br>



                �ָ����� - ������</p>
            </article>

            <article class="white-panel"> 
                <p>������� �� �ְ� �� �԰�<br>
                �׷��� �۸��� ���� �ִ� ���� �Ǵ� ���̴�.<br>
                ���� �Ǿ� �״��� �׸��� ������ ���� ���̴�.<br><br>

                ����� �� ���̰� �� ������ <br>
                �׷��� ������ �����º��� �Ǵ� ���̴�.<br>
                ���� �Ǿ� �״� �� �ϴ��� <br>
                �� ���ڰ� ��Ű�� ���̴�.<br><br>

                ����� ���̴ٰ� �����̴ٰ� �� �����̴ٰ�<br>
                ��ħ�� �ƹ� �͵� �ƴ� ���� �Ǵ� ���̴�.<br><br>

                �ƹ� �͵� �ƴ� ���� �Ǿ�<br>
                �״��� �� �θ���<br>
                ������� ��ٸ��� ���̴�.<br><br><br>



                �״��� ���� �Ǿ�  - �㿵��</p>
            </article>

            <article class="white-panel"> 
                <p>���� ������<br>
                ���� ���� �������ҳ�<br>
                �װ� ���� �����̿���<br>
                ���������� ���� �¸��� �����鼭<br>
                ���� �̼�������<br>
                <br>
                ����� ���ð� ������<br>
                �� ��̲��� �ǰڱ������<br>

                <br><br>
                ��̿� ���� -  �����</p>
            </article>

            <article class="white-panel"> 
                <p>���� ������<br>
                ���� ���� �������ҳ�<br>
                �װ� ���� �����̿���<br>
                ���������� ���� �¸��� �����鼭<br>
                ���� �̼�������<br>
                <br>
                ����� ���ð� ������<br>
                �� ��̲��� �ǰڱ������<br>

                <br><br>
                ��̿� ���� -  �����</p>
            </article>

            <article class="white-panel"> 
                <p>���� ������<br>
                ���� ���� �������ҳ�<br>
                �װ� ���� �����̿���<br>
                ���������� ���� �¸��� �����鼭<br>
                ���� �̼�������<br>
                <br>
                ����� ���ð� ������<br>
                �� ��̲��� �ǰڱ������<br>

                <br><br>
                ��̿� ���� -  �����</p>
            </article>

            <article class="white-panel"> 
                <p>���� ������<br>
                ���� ���� �������ҳ�<br>
                �װ� ���� �����̿���<br>
                ���������� ���� �¸��� �����鼭<br>
                ���� �̼�������<br>
                <br>
                ����� ���ð� ������<br>
                �� ��̲��� �ǰڱ������<br>

                <br><br>
                ��̿� ���� -  �����</p>
            </article>

            <article class="white-panel"> 
                <p>���� ������<br>
                ���� ���� �������ҳ�<br>
                �װ� ���� �����̿���<br>
                ���������� ���� �¸��� �����鼭<br>
                ���� �̼�������<br>
                <br>
                ����� ���ð� ������<br>
                �� ��̲��� �ǰڱ������<br>

                <br><br>
                ��̿� ���� -  �����</p>
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
    
<!-- Start ������ϰ� ���� �ڵ�� � �뵵���� �� //��� �ּ� �� �޾��ּ��� -->
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
<!-- End ������ϰ� ���� �ڵ�� � �뵵���� �� //��� �ּ� �� �޾��ּ��� -->
</body>

<!-- Start ������ϰ� ���� �ڵ�� � �뵵���� �� //��� �ּ� �� �޾��ּ��� -->
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
<!-- End ������ϰ� ���� �ڵ�� � �뵵���� �� //��� �ּ� �� �޾��ּ��� -->
</html>