<?php
include('functions.php');
if (
    !isset($_POST['username'])     || 
    !isset($_POST['userid'])       || 
    !isset($_POST['password'])     || 
    $_POST['username']==''         ||
    $_POST['userid']==''           ||
    $_POST['password']==''
) {
    exit('ParamError');
}

if(isset($_POST['kanriflg'])){
    $kanri = 1;
}else{
    $kanri = 0;
}

if(isset($_POST['lifeflg'])){
    $life = 1;
}else{
    $life = 0;
}

$username  = $_POST['username'];
$userid    = $_POST['userid'];
$password  = $_POST['password'];
$id        = $_POST['id'];

$pdo = createPDO();

$sql = 'UPDATE user_table 
            SET 
                name      = :uname,
                lid       = :uid,
                lpw       = :pass,
                kanri_flg = :kanri,
                life_flg  = :life
            WHERE
                id  = :id';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':uname', $username, PDO::PARAM_STR);
$stmt->bindValue(':uid', $userid, PDO::PARAM_STR);
$stmt->bindValue(':pass', $password, PDO::PARAM_STR);
$stmt->bindValue(':kanri', $kanri, PDO::PARAM_STR);
$stmt->bindValue(':life', $life, PDO::PARAM_STR);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);

$status = $stmt->execute();
if ($status==false) {
    errorMsg($stmt);
} else {
    header('Location: userList.php');
    exit;
}
