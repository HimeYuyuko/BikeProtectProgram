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
 group[1][1]=new Option("����","01");//��� <option value="ss">�Ｚ</option>
 group[2][0]=new Option("�����ø� �����ϼ���","");
 group[2][1]=new Option("�λ걤����","01");
 group[2][2]=new Option("�뱸������","02");
 group[2][3]=new Option("��õ������","03");
 group[2][4]=new Option("���ֱ�����","04")
 group[2][5]=new Option("����������","05");
 group[2][6]=new Option("��걤����","06");
 group[2][7]=new Option("������","07");
 group[3][0]=new Option("���� �����ϼ���","");
 group[3][1]=new Option("��⵵","01");
 group[3][2]=new Option("������","02");
 group[3][3]=new Option("��û����","03");
 group[3][4]=new Option("��û�ϵ�","04");
 group[3][5]=new Option("����ϵ�","05");
 group[3][6]=new Option("���󳲵�","06");
 group[3][7]=new Option("���ϵ�","07");
 group[3][8]=new Option("��󳲵�","08");
 group[3][9]=new Option("���ֵ�","09");
 
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
  group[1][1]=new Option("������","01");
  group[1][2]=new Option("������","02");
  group[1][3]=new Option("���ϱ�","03");
  group[1][4]=new Option("������","04");
  group[1][5]=new Option("���Ǳ�","05");
  group[1][6]=new Option("������","06");
  group[1][7]=new Option("���α�","07");
  group[1][8]=new Option("��õ��","08");
  group[1][9]=new Option("�����","09");
  group[1][10]=new Option("������","10");
  group[1][11]=new Option("���빮��","11");
  group[1][12]=new Option("���۱�","12");
  group[1][13]=new Option("������","13");
  group[1][14]=new Option("���빮��","14");
  group[1][15]=new Option("���ʱ�","15");
  group[1][16]=new Option("������","16");
  group[1][17]=new Option("���ϱ�","17");
  group[1][18]=new Option("���ı�","18");
  group[1][19]=new Option("��õ��","19");
  group[1][20]=new Option("��������","20");
  group[1][21]=new Option("��걸","21");
  group[1][22]=new Option("����","22");
  group[1][23]=new Option("���α�","23");
  group[1][24]=new Option("�߱�","24");
  
  
 } else if(first == 2) {
  group[0][0]=new Option("�ߺз��� ���� �����ϼ���","");
  //�λ��
  group[1][0]=new Option("�λ� ��ġ�� ����","");
  group[1][1]=new Option("������","01");
  group[1][2]=new Option("������","02");
  group[1][3]=new Option("����","03");
  group[1][4]=new Option("����","04");
  group[1][5]=new Option("������","05");
  group[1][6]=new Option("�λ�����","06");
  group[1][7]=new Option("�ϱ�","07");
  group[1][8]=new Option("���","08");
  group[1][9]=new Option("���ϱ�","09");
  group[1][10]=new Option("����","10");
  group[1][11]=new Option("������","11");
  group[1][12]=new Option("������","12");
  group[1][13]=new Option("������","13");
  group[1][14]=new Option("�߱�","14");
  group[1][15]=new Option("�ؿ�뱸","15");
  group[1][16]=new Option("���屺","16");
  //�뱸��
  group[2][0]=new Option("�뱸 ��ġ�� ����","");
  group[2][1]=new Option("����","01");
  group[2][2]=new Option("�޼���","02");
  group[2][3]=new Option("����","03");
  group[2][4]=new Option("�ϱ�","04");
  group[2][5]=new Option("����","05");
  group[2][6]=new Option("������","06");
  group[2][7]=new Option("�߱�","07");
  group[2][8]=new Option("�޼���","08");
  //��õ��
  group[3][0]=new Option("��õ ��ġ�� ����","");
  group[3][1]=new Option("��籸","01");
  group[3][2]=new Option("������","02");
  group[3][3]=new Option("����","03");
  group[3][4]=new Option("����Ȧ��","04");
  group[3][5]=new Option("����","05");
  group[3][6]=new Option("����","06");
  group[3][7]=new Option("������","07");
  group[3][8]=new Option("�߱�","08");
  group[3][9]=new Option("��ȭ��","09");
  group[3][10]=new Option("������","10");
  //���ֽ�
  group[4][0]=new Option("���� ��ġ�� ����","");
  group[4][1]=new Option("���걸","01");
  group[4][2]=new Option("����","02");
  group[4][3]=new Option("����","03");
  group[4][4]=new Option("�ϱ�","04");
  group[4][5]=new Option("����","05");
  //������
  group[5][0]=new Option("���� ��ġ�� ����","");
  group[5][1]=new Option("�����","01");
  group[5][2]=new Option("����","02");
  group[5][3]=new Option("����","03");
  group[5][4]=new Option("������","04");
  group[5][5]=new Option("�߱�","05");
  //����
  group[6][0]=new Option("��� ��ġ�� ����","");
  group[6][1]=new Option("����","01");
  group[6][2]=new Option("����","02");
  group[6][3]=new Option("�ϱ�","03");
  group[6][4]=new Option("�߱�","04");
  //������
  group[7][0]=new Option("���� ��ġ�� ����","");
  group[7][1]=new Option("��ġ����","01");
  group[7][2]=new Option("�ݳ���","02");
  group[7][3]=new Option("�ΰ���","03");
  group[7][4]=new Option("������","04");
  group[7][5]=new Option("�����","05");
  group[7][6]=new Option("������","06");
  group[7][7]=new Option("������","07");
  group[7][8]=new Option("�屺��","08");
  group[7][9]=new Option("������","09");
  group[7][10]=new Option("���Ǹ�","10");
 }
 else if(first == 3){
	 group[0][0]=new Option("�ߺз��� ���� �����ϼ���","");
	  //��⵵
	  group[1][0]=new Option("��⵵ ��ġ�� ����","");
	  group[1][1]=new Option("����","01");
	  group[1][2]=new Option("��õ��","02");
	  group[1][3]=new Option("�����","03");
	  group[1][4]=new Option("���ֽ�","04");
	  group[1][5]=new Option("������","05");
	  group[1][6]=new Option("������","06");
	  group[1][7]=new Option("������","07");
	  group[1][8]=new Option("�����ֽ�","08");
	  group[1][9]=new Option("����õ��","09");
	  group[1][10]=new Option("��õ��","10");
	  group[1][11]=new Option("������","11");
	  group[1][12]=new Option("������","12");
	  group[1][13]=new Option("�����","13");
	  group[1][14]=new Option("�Ȼ��","14");
	  group[1][15]=new Option("�Ⱦ��","15");
	  group[1][16]=new Option("���ֽ�","16");
	  group[1][17]=new Option("���ֽ�","17");
	  group[1][18]=new Option("�����","18");
	  group[1][19]=new Option("���ν�","19");
	  group[1][20]=new Option("�ǿս�","20");
	  group[1][21]=new Option("�����ν�","21");
	  group[1][22]=new Option("��õ��","22");
	  group[1][23]=new Option("���ֽ�","23");
	  group[1][24]=new Option("���ý�","24");
	  group[1][25]=new Option("��õ��","25");
	  group[1][26]=new Option("�ϳ���","26");
	  group[1][27]=new Option("ȭ����","27");
	  group[1][28]=new Option("����","28");
	  group[1][29]=new Option("����","29");
	  group[1][30]=new Option("��õ��","30");
	  //������
	  group[2][0]=new Option("������ ��ġ�� ����","");
	  group[2][1]=new Option("������","01");
	  group[2][2]=new Option("���ؽ�","02");
	  group[2][3]=new Option("��ô��","03");
	  group[2][4]=new Option("���ʽ�","04");
	  group[2][5]=new Option("���ֽ�","05");
	  group[2][6]=new Option("��õ��","06");
	  group[2][7]=new Option("�¹��","07");
	  group[2][8]=new Option("����","08");
	  group[2][9]=new Option("�籸��","09");
	  group[2][10]=new Option("��籺","10");
	  group[2][11]=new Option("������","11");
	  group[2][12]=new Option("������","12");
	  group[2][13]=new Option("������","13");
	  group[2][14]=new Option("ö����","14");
	  group[2][15]=new Option("��â��","15");
	  group[2][16]=new Option("ȫõ��","16");
	  group[2][17]=new Option("ȭõ��","17");
	  group[2][18]=new Option("Ⱦ����","18");
	  //��û�ϵ�
	  group[3][0]=new Option("��û�ϵ� ��ġ�� ����","");
	  group[3][1]=new Option("��õ��","01");
	  group[3][2]=new Option("û�ֽ�","02");
	  group[3][3]=new Option("���ֽ�","03");
	  group[3][4]=new Option("���걺","04");
	  group[3][5]=new Option("�ܾ籺","05");
	  group[3][6]=new Option("������","06");
	  group[3][7]=new Option("������","07");
	  group[3][8]=new Option("��õ��","08");
	  group[3][9]=new Option("������","09");
	  group[3][10]=new Option("����","10");
	  group[3][11]=new Option("��õ��","11");
	  //��û����
	  group[4][0]=new Option("��û���� ��ġ�� ����","");
	  group[4][1]=new Option("����","01");
	  group[4][2]=new Option("���ֽ�","02");
	  group[4][3]=new Option("����","03");
	  group[4][4]=new Option("������","04");
	  group[4][5]=new Option("���ɽ�","05");
	  group[4][6]=new Option("�����","06");
	  group[4][7]=new Option("�ƻ��","07");
	  group[4][8]=new Option("õ�Ƚ�","08");
	  group[4][9]=new Option("�ݻ걺","09");
	  group[4][10]=new Option("�ο���","10");
	  group[4][11]=new Option("��õ��","11");
	  group[4][12]=new Option("���걺","12");
	  group[4][13]=new Option("û�籺","13");
	  group[4][14]=new Option("�¾ȱ�","14");
	  group[4][15]=new Option("ȫ����","15");
	  //����ϵ�
	  group[5][0]=new Option("����ϵ� ��ġ�� ����","");
	  group[5][1]=new Option("�����","01");
	  group[5][2]=new Option("������","02");
	  group[5][3]=new Option("������","03");
	  group[5][4]=new Option("�ͻ��","04");
	  group[5][5]=new Option("���ֽ�","05");
	  group[5][6]=new Option("������","06");
	  group[5][7]=new Option("��â��","07");
	  group[5][8]=new Option("���ֱ�","08");
	  group[5][9]=new Option("�ξȱ�","09");
	  group[5][10]=new Option("��â��","10");
	  group[5][11]=new Option("���ֱ�","11");
	  group[5][12]=new Option("�ӽǱ�","12");
	  group[5][13]=new Option("�����","13");
	  group[5][14]=new Option("���ȱ�","14");
	  //���󳲵�
	  group[6][0]=new Option("���󳲵� ��ġ�� ����","");
	  group[6][1]=new Option("�����","01");
	  group[6][2]=new Option("���ֽ�","02");
	  group[6][3]=new Option("������","03");
	  group[6][4]=new Option("��õ��","04");
	  group[6][5]=new Option("������","05");
	  group[6][6]=new Option("������","06");
	  group[6][7]=new Option("���ﱺ","07");
	  group[6][8]=new Option("���","08");
	  group[6][9]=new Option("���ʱ�","09");
	  group[6][10]=new Option("��籺","10");
	  group[6][11]=new Option("���ȱ�","11");
	  group[6][12]=new Option("������","12");
	  group[6][13]=new Option("�žȱ�","13");
	  group[6][14]=new Option("������","14");
	  group[6][15]=new Option("���ϱ�","15");
	  group[6][16]=new Option("�ϵ���","16");
	  group[6][17]=new Option("�强��","17");
	  group[6][18]=new Option("���ﱺ","18");
	  group[6][19]=new Option("������","19");
	  group[6][20]=new Option("����","20");
	  group[6][21]=new Option("�س���","21");
	  group[6][22]=new Option("ȭ����","22");
	  //���ϵ�
	  group[7][0]=new Option("���ϵ� ��ġ�� ����","");
	  group[7][1]=new Option("����","01");
	  group[7][2]=new Option("���ֽ�","02");
	  group[7][3]=new Option("���̽�","03");
	  group[7][4]=new Option("��õ��","04");
	  group[7][5]=new Option("�����","05");
	  group[7][6]=new Option("���ֽ�","06");
	  group[7][7]=new Option("�ȵ���","07");
	  group[7][8]=new Option("���ֽ�","08");
	  group[7][9]=new Option("������","09");
	  group[7][10]=new Option("���׽�","10");
	  group[7][11]=new Option("��ɱ�","11");
	  group[7][12]=new Option("������","12");
	  group[7][13]=new Option("��ȭ��","13");
	  group[7][14]=new Option("���ֱ�","14");
	  group[7][15]=new Option("������","15");
	  group[7][16]=new Option("���籺","16");
	  group[7][17]=new Option("��õ��","17");
	  group[7][18]=new Option("�︪��","18");
	  group[7][19]=new Option("������","19");
	  group[7][20]=new Option("�Ǽ���","20");
	  group[7][21]=new Option("û����","21");
	  group[7][22]=new Option("û�۱�","22");
	  group[7][23]=new Option("ĥ�","23");
	  //��󳲵�
	  group[8][0]=new Option("��󳲵� ��ġ�� ����","");
	  group[8][1]=new Option("������","01");
	  group[8][2]=new Option("���ؽ�","02");
	  group[8][3]=new Option("�о��","03");
	  group[8][4]=new Option("��õ��","04");
	  group[8][5]=new Option("����","05");
	  group[8][6]=new Option("���ֽ�","06");
	  group[8][7]=new Option("â����","07");
	  group[8][8]=new Option("�뿵��","08");
	  group[8][9]=new Option("��â��","09");
	  group[8][10]=new Option("����","10");
	  group[8][11]=new Option("���ر�","11");
	  group[8][12]=new Option("��û��","12");
	  group[8][13]=new Option("�Ƿɱ�","13");
	  group[8][14]=new Option("â�籺","14");
	  group[8][15]=new Option("�ϵ���","15");
	  group[8][16]=new Option("�Ծȱ�","16");
	  group[8][17]=new Option("�Ծ籺","17");
	  group[8][18]=new Option("��õ��","18");
	  //���ֵ�
	  group[9][0]=new Option("���ֵ� ��ġ�� ����","");
	  group[9][1]=new Option("��������","01");
	  group[9][2]=new Option("���ֽ�","02");
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

<select name=second id=firstcode onchange="secondChange();" size=1>
 <option value=''>��з��� ���� �����ϼ���</option>
</select>

<select name=third id=secondcode size=1>
 <option value=''>�ߺз��� ���� �����ϼ���</option>
</select>
		<p id=code>�������ڵ�: <% int Bicycle_Code = (int)Math.floor(Math.random()*1000000)+100000;
			if(Bicycle_Code>=1000000)	{		Bicycle_Code=Bicycle_Code-100000;
					}
				out.print(Bicycle_Code); %>
					</p>
	<p><input type="submit" value="��ȣ ����">
		<button type="button" onclick="history.go(-1)">���ư���</button></p>

</form>

</body>
</html>