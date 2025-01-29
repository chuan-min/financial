<#import "spring.ftl" as spring/>
<html>
<head>
    <title>添加家庭成员</title>
</head>
<body>

<form action="user/addFm" enctype="multipart/form-data" method="post">
    <div style="margin:0 auto;margin-top:40px;margin-left:12em;margin-right:12em;float:left;background-color: aliceblue;">
        <table style="padding: 0px;border: 1px red;">
            <tr>
                <td>用户名:</td>
                <td><input type="text" name="fmname"></td>
            </tr>
            <tr>
                <td>密码:</td>
                <td><input type="text" name="fmpwd"></td>
            </tr>
            <tr>
                <td>性别:</td>
                <td><input type="text" name="fmsex"></td>
            </tr>
            <tr>
                <td>头像:</td>
                <td><input type="mediumtext" name="fmimg"></td>
            </tr>
            <tr>
                <td><input type="submit" value="添加家庭成员"></td>
                <td><input type="reset"></td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>
