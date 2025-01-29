<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Free HTML5 Bootstrap Admin Template</title>


    <!-- The styles -->

<%--    <link href='./css/theme1.css' rel='stylesheet'>--%>


    <link href="./css/charisma-app.css" rel="stylesheet">

    <link href='./css/bootstrap-darkly.min.css' rel='stylesheet'>


    <!-- jQuery -->
    <script src="./js/jquery.js"></script>

    <!-- The fav icon -->
    <link rel="shortcut icon" href="./img/favicon.ico">

</head>

<body>
<div class="ch-container">
    <div class="row">

        <div class="row">
            <div class="col-md-12 center login-header">
                <h2>Welcome to Charisma</h2>
            </div>
            <!--/span-->
        </div><!--/row-->

        <div class="row">
            <div class="well col-md-5 center login-box">
                <div class="alert alert-info">
                    <%-- Please login with your Username and Password.--%>
                  请输入你的用户名和密码登陆系统。

                </div>
                <form class="form-horizontal" action="index.jsp" method="post">
                    <fieldset>
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user red"></i></span>
                            <input type="text" class="form-control" placeholder="用户名">
                        </div>
                        <div class="clearfix"></div>
                        <br>

                        <div class="input-group input-group-lg">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock red"></i></span>
                            <input type="password" class="form-control" placeholder="密码">
                        </div>
                        <div class="clearfix"></div>

                        <div class="input-prepend">
                            <label class="remember" for="remember"><input type="checkbox" id="remember"> Remember
                                me</label>
                        </div>
                        <div class="clearfix"></div>

                        <p class="center col-md-5">
                            <button type="submit" class="btn btn-primary">Login</button>
                        </p>
                    </fieldset>
                </form>
            </div>

        </div>
    </div>
</div>
</body>
</html>
