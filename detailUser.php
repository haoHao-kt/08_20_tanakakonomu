<?php
include('functions.php');
$id = $_GET['id'];
$pdo = createPDO();
$sql = 'SELECT * FROM user_table WHERE id = :id';
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();
if ($status==false) {
    errorMsg($stmt);
} else {
    $rs = $stmt->fetch();
}

if($rs['kanri_flg']==1){
    $chk = "checked";
}else{
    $chk = "";
}
if($rs['life_flg']==1){
    $life = "checked";
}else{
    $life = "";
}

?>


<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ユーザー更新ページ</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <style>
        div{
            padding: 10px;
            font-size:16px;
            }
    </style>
</head>

<body>

    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">ユーザー更新</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="setUser.html">ユーザー登録</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="userList.php">ユーザー一覧</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <form method="post" action="updateUser.php">
        <div class="form-group">
            <label for="task">ユーザーネーム</label>
            <!-- 受け取った値をvaluesに埋め込もう -->
            <input type="text" class="form-control" id="username" name="username" placeholder="Username" value ="<?=$rs['name']?>">
        </div>
        <div class="form-group">
            <label for="deadline">ログインID</label>
            <!-- 受け取った値をvaluesに埋め込もう -->
            <input type="text" class="form-control" id="userid" name="userid" placeholder="UserID" value ="<?=$rs['lid']?>">
        </div>
        <div class="form-group">
            <label for="comment">パスワード</label>
            <!-- 受け取った値挿入しよう -->
            <input type="password" class="form-control" id="InputPassword" name="password" placeholder="Password" value ="<?=$rs['lpw']?>">
        </div>
        <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="kanriflg" name="kanriflg" <?=$chk?>>
            <label class="form-check-label" for="kanriflg">管理ユーザー</label>
        </div>
        <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="lifeflg" name="lifeflg" <?=$life?>>
            <label class="form-check-label" for="lifeflg">無効アカウント</label>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
        <!-- idは変えたくない = ユーザーから見えないようにする-->
        <input type="hidden" name="id" value ="<?=$rs['id']?>">
    </form>

</body>

</html>