<?php
session_start();
include('functions.php');

$ID = $_POST['id'];
$PWD = $_POST['pass'];

$pdo = createPDO();

$sql = "select * from user_table where lid=:id and lpw=:pw";

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':id', $ID, PDO::PARAM_STR);    //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':pw', $PWD, PDO::PARAM_STR);   //Integer（数値の場合 PDO::PARAM_INT)

$status = $stmt->execute();


$view;
if ($status==false) {
    //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
    $error = $stmt->errorInfo();
    exit('sqlError:'.$error[2]);
} else {
    //５．index.phpへリダイレクト
        while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $_SESSION['id'] = $result['id'];
        $_SESSION['name'] = $result['name'];
        $_SESSION['lid'] = $result['lid'];
        $_SESSION['kanri_flg'] = $result['kanri_flg'];
        $_SESSION['life_flg'] = $result['life_flg'];
            // var_dump( $_SESSION);
    }
    // var_dump($result);
    // echo $view;
    header('Location: main.php');
}


