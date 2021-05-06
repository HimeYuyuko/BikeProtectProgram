var f_baby= document.getElementById("f_adult");//이동함수 구현을 위한 f_adult 불러오기
$(document).ready(function(){//f_adult가 불렸을 경우 실행창
  animateDiv($('#f_adult'));
});
function makeNewPosition($container_adult){//container_adult내의 이동 범위지정
  var h = $container_adult.height() - 10;
  var w = $container_adult.width() - 10;

  var nh=Math.floor(Math.random()*h);//y축 랜덤지정
  var nw=Math.floor(Math.random()*w);//x축 랜덤지정
  return [nh,nw];
}
function animateDiv($target){//f_adult 이동범위 설정
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
function calcSpeed(prev,next){//xy축 이동속도 설정
  var x = Math.abs(prev[1] - next[1]);
  var y = Math.abs(prev[0] - next[0]);
  var greatest = x>y? x:y;

  var speedModifier = 0.3;

  var speed = Math.ceil(greatest/speedModifier);

  return speed;
}
