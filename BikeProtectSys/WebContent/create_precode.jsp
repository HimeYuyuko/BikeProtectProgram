<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>������ ��Ϲ�ȣ ����</title>
<head>
<script language="javascript">
function firstChange() {// ��з� ���� ���
 var x = document.form1.first.options.selectedIndex;//������ �ε���
 var groups=document.form1.first.options.length;//��з� ����
 var group=new Array(groups);//�迭 ����
 for (i=0; i<groups; i++) {
  group[i]=new Array();
 }//for
 // �ɼ�(<option>) ����
 group[0][0]=new Option("��з��� ���� �����ϼ���","");
 group[1][0]=new Option("Ư���ø� �����ϼ���","");
 group[1][1]=new Option("����","ss");//��� <option value="ss">�Ｚ</option>
 group[2][0]=new Option("�����ø� �����ϼ���","");
 group[2][1]=new Option("�λ걤����","bs");
 group[2][2]=new Option("�뱸������","dg");
 group[2][3]=new Option("��õ������","ic");
 group[2][4]=new Option("���ֱ�����","gg")
 group[2][5]=new Option("����������","dge");
 group[2][6]=new Option("��걤����","us");
 group[2][7]=new Option("������","sj");
 group[3][0]=new Option("���� �����ϼ���","");
 group[3][1]=new Option("��⵵","gg");
 group[3][2]=new Option("������","go");
 group[3][3]=new Option("��û����","cn");
 group[3][4]=new Option("��û�ϵ�","cb");
 group[3][5]=new Option("����ϵ�","jn");
 group[3][6]=new Option("���󳲵�","jb");
 group[3][7]=new Option("���ϵ�","kb");
 group[3][8]=new Option("��󳲵�","kn");
 group[3][9]=new Option("���ֵ�","jj");
 
 temp = document.form1.second;//�ι� ° ����Ʈ ���(<select name=second>)
 for (m = temp.options.length-1 ; m > 0 ; m--) {//���� �� �����
  temp.options[m]=null
 }
 for (i=0;i<group[x].length;i++){//�� ����
  //��) <option value="ss">�Ｚ</option>
  temp.options[i]=new Option(group[x][i].text,group[x][i].value);
 }
 temp.options[0].selected=true//�ε��� 0��°, ��, ù��° ����
}//firstChange

