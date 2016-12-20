
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" pageEncoding="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<html> 
<head> 
<script language="javascript"> 

function modalPop(url){ 
var popOptions = "dialogWidth: 500px; dialogHeight: 30px; center: yes; resizable: no; status: no; scroll: no;"; 
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
<body> 
<A href="javascript:modalPop('modal.jsp');">모달팝업 띄우기</A> 
</body> 
</html> 
