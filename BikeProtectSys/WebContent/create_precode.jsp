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
 group[1][0]=new Option("Ư����","");
 group[1][1]=new Option("����","ss");//��� <option value="ss">�Ｚ</option>
 group[2][0]=new Option("������","");
 group[2][1]=new Option("�λ걤����","bs");
 group[2][2]=new Option("�뱸������","dg");
 group[2][3]=new Option("��õ������","ic");
 group[2][4]=new Option("���ֱ�����","gg")
 group[2][5]=new Option("����������","dge");
 group[2][6]=new Option("��걤����","us");
 group[2][7]=new Option("������","sj");

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
  group[1][1]=new Option("���� ��Ƽ��III","ss3");
  group[1][2]=new Option("�Ｚ ��Ƽ��IV","ss4");
  group[1][3]=new Option("�Ｚ ���� ��Ʈ��","ssnote");
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
<option value=''>Ư����</option>
<option value=''>������</option>
<option value=''>Ư����ġ��</option>
<option value=''>��</option>
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