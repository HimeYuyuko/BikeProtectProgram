<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��ǻ��</title>
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
 group[1][0]=new Option("��ǻ�� ȸ�� ����","");
 group[1][1]=new Option("�Ｚ","ss");//��� <option value="ss">�Ｚ</option>
 group[1][2]=new Option("���","dw");
 group[1][3]=new Option("����","lg");
 group[2][0]=new Option("������ ȸ�� ����","");
 group[2][1]=new Option("����","epson");
 group[2][2]=new Option("�޷���Ŀ��","hp");
 group[2][3]=new Option("�ﺸ","sb");

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
  //�Ｚ ��ǻ��
  group[1][0]=new Option("�Ｚ��ǻ�� ����","");
  group[1][1]=new Option("���� ��Ƽ��III","ss3");
  group[1][2]=new Option("�Ｚ ��Ƽ��IV","ss4");
  group[1][3]=new Option("�Ｚ ���� ��Ʈ��","ssnote");
  //��� ��ǻ��
  group[2][0]=new Option("��� ��ǻ�� ����","");
  group[2][1]=new Option("��� ����ũž ����","dw");
  group[3][0]=new Option("���� ��ǻ�� ����","");
  //LG ��ǻ��
  group[3][1]=new Option("LG IBM PC","lgpc");
  group[3][2]=new Option("LG IBM NOTEBOOK ","lgnote");
 } else if(first == 2) {
  group[0][0]=new Option("�ߺз��� ���� �����ϼ���","");
  //���� ������
  group[1][0]=new Option("���� ������ ����","");
  group[1][1]=new Option("���� ��ũ","epson_ink");
  group[1][2]=new Option("���� ������","epson_laser");
  //�޷���Ŀ�� ������
  group[2][0]=new Option("�޷���Ŀ�� ������ ����","");
  group[2][1]=new Option("HP ��ũ��","hp_ink");
  group[2][2]=new Option("HP ��������","hp_laser");
  //�ﺸ ������
  group[3][0]=new Option("�ﺸ ������ ����","");
  group[3][1]=new Option("�ﺸ ��ũ��","sambo_ink");
  group[3][2]=new Option("�ﺸ ��������","sambo_laser");
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
<option value=''>��з�</option>
<option value=''>��ǻ��</option>
<option value=''>������</option>
</select>

<select name=second onchange="secondChange();" size=1>
 <option value=''>��з��� ���� �����ϼ���</option>
</select>

<select name=third size=1>
 <option value=''>�ߺз��� ���� �����ϼ���</option>
</select>

</form>
</body>
</html>