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
	  group[1][1]=new Option("����","gys");
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
	  group[3][0]=new Option("��û�ϵ� ��ġ�� ����","");
	  group[3][1]=new Option("��õ��","JCS");
	  group[3][2]=new Option("û�ֽ�","CUS");
	  group[3][3]=new Option("���ֽ�","CHJ");
	  group[3][4]=new Option("���걺","KSG");
	  group[3][5]=new Option("�ܾ籺","DYG");
	  group[3][6]=new Option("������","BYG");
	  group[3][7]=new Option("������","YDG");
	  group[3][8]=new Option("��õ��","YCG");
	  group[3][9]=new Option("������","USG");
	  group[3][10]=new Option("����","JPG");
	  group[3][11]=new Option("��õ��","JCG");
	  //��û����
	  group[4][0]=new Option("��û���� ��ġ�� ����","");
	  group[4][1]=new Option("����","KRS");
	  group[4][2]=new Option("���ֽ�","KJS");
	  group[4][3]=new Option("����","NSS");
	  group[4][4]=new Option("������","DJS");
	  group[4][5]=new Option("���ɽ�","BRS");
	  group[4][6]=new Option("�����","SSS");
	  group[4][7]=new Option("�ƻ��","ASS");
	  group[4][8]=new Option("õ�Ƚ�","CAS");
	  group[4][9]=new Option("�ݻ걺","KSG");
	  group[4][10]=new Option("�ο���","BYG");
	  group[4][11]=new Option("��õ��","SCG");
	  group[4][12]=new Option("���걺","YSG");
	  group[4][13]=new Option("û�籺","CYG");
	  group[4][14]=new Option("�¾ȱ�","TAG");
	  group[4][15]=new Option("ȫ����","HSG");
	  //����ϵ�
	  group[5][0]=new Option("����ϵ� ��ġ�� ����","");
	  group[5][1]=new Option("�����","GSS");
	  group[5][2]=new Option("������","KJS");
	  group[5][3]=new Option("������","NOS");
	  group[5][4]=new Option("�ͻ��","ISS");
	  group[5][5]=new Option("���ֽ�","JJS");
	  group[5][6]=new Option("������","JUS");
	  group[5][7]=new Option("��â��","GCG");
	  group[5][8]=new Option("���ֱ�","MJG");
	  group[5][9]=new Option("�ξȱ�","BAG");
	  group[5][10]=new Option("��â��","SCG");
	  group[5][11]=new Option("���ֱ�","YJG");
	  group[5][12]=new Option("�ӽǱ�","ISG");
	  group[5][13]=new Option("�����","JSG");
	  group[5][14]=new Option("���ȱ�","JAG");
	  //���󳲵�
	  group[6][0]=new Option("���󳲵� ��ġ�� ����","");
	  group[6][1]=new Option("�����","GYAS");
	  group[6][2]=new Option("���ֽ�","NJS");
	  group[6][3]=new Option("������","MPS");
	  group[6][4]=new Option("��õ��","SCS");
	  group[6][5]=new Option("������","YSS");
	  group[6][6]=new Option("������","KJG");
	  group[6][7]=new Option("���ﱺ","KHG");
	  group[6][8]=new Option("���","KSG");
	  group[6][9]=new Option("���ʱ�","KRG");
	  group[6][10]=new Option("��籺","DYG");
	  group[6][11]=new Option("���ȱ�","MAG");
	  group[6][12]=new Option("������","BSG");
	  group[6][13]=new Option("�žȱ�","SAG");
	  group[6][14]=new Option("������","YKG");
	  group[6][15]=new Option("���ϱ�","YAG");
	  group[6][16]=new Option("�ϵ���","YDG");
	  group[6][17]=new Option("�强��","JSG");
	  group[6][18]=new Option("���ﱺ","JHG");
	  group[6][19]=new Option("������","JDG");
	  group[6][20]=new Option("����","HPG");
	  group[6][21]=new Option("�س���","HNG");
	  group[6][22]=new Option("ȭ����","HSG");
	  //���ϵ�
	  group[7][0]=new Option("���ϵ� ��ġ�� ����","");
	  group[7][1]=new Option("����","KSS");
	  group[7][2]=new Option("���ֽ�","KJS");
	  group[7][3]=new Option("���̽�","KMS");
	  group[7][4]=new Option("��õ��","KCS");
	  group[7][5]=new Option("�����","MKS");
	  group[7][6]=new Option("���ֽ�","SJS");
	  group[7][7]=new Option("�ȵ���","ADS");
	  group[7][8]=new Option("���ֽ�","YJS");
	  group[7][9]=new Option("������","YCS");
	  group[7][10]=new Option("���׽�","PHS");
	  group[7][11]=new Option("��ɱ�","KRG");
	  group[7][12]=new Option("������","KWG");
	  group[7][13]=new Option("��ȭ��","BHG");
	  group[7][14]=new Option("���ֱ�","SJG");
	  group[7][15]=new Option("������","YDG");
	  group[7][16]=new Option("���籺","YYG");
	  group[7][17]=new Option("��õ��","YCG");
	  group[7][18]=new Option("�︪��","ULG");
	  group[7][19]=new Option("������","UJG");
	  group[7][20]=new Option("�Ǽ���","YSG");
	  group[7][21]=new Option("û����","CDG");
	  group[7][22]=new Option("û�۱�","CSG");
	  group[7][23]=new Option("ĥ�","CKG");
	  //��󳲵�
	  group[8][0]=new Option("��󳲵� ��ġ�� ����","");
	  group[8][1]=new Option("������","KJS");
	  group[8][2]=new Option("���ؽ�","KHS");
	  group[8][3]=new Option("�о��","MYS");
	  group[8][4]=new Option("��õ��","SCS");
	  group[8][5]=new Option("����","YSS");
	  group[8][6]=new Option("���ֽ�","JJUS");
	  group[8][7]=new Option("â����","COS");
	  group[8][8]=new Option("�뿵��","TYG");
	  group[8][9]=new Option("��â��","KCG");
	  group[8][10]=new Option("����","GSG");
	  group[8][11]=new Option("���ر�","NHG");
	  group[8][12]=new Option("��û��","SCG");
	  group[8][13]=new Option("�Ƿɱ�","YRG");
	  group[8][14]=new Option("â�籺","CNG");
	  group[8][15]=new Option("�ϵ���","HDG");
	  group[8][16]=new Option("�Ծȱ�","HAG");
	  group[8][17]=new Option("�Ծ籺","HYG");
	  group[8][18]=new Option("��õ��","HCG");
	  //���ֵ�
	  group[9][0]=new Option("���ֵ� ��ġ�� ����","");
	  group[9][1]=new Option("��������","SGS");
	  group[9][2]=new Option("���ֽ�","JJS");
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
�������� :
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
		
		<p>�������ڵ�: <% int Bicycle_Code = (int)Math.floor(Math.random()*1000000)+100000;
		
			if(Bicycle_Code>=1000000)
			{
				Bicycle_Code=Bicycle_Code-100000;
				}
					out.print(Bicycle_Code);%> 
					</p>
	<p><input type="submit" value="��ȣ ����">
		<button type="button" onclick="history.go(-1)">���ư���</button></p>

</form>

</body>
</html>