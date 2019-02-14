<?php
include('functions.php');

$id   = $_GET['id'];

$pdo = createPDO();
$sql = 'DELETE FROM user_table WHERE id =:id';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);

$status = $stmt->execute();
if ($status==false) {
    errorMsg($stmt);
} else {
    header('Location: userList.php');
    exit;
}
