<%@page pageEncoding="UTF-8" contentType="text/html; utf-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script>
        $(function () {
            $("#input").blur(function () {
                var username = $("#input").val();
                //构建xhr
                var xhr;
                if (XMLHttpRequest) {
                    xhr = new XMLHttpRequest();
                } else {
                    xhr = new ActiveXObject("Microsoft.XmlHttp");
                }
                //发送请求
                xhr.open("post", "${pageContext.request.contextPath}/user/check");
                xhr.setRequestHeader("content-Type", "application/x-www-form-urlencoded");
                xhr.send("username=" + username);
                //响应页面
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        $("#userMessage").html(xhr.responseText)
                    }
                }
            })
        })

    </script>
</head>
<body>
用户名：<input type="text" name="username" id="input"><span id="userMessage"></span>
</body>
</html>