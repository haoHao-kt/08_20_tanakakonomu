//ajax送信
$("#search").on('click', function () {
    let setAge = $('[name="selectAge"] option:selected').val();
    let setOption = $('[name="selectCountry"] option:selected').val();

    console.log(setAge, setOption);
    console.log('aaaaaaaaaaaaaaaa');
    $.ajax({
        url: "getComposer.php",
        type: "POST",
        dataType: "json",
        data: {
            post_age: setAge,
            post_country: setOption
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log("ajax通信に失敗しました");
            console.log(textStatus);
            console.log(errorThrown);
        },
        success: function (response) {
            console.log("ajax通信に成功しました");
            console.log(response);

        }
    });
});

