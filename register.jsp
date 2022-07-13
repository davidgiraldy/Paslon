<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Document</title>
</head>
<body>
    <%@include file="header.jsp" %>
    <!-- Make register form with name, email, phone number, and password -->
    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-header" style="background-color: #C5D8A4;">
                        <h3 class="text-center fw-bolder">Sign <span class="" style="color: #fff;">Up</span></h3>
                    </div>
                    <div class="card-body">
                        <form action="registerController.jsp" method="POST">
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text" name="name" class="form-control" placeholder="Name">
                            </div>
                            <br>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" name="email" class="form-control" placeholder="Email">
                            </div>
                            <br>
                            <div class="form-group">
                                <label for="phone">Phone Number</label>
                                <input type="text" name="phonenumber" class="form-control" placeholder="Phone Number">
                            </div>
                            <br>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" name="password" class="form-control" placeholder="Password">
                            </div>
                            <br>
                            <div class="form-group text-center">
                                <button type="submit" class="btn btn-success">Register</button>
                            </div>
                            
                        </form>
                        <%
                                    String error = "";
                                    String success = "";

                                    error = request.getParameter("error");
                                    success = request.getParameter("success");

                                    if(error == null){
                                        error = "";
                                    }
                                    if(success == null){
                                        success = "";
                                    }
                        %>
                        <div class="text-center text-success mt-3">
                            <p>
                                <%
                                    out.println(success);
                                %>
                            </p>
                        </div>
                        <div class="text-center text-danger mt-3">
                            <p>
                                <%
                                    out.println(error);
                                %>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><br><br>
    <%@include file="footer.html" %>
</body>
</html>