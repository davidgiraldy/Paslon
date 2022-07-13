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
<% Connect con = Connect.getConnection(); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        .card-body{
            background-color: rgb(96, 255, 202);
        }

        .card-body:hover{
            background-color: rgb(135, 145, 238);
        }

        .borders{
            border: 1px solid black;
        }
    </style>
</head>
<body>
    <%
        String query = String.format("SELECT * FROM menus");
        ResultSet sMenu = con.executeQuery(query);
    %>
    <div class="container">
        <div class="text-center">
            <h1>Our <span style="color: red;">Menu</span></h1>

            <div class="row">
                <%
                    while(sMenu.next()){
                %>
                <form action="paymentv2.jsp" method="post" class="text-center" onsubmit="return validasi()">
                    <div class="col-md-4 offset-md-4 mt-3">
                        <div class="card">
                            <img src="assets/menu1.jpg" alt="" class="card-img-top">
                            <div class="card-body borders rounded">
                                <h5 class="card-title fw-bolder"><%= sMenu.getString("menu") %></h5>
                                <p class="card-text">
                                    <%= sMenu.getString("deskripsi") %>
                                </p>
                                <p class="fw-bolder" style="color: green;">
                                    Harga : <span style="color: black;"><%= sMenu.getString("harga") %></span>
                                </p>
                                <div class="col-md-2 d-flex aligns-items-center justify-content-center" style="margin-top: 20px;">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="menu" value="<%= sMenu.getString("menu") %>"
                                            style="height: 2.7rem; width: 3rem;">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                    Integer userid = 0;
                    // get attribute from session integer
                    if(session.getAttribute("userid") != null){
                        userid = (Integer) session.getAttribute("userid");

                        // Convert userid into string
                        
                    
                    }
                    String userid_str = userid.toString();
                %>
                <div class="col-md-10">
                    <input type="hidden" name="isCheck" value="<%= userid%>%">
                </div>
                
                <%
                    }
                %>
                <br>
                <input type="submit" value="CHECK-IN ORDER" class="btn btn-success">
                <div class="mb-5"></div>
            </form>
            </div>
        </div>
    </div>
    <%@include file="footer.html" %>
    <script>
        // check if checkbox is checked at least 1 vanilla html

        function validasi(){
            var checkbox = document.getElementsByName("menu");
            var isCheck = document.getElementsByName("isCheck");

            // take integer isCheck from isCheck name
            var isCheck_int = parseInt(isCheck[0].value);
            var okay = false;
            for(var i = 0; i < checkbox.length; i++){
                if(checkbox[i].checked){
                    okay = true;
                    break;
                }
            }

            if(isCheck_int == 0){
                alert("Please login first");
                return false;
            }

            if(!okay){
                alert("Choose at least 1 menu");
                return false;
            }            

            return true;
        }
        
    </script>
</body>
</html>