function secondChange() {//�ߺз� ���� ���
 var first = document.form1.first.options.selectedIndex;
 var x = document.form1.second.options.selectedIndex;
 var groups=document.form1.second.options.length;
 var group=new Array(groups);
 for (i=0; i<groups; i++) {
   group[i]=new Array();
 }
 if(first == 1) {
  group[0][0]=new Option("�ߺз��� ���� �����ϼ���","");
  //���� ����
  group[1][0]=new Option("���� ��ġ�� ����","");
  group[1][1]=new Option("������","KNG");
  group[1][2]=new Option("������","KDG");
  group[1][3]=new Option("���ϱ�","KBG");
  group[1][4]=new Option("������","KSG");
  group[1][5]=new Option("���Ǳ�","KAG");
  group[1][6]=new Option("������","KGG");
  group[1][7]=new Option("���α�","KRG");
  group[1][8]=new Option("��õ��","KCG");
  group[1][9]=new Option("�����","NOG");
  group[1][10]=new Option("������","DBG");
  group[1][11]=new Option("���빮��","DDG");
  group[1][12]=new Option("���۱�","DJG");
  group[1][13]=new Option("������","MPG");
  group[1][14]=new Option("���빮��","SDMG");
  group[1][15]=new Option("���ʱ�","SCG");
  group[1][16]=new Option("������","SDG");
  group[1][17]=new Option("���ϱ�","SBG");
  group[1][18]=new Option("���ı�","SPG");
  group[1][19]=new Option("��õ��","YCG");
  group[1][20]=new Option("��������","YDPG");
  group[1][21]=new Option("��걸","YSG");
  group[1][22]=new Option("����","UPG");
  group[1][23]=new Option("���α�","JRG");
  group[1][24]=new Option("�߱�","JG");
  
  
 } else if(first == 2) {
  group[0][0]=new Option("�ߺз��� ���� �����ϼ���","");
  //�λ��
  group[1][0]=new Option("�λ� ��ġ�� ����","");
  group[1][1]=new Option("������","KSG");
  group[1][2]=new Option("������","KJG");
  group[1][3]=new Option("����","NG");
  group[1][4]=new Option("����","DG");
  group[1][5]=new Option("������","DRG");
  group[1][6]=new Option("�λ�����","BJG");
  group[1][7]=new Option("�ϱ�","BG");
  group[1][8]=new Option("���","SSG");
  group[1][9]=new Option("���ϱ�","SHG");
  group[1][10]=new Option("����","SG");
  group[1][11]=new Option("������","SYG");
  group[1][12]=new Option("������","YJG");
  group[1][13]=new Option("������","YDG");
  group[1][14]=new Option("�߱�","JG");
  group[1][15]=new Option("�ؿ�뱸","HUG");
  group[1][16]=new Option("���屺","KJG");
  //�뱸��
  group[2][0]=new Option("�뱸 ��ġ�� ����","");
  group[2][1]=new Option("����","NG");
  group[2][2]=new Option("�޼���","DSG");
  group[2][3]=new Option("����","DG");
  group[2][4]=new Option("�ϱ�","BG");
  group[2][5]=new Option("����","SG");
  group[2][6]=new Option("������","SSG");
  group[2][7]=new Option("�߱�","JG");
  group[2][8]=new Option("�޼���","DSG");
  //��õ��
  group[3][0]=new Option("��õ ��ġ�� ����","");
  group[3][1]=new Option("��籸","KYG");
  group[3][2]=new Option("������","NDG");
  group[3][3]=new Option("����","DG");
  group[3][4]=new Option("����Ȧ��","MJHG");
  group[3][5]=new Option("����","BPG");
  group[3][6]=new Option("����","SG");
  group[3][7]=new Option("������","YSG");
  group[3][8]=new Option("�߱�","JG");
  group[3][9]=new Option("��ȭ��","KHG");
  group[3][10]=new Option("������","YJG");
  //���ֽ�
  group[4][0]=new Option("���� ��ġ�� ����","");
  group[4][1]=new Option("���걸","KSG");
  group[4][2]=new Option("����","NG");
  group[4][3]=new Option("����","DG");
  group[4][4]=new Option("�ϱ�","BG");
  group[4][5]=new Option("����","SG");
  //������
  group[5][0]=new Option("���� ��ġ�� ����","");
  group[5][1]=new Option("�����","DDG");
  group[5][2]=new Option("����","DG");
  group[5][3]=new Option("����","SG");
  group[5][4]=new Option("������","YSG");
  group[5][5]=new Option("�߱�","JG");
  //����
  group[6][0]=new Option("��� ��ġ�� ����","");
  group[6][1]=new Option("����","NG");
  group[6][2]=new Option("����","DG");
  group[6][3]=new Option("�ϱ�","BG");
  group[6][4]=new Option("�߱�","JG");
  //������
  group[7][0]=new Option("���� ��ġ�� ����","");
  group[7][1]=new Option("��ġ����","JCO");
  group[7][2]=new Option("�ݳ���","KNM");
  group[7][3]=new Option("�ΰ���","BKM");
  group[7][4]=new Option("������","SJM");
  group[7][5]=new Option("�����","YKM");
  group[7][6]=new Option("������","YDM");
  group[7][7]=new Option("������","YSM");
  group[7][8]=new Option("�屺��","JKM");
  group[7][9]=new Option("������","KJDM");
  group[7][10]=new Option("���Ǹ�","JYM");
 }
 else if(first == 3){
	 group[0][0]=new Option("�ߺз��� ���� �����ϼ���","");
	  //��⵵
	  group[1][0]=new Option("��⵵ ��ġ�� ����","");
	  group[1][1]=new Option("����","KYS");
	  group[1][2]=new Option("��õ��","KKS");
	  group[1][3]=new Option("�����","KMS");
	  group[1][4]=new Option("���ֽ�","KJS");
	  group[1][5]=new Option("������","GRS");
	  group[1][6]=new Option("������","GPS");
	  group[1][7]=new Option("������","KPS");
	  group[1][8]=new Option("�����ֽ�","NYJS");
	  group[1][9]=new Option("����õ��","DDCS");
	  group[1][10]=new Option("��õ��","BCS");
	  group[1][11]=new Option("������","SNS");
	  group[1][12]=new Option("������","SWS");
	  group[1][13]=new Option("�����","SHS");
	  group[1][14]=new Option("�Ȼ��","ASS");
	  group[1][15]=new Option("�Ⱦ��","AYS");
	  group[1][16]=new Option("���ֽ�","YJS");
	  group[1][17]=new Option("���ֽ�","YJS");
	  group[1][18]=new Option("�����","OSS");
	  group[1][19]=new Option("���ν�","WIS");
	  group[1][20]=new Option("�ǿս�","YYS");
	  group[1][21]=new Option("�����ν�","YJBS");
	  group[1][22]=new Option("��õ��","ECS");
	  group[1][23]=new Option("���ֽ�","PJS");
	  group[1][24]=new Option("���ý�","PTS");
	  group[1][25]=new Option("��õ��","PCS");
	  group[1][26]=new Option("�ϳ���","HNS");
	  group[1][27]=new Option("ȭ����","HSS");
	  group[1][28]=new Option("����","KPG");
	  group[1][29]=new Option("����","YPG");
	  group[1][30]=new Option("��õ��","YCG");
	  //������
	  group[2][0]=new Option("������ ��ġ�� ����","");
	  group[2][1]=new Option("������","KRS");
	  group[2][2]=new Option("���ؽ�","DHS");
	  group[2][3]=new Option("��ô��","SCS");
	  group[2][4]=new Option("���ʽ�","SCHS");
	  group[2][5]=new Option("���ֽ�","WJS");
	  group[2][6]=new Option("��õ��","CCS");
	  group[2][7]=new Option("�¹��","TBS");
	  group[2][8]=new Option("����","KSG");
	  group[2][9]=new Option("�籸��","YGG");
	  group[2][10]=new Option("��籺","YYG");
	  group[2][11]=new Option("������","YWG");
	  group[2][12]=new Option("������","IJG");
	  group[2][13]=new Option("������","JSG");
	  group[2][14]=new Option("ö����","CWG");
	  group[2][15]=new Option("��â��","PCG");
	  group[2][16]=new Option("ȫõ��","HCG");
	  group[2][17]=new Option("ȭõ��","HCG");
	  group[2][18]=new Option("Ⱦ����","HSG");
	  //��û�ϵ�
	  //��û����
	  //����ϵ�
	  //���󳲵�
	  //���ϵ�
	  //��󳲵�
	  //���ֵ�
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
<option value=''>��з�</option>
<option value=''>Ư����</option>
<option value=''>������</option>
<option value=''>��</option>
</select>

<select name=second onchange="secondChange();" size=1>
 <option value=''>��з��� ���� �����ϼ���</option>
</select>

<select name=third size=1>
 <option value=''>�ߺз��� ���� �����ϼ���</option>
</select>
		<input type="submit" value="��Ϲ�ȣ ����">
		<button type="button" onclick="history.go(-1)">���ư���</button>
</form>
</body>
</html>