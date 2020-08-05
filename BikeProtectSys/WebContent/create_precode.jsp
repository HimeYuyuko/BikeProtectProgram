<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>컴퓨터</title>
<head>
<script language="javascript">
function firstChange() {// 대분류 변한 경우
 var x = document.form1.first.options.selectedIndex;//선택한 인덱스
 var groups=document.form1.first.options.length;//대분류 갯수
 var group=new Array(groups);//배열 생성
 for (i=0; i<groups; i++) {
  group[i]=new Array();
 }//for
 // 옵션(<option>) 생성
 group[0][0]=new Option("대분류를 먼저 선택하세요","");
 group[1][0]=new Option("컴퓨터 회사 선택","");
 group[1][1]=new Option("삼성","ss");//결과 <option value="ss">삼성</option>
 group[1][2]=new Option("대우","dw");
 group[1][3]=new Option("엘지","lg");
 group[2][0]=new Option("프린터 회사 선택","");
 group[2][1]=new Option("엡손","epson");
 group[2][2]=new Option("휴랫팩커드","hp");
 group[2][3]=new Option("삼보","sb");

 temp = document.form1.second;//두번 째 셀렉트 얻기(<select name=second>)
 for (m = temp.options.length-1 ; m > 0 ; m--) {//현재 값 지우기
  temp.options[m]=null
 }
 for (i=0;i<group[x].length;i++){//값 셋팅
  //예) <option value="ss">삼성</option>
  temp.options[i]=new Option(group[x][i].text,group[x][i].value);
 }
 temp.options[0].selected=true//인덱스 0번째, 즉, 첫번째 선택
}//firstChange

function secondChange() {//중분류 변한 경우
 var first = document.form1.first.options.selectedIndex;
 var x = document.form1.second.options.selectedIndex;
 var groups=document.form1.second.options.length;
 var group=new Array(groups);
 for (i=0; i<groups; i++) {
   group[i]=new Array();
 }
 if(first == 1) {
  group[0][0]=new Option("중분류를 먼저 선택하세요","");
  //삼성 컴퓨터
  group[1][0]=new Option("삼성컴퓨터 선택","");
  group[1][1]=new Option("섬성 팬티엄III","ss3");
  group[1][2]=new Option("삼성 팬티엄IV","ss4");
  group[1][3]=new Option("삼성 센스 노트북","ssnote");
  //대우 컴퓨터
  group[2][0]=new Option("대우 컴퓨터 선택","");
  group[2][1]=new Option("대우 데스크탑 프로","dw");
  group[3][0]=new Option("엘지 컴퓨터 선택","");
  //LG 컴퓨터
  group[3][1]=new Option("LG IBM PC","lgpc");
  group[3][2]=new Option("LG IBM NOTEBOOK ","lgnote");
 } else if(first == 2) {
  group[0][0]=new Option("중분류를 먼저 선택하세요","");
  //엡손 프린터
  group[1][0]=new Option("엡손 프린터 선택","");
  group[1][1]=new Option("엡손 잉크","epson_ink");
  group[1][2]=new Option("엡손 레이져","epson_laser");
  //휴렛팩커드 프린터
  group[2][0]=new Option("휴렛팩커드 프린터 선택","");
  group[2][1]=new Option("HP 잉크젯","hp_ink");
  group[2][2]=new Option("HP 레이져젯","hp_laser");
  //삼보 프린터
  group[3][0]=new Option("삼보 프린터 선택","");
  group[3][1]=new Option("삼보 잉크젯","sambo_ink");
  group[3][2]=new Option("삼보 레이져젯","sambo_laser");
 }

 temp = document.form1.third;
 for (m = temp.options.length-1 ; m > 0 ; m--) {
  temp.options[m]=null
 }
 for (i=0;i<group[x].length;i++){
  temp.options[i]=new Option(group[x][i].text,group[x][i].value)
 }
 temp.options[0].selected=true
}//secondChange
</script>
</head>
<body>
<form name="form1">

<select name=first onchange="firstChange();" size=1>
<option value=''>대분류</option>
<option value=''>컴퓨터</option>
<option value=''>프린터</option>
</select>

<select name=second onchange="secondChange();" size=1>
 <option value=''>대분류를 먼저 선택하세요</option>
</select>

<select name=third size=1>
 <option value=''>중분류를 먼저 선택하세요</option>
</select>

</form>
</body>
</html>