<?php

//DB接続用インスタンス生成
function createPDO(){
$dbn = 'mysql:dbname=gs_f02_db20;charset=utf8;port=3306;host=localhost';
$user = 'root';
$pwd = 'root';
    try {
        $pdo = new PDO($dbn, $user, $pwd);
    } catch (PDOException $e) {
        exit('dbError:'.$e->getMessage());
    }
return $pdo;
}


//プルダウンオプションの取得
function getOption($sql,$pdo){
    $stmt = $pdo->prepare($sql);
    $status = $stmt->execute();
    $options='';
    if ($status==false) {
    //execute（SQL実行時にエラーがある場合）
    $error = $stmt->errorInfo();
    exit('sqlError:'.$error[2]);
    } else {
    while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $options .= '<option value="'.$result['id'].'">';
        $options .= $result['name'];
        $options .= '</option>';
        }
    };
    return $options;
};
