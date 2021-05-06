var canvas = document.getElementById("myCanvas");
var grade_point = document.getElementById("gradrate");
var clearate  = document.getElementById("clearate");
var playgame = document.getElementById("playgame");
var login = document.getElementById("login_div");
var manual = document.getElementById("manual");
var games_b= document.getElementById("gamestart_b");
var id = document.getElementById("id"); //Id 불러오기
var pw = document.getElementById("passwd");
var rate_add = 0;
var clearate_point= 0;
var count = 0;
document.getElementById("login_div").style.display="block";
document.getElementById("playgame").style.display="none";
document.getElementById("manual").style.display="none";
gradrate = count++;
grade_point.innerText=gradrate;
/*window.onload = function() {
    var canvas = document.getElementById("GameCanvas");
    var ctx = canvas.getContext("2d");
    var img = document.getElementById("clean");
   ctx.drawImage(img, 0, 0, 1920, 1080);
};*/ //첫화면 출력*

/*window.onload = function() {
    var canvas = document.getElementById("GameCanvas");
    var ctx = canvas.getContext("2d");
    var img = document.getElementById("login");
   ctx.drawImage(img, 0, 0, 1920, 1080);
}; //로그인 화면 출력*/

/*window.onload = function() {
    var canvas = document.getElementById("GameCanvas");
    var ctx = canvas.getContext("2d");
    var img = document.getElementById("dirty");
   ctx.drawImage(img, 0, 0, 1920, 1080);
}; //더러운 화면 출력*/
var tp=setInterval("clearRate()",1000);//오염수치 증가설정

function clearRate(){//오염수치가 일정수치일시 출력할 함수
  if(200>clearate.innerText){//clearate.innerText가 200이하일떄까지 증가
  clearate_point =clearate_point+1+rate_add;
  clearate.innerText=clearate_point;
}
else{//200이상 이면 die_draw_m() 실행
  alert("오염수치가 너무 높아서 펫이 죽었습니다.\n재시작하세요.");
  clear_all();
  die_draw_m();

}
if(1==clearate_point){//시작할때 1이므로 clear_draw_m 구현
  clear_draw_m();
}
if(50==clearate_point){//오염수치가 50일시 발생창
var clear = confirm("오염수치가 높습니다. 청소를 하실껀가요?");//청소 유무확인창
if(clear){//확인 누를시 실행창
  clearbotton();
}else{//아닐시
  dirty_draw_m();//더러운 화면으로 변경
}
}
if(100==clearate_point){//오염수치가 100일시 발생창
  var death_b=confirm("오염수치가 너무 높아서 펫이 죽기 직전입니다. 청소를 진행 하시겠습니까?");//청소 유무 확인창
  if(death_b){//확인 누를시 실행창
    clearbotton();
  }
  else{//아닐시 실행창
    dirty_draw_m();
  }
}
if(150==clearate_point){//150 이상일시 발생창
  var death_p=confirm("당장 청소하지 않으면 게임이 끝납니다!!");//청소유무 확인창
    if(death_p){//확인 누를시 실행창
      clearbotton();
    }
    else{//아닐시 실행창
      die_draw_m();//죽은 화면으로 전환.
      //전캐릭터 안보이게하기
    }
}

}

function clear_egg(){//1단계 진화시 발생창
  document.getElementById("container_egg").style.display="none";
  document.getElementById("container_baby").style.display="block";
}
function clear_baby(){//2단계 진화시 발생창
    document.getElementById("container_baby").style.display="none";
    document.getElementById("container_girl").style.display="block";
}
function clear_girl(){//3단계 진화시 발생창
    document.getElementById("container_girl").style.display="none";
    document.getElementById("container_adult").style.display="block";
}
function clear_all(){//오염수치가 150일시 발생창
      document.getElementById("container_girl").style.display="none";
      document.getElementById("container_baby").style.display="none";
      document.getElementById("container_egg").style.display="none";
      document.getElementById("container_adult").style.display="none";
}

