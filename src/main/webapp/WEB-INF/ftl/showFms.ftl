<#import "spring.ftl" as spring/>
<html>
<head>
    <title>显示家庭成员列表</title>
</head>
<body>
<h2>显示家庭成员列表</h2>

    <div style="margin:0 auto;margin-top:40px;margin-left:12em;margin-right:12em;float:left;background-color: aliceblue;">
        <table style="padding: 0px;border: 1px red;">
            <tr>
                <td>编号</td>
                <td>名称</td>
                <td>密码</td>
                <td>性别</td>
                <td>头像</td>
            </tr>
            <#list fms as fm>
                <tr>
                    <td>${fm.fmno}</td>
                    <td>${fm.fmname}</td>
                    <td>${fm.fmpwd}</td>
                    <td>${fm.fmsex}</td>
                    <td><img src="data:image/jpg;base64,${fm.fmimg}" /></td>
                </tr>
            </#list>
        </table>
    </div>

</body>
</html>
