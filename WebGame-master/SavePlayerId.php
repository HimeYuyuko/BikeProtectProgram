<?php

  $q = $_REQUEST["q"];
  $pd = explode("|",$q);// |기준으로 분할 저장
  $id = $pd[0];
  $pw = $pd[1];

    $user_login_file = fopen("./gamedata/person.txt","a+");
    fgets($user_login_file);
    while(!feof($user_login_file)){
      $E_Id=trim(fgets($user_login_file));
      if($E_Id==$id){
        echo"이미 존재하는 아이디가 있습니다.";
        die;
      }
    }
    fwrite($user_login_file,"\n".$id);
    fwrite($user_login_file,"\n".$pw);
    fclose($user_login_file);
    echo"성공적으로 저장되었습니다.";
    die;

?>
