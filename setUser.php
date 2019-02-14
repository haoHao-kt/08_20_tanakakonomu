<?php

include('functions.php');
if (
    !isset($_POST['username']) || $_POST['username']=='' ||
    !isset($_POST['userid']) || $_POST['userid']=='' ||
    !isset($_POST['password']) || $_POST['password']=='' 
) {
    exit('ParamError');
}
$username = $_POST['username'];
$userid = $_POST['userid'];
$password = $_POST['password'];
$kanriChk = $_POST['kanriflg'];

if($kanriChk=='on'){
    $kanri = 1;
}else{
    $kanri = 0;
}

$pdo = createPDO();
$sql ='INSERT into user_table (id, name, lid, lpw, kanri_flg,life_flg)
VALUES(NULL, :uname, :uid, :pass, :kanri, 0)';
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':uname', $username, PDO::PARAM_STR);
$stmt->bindValue(':uid', $userid, PDO::PARAM_STR);
$stmt->bindValue(':pass', $password, PDO::PARAM_STR);
$stmt->bindValue(':kanri', $kanri, PDO::PARAM_STR);

$status = $stmt->execute();
if ($status==false) {
    $error = $stmt->errorInfo();
    var_dump($error);
    exit('sqlError:'.$error[2]);
} else {
    header('Location: userList.php');
}