<?php
//json返す用ヘッダー
// header("Content-Type: application/json; charset=UTF-8");

//include
include('functions.php');

if(
    !isset($_POST['post_age']) || 
    !isset($_POST['post_country'])
){
    exit('ParamError');
}

//ajax送信でPOSTされたデータを受け取る
$age = $_POST['post_age'];
$country = $_POST['post_country'];

$pdo = createPDO();
$sql = "select * from M_COMPOSER where country_id = '$country' and age_id = '$age'";

$options='';
$return_array=[];
    $stmt = $pdo->prepare($sql);
    $status = $stmt->execute();
    if ($status==false) {
    //execute（SQL実行時にエラーがある場合）
    $error = $stmt->errorInfo();
    exit('sqlError:'.$error[2]);
    } else {
    while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $return_array[]=$result;
    }
};

echo json_encode($return_array);