function feedfood(){//밥먹이는창
  gradrate = count++;
  grade_point.innerText=gradrate;
  if(gradrate==30){//밥먹인수치가 30 일떄 발생창
  var evol_1 = confirm("진화를 할수 있습니다.확인을 누르던지 1번 진화버튼을 누르세요");//진화유무 확인창
  if(evol_1){//확인시
    evolution_1();
  }else{//아닐시
    alert("곧 진화수치에 도달합니다. 진화시켜주세요.");
  }
  }
  if(gradrate==60){//60일떄 발생
    var evol_2 = confirm("진화를 할수 있습니다. 확인을 누르던지 2번 진화버튼을 누르세요");//진화 유무 확인창
    if(evol_2){//확인시
      evolution_2();
    }else{//아닐시
      alert("곧 진화수치에 도달합니다. 진화시켜주세요.");
    }
  }if(gradrate==90){//90일때 발생창
    var evol_3=confirm("진화를 할수 있습니다. 확인을 누르던지 3번 진화버튼을 누르세요");//진화유무 확인창
    if(evol_3){//확인시
      evolution_3();
    }else{//아닐시
      alert("곧 진화수치에 도달합니다. 진화시켜주세요.")
    }
  }if(gradrate>=100){//100번이상 먹이면 게임끝
    alert("Game End");
    clear_all();
  }
}
function clearbotton(){//오염수치가 높을때 초기화 버튼
  document.getElementById('clearate').innerHTML=0;
  clearate_point=0;
}
function evolution_1(){//1단계 진화

    if(gradrate<=60&&gradrate>=30){//30이상 60이하일경우 1단꼐진화
      clear_egg();
    }else if(gradrate>60)
    {//60개이상 먹이면 2단계로 바로 점프
      alert("옆 진화버튼을 누르세요.");
  }
    else{//30개 미만일시 진화불가
      alert("30개이상 먹이시오");
    }
}
function evolution_2(){//2단계 진화
  if(gradrate<=90&&gradrate>=60){//60개이상 90개 이하일시
      clear_baby();
  }else if(gradrate>90){//90이상일경우 3단계로 바로 점프
    alert("옆 진화버튼을 누르세요");
  }else{//60개 이하인데도 2번 진화버튼을 클릭시
    alert("60개 이상 먹이시오");
  }

}
function evolution_3(){//마지막 진화
  if(gradrate<=100&&gradrate>=90){//90개 이상 100개 이하인 경우
      clear_girl();
  }else if(gradrate>100){//100개 이상인경우
    alert("Game End");
  }else{//90개이하인 상태에서 3번 진화버튼을 클릭시
    alert("90개 이상 먹이시오");
  }

}
function dirty_draw_m(){//더러운 화면 출력
  var canvas= document.getElementById("GameCanvas");
  if(canvas.getContext){
    var ctx=canvas.getContext('2d');
    var img = new Image();

    img.onload = function(){
      ctx.drawImage(img,0,0,1920,1080);
    }
    img.src="res/bg_dirty.jpg";
    }
  }
  function clear_draw_m(){//청소된 화면 출력
    var canvas= document.getElementById("GameCanvas");
    if(canvas.getContext){
      var ctx = canvas.getContext('2d');
      var img = new Image();

      img.onload = function(){
        ctx.drawImage(img,0,0,1920,1080);
      }
      img.src="res/bg_clean.jpg";
      }
  }
  function die_draw_m(){//죽었을시 화면 출력
    var canvas= document.getElementById("GameCanvas");
    if(canvas.getContext){
      var ctx = canvas.getContext('2d');
      var img = new Image();

      img.onload = function(){
        ctx.drawImage(img,0,0,1920,1080);
      }
      img.src="res/bg_die.jpg";
      }
  }

  function save_user_data(){//회원가입
    if (id.value==""||pw.value==""){
      alert("아이디 또는 패스워드를 입력해주세요");
    }
    else{
        var data=id.value+"|"+pw.value;
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
          var st = xmlhttp.responseText;
            alert(st);
          }
        };
        xmlhttp.open("GET", "SavePlayerId.php?q=" + data, true);
        xmlhttp.send();
    }
  }
  //로그인후 안내창
  function todolist(){//제출
    if (id.value==""||pw.value==""){
      alert("아이디 또는 패스워드를 입력해주세요");
    }
    else{
      var data=id.value+"|"+pw.value;
      var xmlhttp = new XMLHttpRequest();
      xmlhttp.onreadystatechange = function() {
      if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
        var st = xmlhttp.responseText;
        if(st!="Login Ok"){
          alert(st);
        }
        else{
          curent_id=id.value;//현재 아이디 저장, 파일 저장에 이용될 것
          login_div.style.display="none";
          manual.style.display="block";
        }
      }
      };
      xmlhttp.open("GET", "Gamelogin.php?q=" + data, true);
      xmlhttp.send();
    }

  }
  function startgame(){//메뉴얼 보고난후
    document.getElementById("playgame").style.display="block";
    document.getElementById("manual").style.display="none";
  }
