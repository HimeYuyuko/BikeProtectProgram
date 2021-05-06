var f_egg= document.getElementById("f_egg");//이동함수 구현을 위한 f_egg 불러오기
$(document).ready(function(){//f_egg가 불렸을 경우 실행창
  animateDiv($('#f_egg'));
});

function makeNewPosition($container_egg){//container_egg내의 이동 범위지정
  var h = $container_egg.height() - 10;
  var w = $container_egg.width() - 10;

  var nh=Math.floor(Math.random()*h*100);//y축 랜덤지정
  var nw=Math.floor(Math.random()*w*100);//x축 랜덤지정

  return [nh,nw];
}

function animateDiv($target){//f_egg 이동범위 설정
  var newq = makeNewPosition($target.parent());//변화된 xy축 좌표 불러오기
  var oldq = $target.offset();//target의 좌표 불러오기
  var speed = calcSpeed([oldq.top, oldq.left], newq);//이동함수 지정

  $target.animate({//지정된 타겟이 움직일 x,y축 지정
    top: newq[0],
    left: newq[1]
  }, speed,function(){
    animateDiv($target);
  });
};

function calcSpeed(prev,next){//속도 지정

  var x = Math.abs(prev[1] - next[1]);
  var y = Math.abs(prev[0] - next[0]);
  var greatest = x>y? x:y;

  var speedModifier = 30;

  var speed = Math.ceil(greatest/speedModifier);

  return speed;
}
