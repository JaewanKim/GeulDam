<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>    
<%
   //������ ���̽� �α��� �մϴ�.
   Class.forName("com.mysql.jdbc.Driver");
   String URL = "jdbc:mysql://localhost:3306/test?useSSL=false";
   String USER="root";
   String pass="0000";
   
   // ���� ��ȣ�� �޾ƿɴϴ�.
   int num = Integer.parseInt(request.getParameter("num"));

   try {   
      Connection conn = DriverManager.getConnection(URL,USER,pass);
      Statement stmt = conn.createStatement();
      // �� ��ȸ�� ���� �� 
      String sql = "SELECT writingContext, writinghit,writingnice FROM writing WHERE writingNum=" + num +";"; 
      System.out.println(sql);
      ResultSet rs = stmt.executeQuery(sql);
      int hit = 0; 
      int writingnice=0;
      String context=" ";
       if(rs.next()){
         context = rs.getString(1);
         hit = rs.getInt(2);
         writingnice=rs.getInt(3);
       }
          // ��ȸ�� ����
         hit++;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Start Modal CSS -->
    <link rel="stylesheet" href="./css/writingModal.css">
    <link rel="stylesheet" href="./css/custombox.min.css">

   <link rel="stylesheet" href="./css/viewingModal.css">
<!-- End Modal CSS -->

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<button type="button" href="modal2">
<!-- �ڡڡڡڡ� ���� ��� �߰� �ڡڡڡڡ� -->
   <!-- Start Modal 2 -->
    <div id="modal2" class="modal-demo">
        <div class="modalbox">
            <form>
                <div id="title">
                    <span class="r">
                        <button type="button" class="btn_exit" onclick="Custombox.close();" >�ݱ�</button>
                    </span>
                    <span class="keyword">Ű����</span>
                </div>
                <hr/>
                <div>

                <textarea class="js-textarea-minrows form-control" readonly="readonly" rows="10" >
                   <%=context %>
                </textarea>
            
                </div>
                <hr/>
                <div>
                    <span class="l">
                        <button type="button" class="btn_like" onclick=function(){
                           <% 
                           writingnice++;
                            sql = "UPDATE writing SET writingnice=" + writingnice+ " where writingNum=" +num + ";";//�̰� ������Ʈ���� 
                            stmt.executeUpdate(sql);
                           %> 
                        }> ���ƿ� </button>
                    </span>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span>
                        <button type="button" class="btn_clip" onclick=""> ��� </button>
                    </span>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span>
                        <button type="button" class="btn_clip" onclick=""> ���� </button>
                    </span>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span>
                        <button type="button" class="btn_clip" onclick=function(){}> ���� </button>
                    </span>
                    <span class="r">
<!--                    <div class="fb-share-button" id="btn_share" data-href="http://localhost:9999/index.html" data-layout="icon"></div> -->
                        <div class="btn_share" data-href="http://www.naver.com">
                            <a target="_blank" href="javascript:window.open('https://www.facebook.com/sharer/sharer.php?app_id=1025925507533286&sdk=joey&u=http%3A%2F%2Flocalhost%3A8080%2Findex.html&display=popup&ref=plugin&src=share_button','title','width=550,height=320')">
                                <span class="icon icon-facebook"></span>�����ϱ�
                            </a>
                        </div>
                    </span>
                </div>
            </form>
        </div>
    </div>    
<!-- End Modal 2 -->
<!-- Start Modal JavaScript -->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    
    <script src="js/custombox.min.js"></script>
    <script src="js/legacy.min.js"></script>
    <script src="js/modal.js"></script>
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
      })();})
    </script>
<!-- End Modal JavaScript -->  
<% 
   // ��ȸ�� ������Ʈ
    sql = "UPDATE writing SET writinghit=" + hit + " where writingNum=" +num + ";";
    // ����
    stmt.executeUpdate(sql);
    rs.close();
    stmt.close();
    conn.close();
        
   }catch(SQLException e) {
}

%> 
</body>
</html>