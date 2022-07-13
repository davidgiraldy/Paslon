<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Document</title>
</head>

<body>
    <%
        if(session.getAttribute("userid") == null){
    %>
            <%@include file="header.jsp" %>
    <%
        }
        else{
    %>
            <%@include file="header_user.jsp" %>
    <%
        }
    %>
<br><br>
        <div class="container">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-header" style="background-color: #C5D8A4;">
                            <h3 class="text-center fw-bolder">Log <span class="fw-bolder" style="color: #fff;">In</span></h3>
                        </div>
                        <div class="card-body">
                            <form action="loginController.jsp" method="POST">
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="email" name="email" class="form-control" placeholder="Email">
                                </div>
                                <br>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type="password" name="password" class="form-control" placeholder="Password">
                                </div>
                                <br>
                                <div class="form-group text-center">
                                    <button type="submit" class="btn btn-success">Login</button>
                                </div>
                                <div class="text-center mt-3">
                                    <p class="text-danger">
                                        <%
                                            String error = "";
                                            error = request.getParameter("error");
                                            if(error == null){
                                                error = null;
                                            }
                                            else{
                                                out.println(error);
                                            }
                                        %>
                                    </p>
                                </div>
                            </form>
                            <br>
                            <div class="text-center">
                                <a href="register.jsp"><p>Don't Have Account ? REGISTER!</p></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
        <br><br><br>
        <%@include file="footer.html" %>
        </div>

</body>

</html>