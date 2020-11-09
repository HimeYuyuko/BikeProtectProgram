<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<button onclick="confirm_test()">선택창(confirm) 발생</button>
 
<script>
    function confirm_test() {
        var confirm_test = confirm("확인(예) 또는 취소(아니오)를 선택해주세요.");
 
        if ( confirm_test == true ) {
        	location.href="./create_bicycle_code.jsp"
        } else{
    	    	
			return;     
}
	    }
</script>
</body>
</html>