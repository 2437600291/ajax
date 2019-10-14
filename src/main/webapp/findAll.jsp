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
            $("#input").click(function () {
                var xhr;
                if (XMLHttpRequest) {
                    xhr = new XMLHttpRequest();
                } else {
                    xhr = new ActiveXObject("Microsoft.XmlHttp");
                }
                xhr.open("get", "${pageContext.request.contextPath}/user/findAll")
                xhr.send();
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        console.log(xhr.responseText);
                        $("ul,hr").remove();
                        var users = eval("(" + xhr.responseText + ")");
                        for (var i = 0; i < users.length; i++) {
                            var user = users[i];
                            var id = $("<li>").text(user.id);
                            var username = $("<li>").text(user.username);
                            var bir = $("<li>").text(user.bir);
                            var password = $("<li>").text(user.password);
                            var ul = $("<ul>");
                            var hr = $("<hr>");
                            ul.append(id).append(username).append(bir).append(password);
                            $("#bd").append(ul).append(hr);
                        }

                    }
                }
            })
        })

    </script>

</head>
<body id="bd">
<input type="button" value="点我展示" id="input">
<ul id="ul"></ul>
</body>
</html>