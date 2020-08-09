<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>자전거 등록번호 생성</title>
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
 group[1][0]=new Option("특별시를 선택하세요","");
 group[1][1]=new Option("서울","ss");//결과 <option value="ss">삼성</option>
 group[2][0]=new Option("광역시를 선택하세요","");
 group[2][1]=new Option("부산광역시","bs");
 group[2][2]=new Option("대구광역시","dg");
 group[2][3]=new Option("인천광역시","ic");
 group[2][4]=new Option("광주광역시","gg")
 group[2][5]=new Option("대전광역시","dge");
 group[2][6]=new Option("울산광역시","us");
 group[2][7]=new Option("세종시","sj");
 group[3][0]=new Option("도를 선택하세요","");
 group[3][1]=new Option("경기도","gg");
 group[3][2]=new Option("강원도","go");
 group[3][3]=new Option("충청남도","cn");
 group[3][4]=new Option("충청북도","cb");
 group[3][5]=new Option("전라북도","jn");
 group[3][6]=new Option("전라남도","jb");
 group[3][7]=new Option("경상북도","kb");
 group[3][8]=new Option("경상남도","kn");
 group[3][9]=new Option("제주도","jj");
 
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
  //서울 지역
  group[1][0]=new Option("서울 자치권 선택","");
  group[1][1]=new Option("강남구","KNG");
  group[1][2]=new Option("강동구","KDG");
  group[1][3]=new Option("강북구","KBG");
  group[1][4]=new Option("강서구","KSG");
  group[1][5]=new Option("관악구","KAG");
  group[1][6]=new Option("광진구","KGG");
  group[1][7]=new Option("구로구","KRG");
  group[1][8]=new Option("금천구","KCG");
  group[1][9]=new Option("노원구","NOG");
  group[1][10]=new Option("도봉구","DBG");
  group[1][11]=new Option("동대문구","DDG");
  group[1][12]=new Option("동작구","DJG");
  group[1][13]=new Option("마포구","MPG");
  group[1][14]=new Option("서대문구","SDMG");
  group[1][15]=new Option("서초구","SCG");
  group[1][16]=new Option("성동구","SDG");
  group[1][17]=new Option("성북구","SBG");
  group[1][18]=new Option("송파구","SPG");
  group[1][19]=new Option("양천구","YCG");
  group[1][20]=new Option("영등포구","YDPG");
  group[1][21]=new Option("용산구","YSG");
  group[1][22]=new Option("은평구","UPG");
  group[1][23]=new Option("종로구","JRG");
  group[1][24]=new Option("중구","JG");
  
  
 } else if(first == 2) {
  group[0][0]=new Option("중분류를 먼저 선택하세요","");
  //부산시
  group[1][0]=new Option("부산 자치권 선택","");
  group[1][1]=new Option("강서구","KSG");
  group[1][2]=new Option("금정구","KJG");
  group[1][3]=new Option("남구","NG");
  group[1][4]=new Option("동구","DG");
  group[1][5]=new Option("동래구","DRG");
  group[1][6]=new Option("부산진구","BJG");
  group[1][7]=new Option("북구","BG");
  group[1][8]=new Option("사상구","SSG");
  group[1][9]=new Option("사하구","SHG");
  group[1][10]=new Option("서구","SG");
  group[1][11]=new Option("수영구","SYG");
  group[1][12]=new Option("연제구","YJG");
  group[1][13]=new Option("영도구","YDG");
  group[1][14]=new Option("중구","JG");
  group[1][15]=new Option("해운대구","HUG");
  group[1][16]=new Option("기장군","KJG");
  //대구시
  group[2][0]=new Option("대구 자치권 선택","");
  group[2][1]=new Option("남구","NG");
  group[2][2]=new Option("달서구","DSG");
  group[2][3]=new Option("동구","DG");
  group[2][4]=new Option("북구","BG");
  group[2][5]=new Option("서구","SG");
  group[2][6]=new Option("수성구","SSG");
  group[2][7]=new Option("중구","JG");
  group[2][8]=new Option("달성군","DSG");
  //인천시
  group[3][0]=new Option("인천 자치권 선택","");
  group[3][1]=new Option("계양구","KYG");
  group[3][2]=new Option("남동구","NDG");
  group[3][3]=new Option("동구","DG");
  group[3][4]=new Option("미추홀구","MJHG");
  group[3][5]=new Option("부평구","BPG");
  group[3][6]=new Option("서구","SG");
  group[3][7]=new Option("연수구","YSG");
  group[3][8]=new Option("중구","JG");
  group[3][9]=new Option("강화군","KHG");
  group[3][10]=new Option("옹진군","YJG");
  //광주시
  group[4][0]=new Option("광주 자치권 선택","");
  group[4][1]=new Option("광산구","KSG");
  group[4][2]=new Option("남구","NG");
  group[4][3]=new Option("동구","DG");
  group[4][4]=new Option("북구","BG");
  group[4][5]=new Option("서구","SG");
  //대전시
  group[5][0]=new Option("대전 자치권 선택","");
  group[5][1]=new Option("대덕구","DDG");
  group[5][2]=new Option("동구","DG");
  group[5][3]=new Option("서구","SG");
  group[5][4]=new Option("유성구","YSG");
  group[5][5]=new Option("중구","JG");
  //울산시
  group[6][0]=new Option("울산 자치권 선택","");
  group[6][1]=new Option("남구","NG");
  group[6][2]=new Option("동구","DG");
  group[6][3]=new Option("북구","BG");
  group[6][4]=new Option("중구","JG");
  //세종시
  group[7][0]=new Option("세종 자치권 선택","");
  group[7][1]=new Option("조치원읍","JCO");
  group[7][2]=new Option("금남면","KNM");
  group[7][3]=new Option("부강면","BKM");
  group[7][4]=new Option("소정면","SJM");
  group[7][5]=new Option("연기면","YKM");
  group[7][6]=new Option("연동면","YDM");
  group[7][7]=new Option("연서면","YSM");
  group[7][8]=new Option("장군면","JKM");
  group[7][9]=new Option("전동면","KJDM");
  group[7][10]=new Option("전의면","JYM");
 }
 else if(first == 3){
	 group[0][0]=new Option("중분류를 먼저 선택하세요","");
	  //경기도
	  group[1][0]=new Option("경기도 자치권 선택","");
	  group[1][1]=new Option("고양시","KYS");
	  group[1][2]=new Option("과천시","KKS");
	  group[1][3]=new Option("광명시","KMS");
	  group[1][4]=new Option("광주시","KJS");
	  group[1][5]=new Option("구리시","GRS");
	  group[1][6]=new Option("군포시","GPS");
	  group[1][7]=new Option("김포시","KPS");
	  group[1][8]=new Option("남양주시","NYJS");
	  group[1][9]=new Option("동두천시","DDCS");
	  group[1][10]=new Option("부천시","BCS");
	  group[1][11]=new Option("성남시","SNS");
	  group[1][12]=new Option("수원시","SWS");
	  group[1][13]=new Option("시흥시","SHS");
	  group[1][14]=new Option("안산시","ASS");
	  group[1][15]=new Option("안양시","AYS");
	  group[1][16]=new Option("양주시","YJS");
	  group[1][17]=new Option("여주시","YJS");
	  group[1][18]=new Option("오산시","OSS");
	  group[1][19]=new Option("용인시","WIS");
	  group[1][20]=new Option("의왕시","YYS");
	  group[1][21]=new Option("의정부시","YJBS");
	  group[1][22]=new Option("이천시","ECS");
	  group[1][23]=new Option("파주시","PJS");
	  group[1][24]=new Option("평택시","PTS");
	  group[1][25]=new Option("포천시","PCS");
	  group[1][26]=new Option("하남시","HNS");
	  group[1][27]=new Option("화성시","HSS");
	  group[1][28]=new Option("가평군","KPG");
	  group[1][29]=new Option("양평군","YPG");
	  group[1][30]=new Option("연천군","YCG");
	  //강원도
	  group[2][0]=new Option("강원도 자치권 선택","");
	  group[2][1]=new Option("강릉시","KRS");
	  group[2][2]=new Option("동해시","DHS");
	  group[2][3]=new Option("삼척시","SCS");
	  group[2][4]=new Option("속초시","SCHS");
	  group[2][5]=new Option("원주시","WJS");
	  group[2][6]=new Option("춘천시","CCS");
	  group[2][7]=new Option("태백시","TBS");
	  group[2][8]=new Option("고성군","KSG");
	  group[2][9]=new Option("양구군","YGG");
	  group[2][10]=new Option("양양군","YYG");
	  group[2][11]=new Option("영월군","YWG");
	  group[2][12]=new Option("인제군","IJG");
	  group[2][13]=new Option("정선군","JSG");
	  group[2][14]=new Option("철원군","CWG");
	  group[2][15]=new Option("평창군","PCG");
	  group[2][16]=new Option("홍천군","HCG");
	  group[2][17]=new Option("화천군","HCG");
	  group[2][18]=new Option("횡성군","HSG");
	  //충청북도
	  //충청남도
	  //전라북도
	  //전라남도
	  //경상북도
	  //경상남도
	  //제주도
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
<form name="form1" method="post" action = "update_precode.jsp" id="update_precode" >

<select name=first onchange="firstChange();" size=1>
<option value=''>대분류</option>
<option value=''>특별시</option>
<option value=''>광역시</option>
<option value=''>도</option>
</select>

<select name=second onchange="secondChange();" size=1>
 <option value=''>대분류를 먼저 선택하세요</option>
</select>

<select name=third size=1>
 <option value=''>중분류를 먼저 선택하세요</option>
</select>
		<input type="submit" value="등록번호 생성">
		<button type="button" onclick="history.go(-1)">돌아가기</button>
</form>
</body>
</html>