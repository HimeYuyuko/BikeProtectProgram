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
          $E_Pw=trim(fgets($user_login_file));
          if($E_Pw==$pw){
            echo "Login Ok";
            die;
          }else{
            echo"Check PassWord";
            die;
          }
      }
    }
    fclose($user_login_file);
    echo"ID를 확인하세요.";

?>
