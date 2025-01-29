<#import "spring.ftl" as spring/>
<html>
<head>
    <title>添加用户</title>
</head>
<body>
<h2>添加用户</h2>
<form action="${request.contextPath}/user/save" method="post">
    <div style="margin:0 auto;margin-top:40px;margin-left:12em;margin-right:12em;float:left;background-color: aliceblue;">
        <table style="padding: 0px;border: 1px red;">
            <tr>
                <td>用户名:</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>年龄:</td>
                <td><input type="text" name="age"></td>
            </tr>
            <tr>
                <td>生日:</td>
                <td><input type="text" name="bir"></td>
            </tr>
            <tr>
                <td><input type="submit" value="添加用户"></td>
                <td><input type="reset"></td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>
