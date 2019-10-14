<%@page pageEncoding="utf-8" isELIgnored="false" contentType="text/html; utf-8" %>
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
                var xhr;
                if (window.XMLHttpRequest) {
                    xhr = new XMLHttpRequest();
                } else {
                    xhr = new ActiveXObject("Microsoft.XmlHttp");
                }
                xhr.open("get", "${pageContext.request.contextPath}/user/check?username=" + username);
                xhr.send();
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        $("#userMessage").text(xhr.responseText);
                    }
                }
                new XMLHttpRequest();

            })
        })

    </script>

</head>
<body>
姓名：<input type="text" name="username" id="input"><span id="userMessage"></span>
</body>
</html>