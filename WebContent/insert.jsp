<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.DecimalFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>

</body>

 <%
	String URL ="jdbc:mysql://localhost:3306/test?useSSL=false";
	String USER = "root";
	String PASS = "0000";
	request.setCharacterEncoding("euc-kr");
    String writingTitle = request.getParameter("writingTitle");
    String writingContext = request.getParameter("writingContext");
    String writingFont = request.getParameter("writingFont");
    String writingFontSize =  request.getParameter("writingFontSize");
    String writingAllign = request.getParameter("writingAllign");
    String writingAuthority = request.getParameter("writingAuthority");
    String writingDate = request.getParameter("writingDate");
 	
    System.out.println("writingContext = " + writingContext);
    DecimalFormat df = new DecimalFormat("00");
    
    try {	
    Connection conn = DriverManager.getConnection(URL,USER,PASS);
    writingTitle="test";
    //��¥
    Calendar today = Calendar.getInstance();
    String year =df.format(today.get(Calendar.YEAR));
    String month =df.format(today.get(Calendar.MONTH));
    String date =df.format(today.get(Calendar.DATE));
   	writingDate= year+month+date;
   	
	String sql = "INSERT INTO writing(writingTitle, writingContext, writingFont, writingFontSize, writingAllign, writingAuthority, writingDate) VALUES(?,?,?,?,?,?,?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, writingTitle);
	pstmt.setString(2, writingContext);
	pstmt.setString(3, writingFont);
	pstmt.setString(4, writingFontSize);
	pstmt.setString(5, writingAllign);
	pstmt.setString(6, writingAuthority);
	pstmt.setString(7, writingDate);
	
	pstmt.execute();
	pstmt.close();
	
	conn.close();
} catch(SQLException e) {
out.println( e.toString() );
}
%>
 <script language=javascript> 
   location.href="index.jsp"; 
</script>
</html>