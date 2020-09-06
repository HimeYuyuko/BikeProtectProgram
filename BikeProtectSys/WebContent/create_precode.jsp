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
 group[1][1]=new Option("서울","01");//결과 <option value="ss">삼성</option>
 group[2][0]=new Option("광역시를 선택하세요","");
 group[2][1]=new Option("부산광역시","01");
 group[2][2]=new Option("대구광역시","02");
 group[2][3]=new Option("인천광역시","03");
 group[2][4]=new Option("광주광역시","04")
 group[2][5]=new Option("대전광역시","05");
 group[2][6]=new Option("울산광역시","06");
 group[2][7]=new Option("세종시","07");
 group[3][0]=new Option("도를 선택하세요","");
 group[3][1]=new Option("경기도","01");
 group[3][2]=new Option("강원도","02");
 group[3][3]=new Option("충청남도","03");
 group[3][4]=new Option("충청북도","04");
 group[3][5]=new Option("전라북도","05");
 group[3][6]=new Option("전라남도","06");
 group[3][7]=new Option("경상북도","07");
 group[3][8]=new Option("경상남도","08");
 group[3][9]=new Option("제주도","09");
 
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
  group[1][1]=new Option("강남구","01");
  group[1][2]=new Option("강동구","02");
  group[1][3]=new Option("강북구","03");
  group[1][4]=new Option("강서구","04");
  group[1][5]=new Option("관악구","05");
  group[1][6]=new Option("광진구","06");
  group[1][7]=new Option("구로구","07");
  group[1][8]=new Option("금천구","08");
  group[1][9]=new Option("노원구","09");
  group[1][10]=new Option("도봉구","10");
  group[1][11]=new Option("동대문구","11");
  group[1][12]=new Option("동작구","12");
  group[1][13]=new Option("마포구","13");
  group[1][14]=new Option("서대문구","14");
  group[1][15]=new Option("서초구","15");
  group[1][16]=new Option("성동구","16");
  group[1][17]=new Option("성북구","17");
  group[1][18]=new Option("송파구","18");
  group[1][19]=new Option("양천구","19");
  group[1][20]=new Option("영등포구","20");
  group[1][21]=new Option("용산구","21");
  group[1][22]=new Option("은평구","22");
  group[1][23]=new Option("종로구","23");
  group[1][24]=new Option("중구","24");
  
  
 } else if(first == 2) {
  group[0][0]=new Option("중분류를 먼저 선택하세요","");
  //부산시
  group[1][0]=new Option("부산 자치권 선택","");
  group[1][1]=new Option("강서구","01");
  group[1][2]=new Option("금정구","02");
  group[1][3]=new Option("남구","03");
  group[1][4]=new Option("동구","04");
  group[1][5]=new Option("동래구","05");
  group[1][6]=new Option("부산진구","06");
  group[1][7]=new Option("북구","07");
  group[1][8]=new Option("사상구","08");
  group[1][9]=new Option("사하구","09");
  group[1][10]=new Option("서구","10");
  group[1][11]=new Option("수영구","11");
  group[1][12]=new Option("연제구","12");
  group[1][13]=new Option("영도구","13");
  group[1][14]=new Option("중구","14");
  group[1][15]=new Option("해운대구","15");
  group[1][16]=new Option("기장군","16");
  //대구시
  group[2][0]=new Option("대구 자치권 선택","");
  group[2][1]=new Option("남구","01");
  group[2][2]=new Option("달서구","02");
  group[2][3]=new Option("동구","03");
  group[2][4]=new Option("북구","04");
  group[2][5]=new Option("서구","05");
  group[2][6]=new Option("수성구","06");
  group[2][7]=new Option("중구","07");
  group[2][8]=new Option("달성군","08");
  //인천시
  group[3][0]=new Option("인천 자치권 선택","");
  group[3][1]=new Option("계양구","01");
  group[3][2]=new Option("남동구","02");
  group[3][3]=new Option("동구","03");
  group[3][4]=new Option("미추홀구","04");
  group[3][5]=new Option("부평구","05");
  group[3][6]=new Option("서구","06");
  group[3][7]=new Option("연수구","07");
  group[3][8]=new Option("중구","08");
  group[3][9]=new Option("강화군","09");
  group[3][10]=new Option("옹진군","10");
  //광주시
  group[4][0]=new Option("광주 자치권 선택","");
  group[4][1]=new Option("광산구","01");
  group[4][2]=new Option("남구","02");
  group[4][3]=new Option("동구","03");
  group[4][4]=new Option("북구","04");
  group[4][5]=new Option("서구","05");
  //대전시
  group[5][0]=new Option("대전 자치권 선택","");
  group[5][1]=new Option("대덕구","01");
  group[5][2]=new Option("동구","02");
  group[5][3]=new Option("서구","03");
  group[5][4]=new Option("유성구","04");
  group[5][5]=new Option("중구","05");
  //울산시
  group[6][0]=new Option("울산 자치권 선택","");
  group[6][1]=new Option("남구","01");
  group[6][2]=new Option("동구","02");
  group[6][3]=new Option("북구","03");
  group[6][4]=new Option("중구","04");
  //세종시
  group[7][0]=new Option("세종 자치권 선택","");
  group[7][1]=new Option("조치원읍","01");
  group[7][2]=new Option("금남면","02");
  group[7][3]=new Option("부강면","03");
  group[7][4]=new Option("소정면","04");
  group[7][5]=new Option("연기면","05");
  group[7][6]=new Option("연동면","06");
  group[7][7]=new Option("연서면","07");
  group[7][8]=new Option("장군면","08");
  group[7][9]=new Option("전동면","09");
  group[7][10]=new Option("전의면","10");
 }
 else if(first == 3){
	 group[0][0]=new Option("중분류를 먼저 선택하세요","");
	  //경기도
	  group[1][0]=new Option("경기도 자치권 선택","");
	  group[1][1]=new Option("고양시","01");
	  group[1][2]=new Option("과천시","02");
	  group[1][3]=new Option("광명시","03");
	  group[1][4]=new Option("광주시","04");
	  group[1][5]=new Option("구리시","05");
	  group[1][6]=new Option("군포시","06");
	  group[1][7]=new Option("김포시","07");
	  group[1][8]=new Option("남양주시","08");
	  group[1][9]=new Option("동두천시","09");
	  group[1][10]=new Option("부천시","10");
	  group[1][11]=new Option("성남시","11");
	  group[1][12]=new Option("수원시","12");
	  group[1][13]=new Option("시흥시","13");
	  group[1][14]=new Option("안산시","14");
	  group[1][15]=new Option("안양시","15");
	  group[1][16]=new Option("양주시","16");
	  group[1][17]=new Option("여주시","17");
	  group[1][18]=new Option("오산시","18");
	  group[1][19]=new Option("용인시","19");
	  group[1][20]=new Option("의왕시","20");
	  group[1][21]=new Option("의정부시","21");
	  group[1][22]=new Option("이천시","22");
	  group[1][23]=new Option("파주시","23");
	  group[1][24]=new Option("평택시","24");
	  group[1][25]=new Option("포천시","25");
	  group[1][26]=new Option("하남시","26");
	  group[1][27]=new Option("화성시","27");
	  group[1][28]=new Option("가평군","28");
	  group[1][29]=new Option("양평군","29");
	  group[1][30]=new Option("연천군","30");
	  //강원도
	  group[2][0]=new Option("강원도 자치권 선택","");
	  group[2][1]=new Option("강릉시","01");
	  group[2][2]=new Option("동해시","02");
	  group[2][3]=new Option("삼척시","03");
	  group[2][4]=new Option("속초시","04");
	  group[2][5]=new Option("원주시","05");
	  group[2][6]=new Option("춘천시","06");
	  group[2][7]=new Option("태백시","07");
	  group[2][8]=new Option("고성군","08");
	  group[2][9]=new Option("양구군","09");
	  group[2][10]=new Option("양양군","10");
	  group[2][11]=new Option("영월군","11");
	  group[2][12]=new Option("인제군","12");
	  group[2][13]=new Option("정선군","13");
	  group[2][14]=new Option("철원군","14");
	  group[2][15]=new Option("평창군","15");
	  group[2][16]=new Option("홍천군","16");
	  group[2][17]=new Option("화천군","17");
	  group[2][18]=new Option("횡성군","18");
	  //충청북도
	  group[3][0]=new Option("충청북도 자치권 선택","");
	  group[3][1]=new Option("제천시","01");
	  group[3][2]=new Option("청주시","02");
	  group[3][3]=new Option("충주시","03");
	  group[3][4]=new Option("괴산군","04");
	  group[3][5]=new Option("단양군","05");
	  group[3][6]=new Option("보은군","06");
	  group[3][7]=new Option("영동군","07");
	  group[3][8]=new Option("옥천군","08");
	  group[3][9]=new Option("음성군","09");
	  group[3][10]=new Option("증평군","10");
	  group[3][11]=new Option("진천군","11");
	  //충청남도
	  group[4][0]=new Option("충청남도 자치권 선택","");
	  group[4][1]=new Option("계룡시","01");
	  group[4][2]=new Option("공주시","02");
	  group[4][3]=new Option("논산시","03");
	  group[4][4]=new Option("당진시","04");
	  group[4][5]=new Option("보령시","05");
	  group[4][6]=new Option("서산시","06");
	  group[4][7]=new Option("아산시","07");
	  group[4][8]=new Option("천안시","08");
	  group[4][9]=new Option("금산군","09");
	  group[4][10]=new Option("부여군","10");
	  group[4][11]=new Option("서천군","11");
	  group[4][12]=new Option("예산군","12");
	  group[4][13]=new Option("청양군","13");
	  group[4][14]=new Option("태안군","14");
	  group[4][15]=new Option("홍성군","15");
	  //전라북도
	  group[5][0]=new Option("전라북도 자치권 선택","");
	  group[5][1]=new Option("군산시","01");
	  group[5][2]=new Option("김제시","02");
	  group[5][3]=new Option("남원시","03");
	  group[5][4]=new Option("익산시","04");
	  group[5][5]=new Option("전주시","05");
	  group[5][6]=new Option("정읍시","06");
	  group[5][7]=new Option("고창군","07");
	  group[5][8]=new Option("무주군","08");
	  group[5][9]=new Option("부안군","09");
	  group[5][10]=new Option("순창군","10");
	  group[5][11]=new Option("완주군","11");
	  group[5][12]=new Option("임실군","12");
	  group[5][13]=new Option("장수군","13");
	  group[5][14]=new Option("진안군","14");
	  //전라남도
	  group[6][0]=new Option("전라남도 자치권 선택","");
	  group[6][1]=new Option("광양시","01");
	  group[6][2]=new Option("나주시","02");
	  group[6][3]=new Option("목포시","03");
	  group[6][4]=new Option("순천시","04");
	  group[6][5]=new Option("여수시","05");
	  group[6][6]=new Option("강진군","06");
	  group[6][7]=new Option("고흥군","07");
	  group[6][8]=new Option("곡성군","08");
	  group[6][9]=new Option("구례군","09");
	  group[6][10]=new Option("담양군","10");
	  group[6][11]=new Option("무안군","11");
	  group[6][12]=new Option("보성군","12");
	  group[6][13]=new Option("신안군","13");
	  group[6][14]=new Option("영광군","14");
	  group[6][15]=new Option("영암군","15");
	  group[6][16]=new Option("완도군","16");
	  group[6][17]=new Option("장성군","17");
	  group[6][18]=new Option("장흥군","18");
	  group[6][19]=new Option("진도군","19");
	  group[6][20]=new Option("함평군","20");
	  group[6][21]=new Option("해남군","21");
	  group[6][22]=new Option("화순군","22");
	  //경상북도
	  group[7][0]=new Option("경상북도 자치권 선택","");
	  group[7][1]=new Option("경산시","01");
	  group[7][2]=new Option("경주시","02");
	  group[7][3]=new Option("구미시","03");
	  group[7][4]=new Option("김천시","04");
	  group[7][5]=new Option("문경시","05");
	  group[7][6]=new Option("상주시","06");
	  group[7][7]=new Option("안동시","07");
	  group[7][8]=new Option("영주시","08");
	  group[7][9]=new Option("영찬시","09");
	  group[7][10]=new Option("포항시","10");
	  group[7][11]=new Option("고령군","11");
	  group[7][12]=new Option("군위군","12");
	  group[7][13]=new Option("봉화군","13");
	  group[7][14]=new Option("성주군","14");
	  group[7][15]=new Option("영덕군","15");
	  group[7][16]=new Option("영양군","16");
	  group[7][17]=new Option("예천군","17");
	  group[7][18]=new Option("울릉군","18");
	  group[7][19]=new Option("울진군","19");
	  group[7][20]=new Option("의성군","20");
	  group[7][21]=new Option("청도군","21");
	  group[7][22]=new Option("청송군","22");
	  group[7][23]=new Option("칠곡군","23");
	  //경상남도
	  group[8][0]=new Option("경상남도 자치권 선택","");
	  group[8][1]=new Option("거제시","01");
	  group[8][2]=new Option("김해시","02");
	  group[8][3]=new Option("밀양시","03");
	  group[8][4]=new Option("사천시","04");
	  group[8][5]=new Option("양산시","05");
	  group[8][6]=new Option("진주시","06");
	  group[8][7]=new Option("창원시","07");
	  group[8][8]=new Option("통영시","08");
	  group[8][9]=new Option("거창군","09");
	  group[8][10]=new Option("고성군","10");
	  group[8][11]=new Option("남해군","11");
	  group[8][12]=new Option("산청군","12");
	  group[8][13]=new Option("의령군","13");
	  group[8][14]=new Option("창녕군","14");
	  group[8][15]=new Option("하동군","15");
	  group[8][16]=new Option("함안군","16");
	  group[8][17]=new Option("함양군","17");
	  group[8][18]=new Option("합천군","18");
	  //제주도
	  group[9][0]=new Option("제주도 자치권 선택","");
	  group[9][1]=new Option("서귀포시","01");
	  group[9][2]=new Option("제주시","02");
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
거주지역 :
<select name=first onchange="firstChange();" size=1>
<option value=''>대분류</option>
<option value=''>특별시</option>
<option value=''>광역시</option>
<option value=''>도</option>
</select>

<select name=second id=firstcode onchange="secondChange();" size=1>
 <option value=''>대분류를 먼저 선택하세요</option>
</select>

<select name=third id=secondcode size=1>
 <option value=''>중분류를 먼저 선택하세요</option>
</select>
		<p id=code>자전거코드: <% int Bicycle_Code = (int)Math.floor(Math.random()*1000000)+100000;
			if(Bicycle_Code>=1000000)	{		Bicycle_Code=Bicycle_Code-100000;
					}
				out.print(Bicycle_Code); %>
					</p>
	<p><input type="submit" value="번호 생성">
		<button type="button" onclick="history.go(-1)">돌아가기</button></p>

</form>

</body>
</html>