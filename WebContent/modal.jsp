<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Start Modal CSS -->
   <link rel="stylesheet" href="./css/writingModal.css">
    <link rel="stylesheet" href="./css/custombox.min.css">

   <link rel="stylesheet" href="./css/viewingModal.css">
<!-- End Modal CSS -->
<script>
function  goLink(){
	document.addrform.submit();
   document.addrform.action = 'index.jsp';
   document.addrform.target = 'selfWin';
   window.name = 'selfWin';
   document.addrform.action = '';
   alert("글이 등록되었습니다!");
   window.close();
}

   //창 닫기
function closeModal(){
   window.returnValue='ok';
   window.close();
}
   
$(document).ready(function(){
	   $('#l-align').on('click', function(){
	      $('textarea').css("text-align","left");
	   });
	   
	   $('#c-align').on('click', function(){
	      $('textarea').css("text-align","center");
	   });
	   
	   $('#r-align').on('click', function(){
	      $('textarea').css("text-align","right");
	   });
	   
	   $('#font_ng').on('click', function(){
	      $('textarea').css("font-family","'나눔명조', 'NanumMyeongjo', ng");
	   });
	   
	   $('#font_ngo').on('click', function(){
	      $('textarea').css("font-family","'나눔고딕', 'NanumGothic', ngo");
	   });
	   
	   $('#font_mg').on('click', function(){
	      $('textarea').css("font-family","'맑은고딕' 'Malgun Gothic'");
	   });
	   
	   $('#font_10').on('click', function(){
	      $('textarea').css("font-size","18px");
	   });

	   $('#font_12').on('click', function(){
	      $('textarea').css("font-size","20px");
	   });
	   
	   $('#font_14').on('click', function(){
	      $('textarea').css("font-size","22px");
	   });   
	}); 
</script>

<style>
<style>
#addform {
   padding :40px;
   text-align: center;
    font-family: '나눔명조', 'NanumMyeongjo', ng;
}
#addform .l {
    float: left;
}

#addform .r {
    float: right;
}

/* Start Title */

.title {
   margin-bottom: 10px;
}

.btn_exit {
    background: white;
    border: 0px white solid;
    font-size: 20px;
    font-family: '나눔명조', 'NanumMyeongjo', ng;
}

.keyword {
    font-size: 30px;
}

.btn_submit {
    background: white;
    border: 0px white solid;
    font-size: 20px;
    font-family: '나눔명조', 'NanumMyeongjo', ng;
}

textarea {
   width: 97%;
   padding: 10px;
   margin-top: 20px;
   decoration: noshade;
   font-family: '나눔명조', 'NanumMyeongjo', ng;
   text-align: left;
   font-size: 20px;
}

#publicOrPrivate {
   font-size: 20px;
}
/* End Title */
</style>

</head>
<body>

<!-- Start From -->
   <form name="addrform" id="addform" method=post action="insert.jsp">
       <div class="title">
           <span class="l">
           <!-- <button type="button" class="btn_exit" onclick="Custombox.close();">닫기</button> -->
           <input type="button" name="btn" class="btn_exit" value="닫기" onclick="JavaScript:closeModal();"/>
           </span>
           <span class="keyword">키워드</span>
           <span class="r">
          <!--    <button type="submit" class="btn_submit" onclick="Custombox.submit();">완료</button>  -->
           <input type="button" name="btn" class="btn_submit" value="완료" onclick="goLink();"/>
           </span>
       </div>
              <hr/>
       <div class="setting">
          
           <span class="l">&nbsp;
                <select id="font_family" name="writingFont">
                    <option id="font_ng" value="1">나눔명조</option>
                    <option id="font_ngo" value="2">나눔고딕</option>
                    <option id="font_mg" value="3">맑은고딕</option>
                </select>&nbsp;&nbsp;
                <select id ="font_size" name="writingFontSize">
                    <option id="font_10" value="10">10</option>
                    <option id="font_12" value="12">12</option>
                    <option id="font_14" value="14">14</option>
                </select>
               &nbsp;&nbsp;&nbsp;
               <span name="writingAllign">
                   <input id="l-align" type="radio" name="writingAllign" value="1" checked/>
                   <label class="sort l-align" for="l-align"></label>
                   <input id="c-align" type="radio" name="writingAllign" value="2"/>
                   <label class="sort c-align" for="c-align"></label>
                   <input id="r-align" type="radio" name="writingAllign" value="3"/>
                   <label class="sort r-align" for="r-align"></label>
               </span>
           </span>
           <span class="r">
               <span id="public-select">
               <input type="radio" name="writingAuthority" id="public" value="1" checked/>
               <label for="public"><span id="publicOrPrivate">공개</span></label>&nbsp;&nbsp;
               <input type="radio" name="writingAuthority" id="anonymous" value="2"/>
               <label for="anonymous"><span id="publicOrPrivate">익명공개</span></label>&nbsp;&nbsp;
               <input type="radio" name="writingAuthority" id="private" value="3"/>
               <label for="private"><span id="publicOrPrivate">비공개 </span>&nbsp;&nbsp;</label>
               </span>
           </span>
       </div>
       <div id="txt">
          <textarea class="js-textarea-minrows form-control" placeholder="당신의 생각을 들려주세요.." rows="10" name="writingContext" ></textarea>
      </div>
   </form>
<!-- End Form -->

   <br/><br/>

    <!-- Start Auto-Grow-Of-TextArea JavaScript -->
    <script src="//code.jquery.com/jquery-3.1.0.slim.min.js"></script>
    <script src="./js/jquery.autoresize.min.js"></script>
    <!-- End Auto-Grow-Of-TextArea JavaScript -->    

    <!-- Start Modal JavaScript -->
    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    
    <script src="./js/custombox.min.js"></script>
    <script src="./js/legacy.min.js"></script>
    <script src="./js/modal.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        
</body>
<!-- End Modal -->

<!-- Start Modal JavaScript -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script src="./js/custombox.min.js"></script>
<script src="./js/legacy.min.js"></script>
<script src="./js/modal.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<script src="//code.jquery.com/jquery.min.js"></script>

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
<!-- End Modal JavaScript --> 
</html>