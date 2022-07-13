<%
    if(session.getAttribute("userid") == null){
        response.sendRedirect("login.jsp");
    } else{
%>
        <%@include file="header_user.jsp" %>
<%
    }

    Integer userid = (Integer) session.getAttribute("userid");
%>

<% Connect con = Connect.getConnection(); %>

<%
    // take name from database
    String query = "select * from users where userid = '" + userid + "'";
    ResultSet rs = con.executeQuery(query);
    String name = "";
    String email = "";
    String phonenumber = "";
    while(rs.next()){
        name = rs.getString("name");
        email = rs.getString("email");
        phonenumber = rs.getString("phonenumber");
    }
%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    

    <style>
        .card:hover {
            background-color: rgb(0, 230, 153);
        }
    </style>
</head>
<body>
    <div class="container text-center mt-4">
        <h1>Welcome, <span class="fw-bolder" style="color: green;"><%= name%></span>!</h1>
    </div>

    <div class="container mt-4">
        <!-- make table with thead title, description -->
        <table class="table table-hover">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Keterangan</th>
                    <th scope="col">Deskripsi</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Nama</td>
                    <td><%= name%></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><%= email%></td>
                </tr>
                <tr>
                    <td>No. HP</td>
                    <td><%= phonenumber%></td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="container">
        <div class="text-center">
            <h4>Ganti Password</h4>
        </div>
        <!-- make form for change password -->
        <div class="row d-flex justify-content-center">
            <div class="col" style="max-width: 30%;">
                <form action="changePassword.jsp" method="post">
                    <div class="form-group mt-3">
                        <label for="currentPassword">Password Sekarang</label>
                        <input type="password" class="form-control" id="currentPassword" name="currentPassword" placeholder="Password Sekarang">
                    <div class="form-group mt-3">
                        <label for="password">Password Baru</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Password Baru">
                    </div>
                    <div class="form-group mt-3">
                        <label for="password_confirm">Konfirmasi Password Baru</label>
                        <input type="password" class="form-control" id="password_confirm" name="password_confirm" placeholder="Konfirmasi Password Baru">
                    </div>
                    <button type="submit" class="btn btn-success mt-3 mb-3">Submit</button>

                    <div class="text-center">
                        <p class="text-success">
                            <%
                                String success = "";
                                success = request.getParameter("success");
                                if(success == null){
                                    success = null;
                                }
                                else{
                                    out.println(success);
                                }
                            %>
                        </p>
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
            </div>
        </div>
    </div>

    <div class="container mt-5">
        <!-- Daftar Booking -->
        <div class="text-center">
            <h4>Daftar Booking Anda :</h4>
        </div>

        <%
            String query2 = "select * from payments where userid = '" + userid + "'";
            rs = con.executeQuery(query2);
        %>
        <%
            int size =0;
            if (rs != null) {
                rs.last();
                size = rs.getRow(); // get row id 
                rs.beforeFirst(); // move cursor to the first row
            }

        %>
        <%
            if(size == 0){ 
        %>
            <div class="text-center">
                <h5>Anda belum memiliki booking</h5>
            </div>
        <%
            }
        %>
        <!-- make card -->
        <div class="row">
            <%
                while(rs.next()){
                    Integer paymentid = rs.getInt("paymentid");
                    String id = rs.getString("paymentid");
                    String paymentdate = rs.getString("order_date");
                    String booking_date = rs.getString("booking_date");
                    String cart = rs.getString("cart");

                    String[] cart_split = cart.split(",");
                    
            %>
                <div class="d-flex justify-content-center">
                    <div class="col-md-7">
                        <form action="deleteController.jsp" method="post">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title mb-3">Booking ID : <%= paymentid%></h5>
                                    <h6 class="card-subtitle mb-3 fw-bolder" style="color: rgb(56, 125, 255);">Tanggal Konfirmasi : <span style="color: black;"><%= paymentdate%></span></h6>
                                    <h6 class="card-subtitle mb-3 fw-bolder" style="color: rgb(56, 125, 255);">Booking Plan : <span style="color: black;"><%= booking_date%></span></h6>
                                    <p class="card-text mb-2 fw-bolder" style="color: green;">Cart :</p>
                                    <%
                                        for(int i =0; i<cart_split.length; i++){
                                    %>
                                        <div style="color: black;">
                                            <p><%= i+1%>. <%= cart_split[i]%></p>
                                        </div>
                                    <%        
                                        }
                                    %>
                                    <%-- Make button for delete row base on paymentid
                                    <a href="deleteController.jsp?test123=<%= rs.getString("paymentid")%>">
                                        <!-- make button -->
                                        <button type="button" class="btn btn-danger">Delete</button>
                                    </a> --%>


                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        Cancel Booking
                                    </button>
                                    
                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Cancel Confirmation</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                            <p>Are you sure to cancel booking ?</p>
                                            </div>
                                            <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                                            <a href="deleteController.jsp?test123=<%= rs.getString("paymentid")%>">
                                                <!-- make button -->
                                                <button type="button" class="btn btn-danger">Yes, Cancel!</button>
                                            </a>
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </form>
                        <br>
                    </div>
                </div>
            <%
                }
            %>
        </div>
    </div>

    
</body>
</html>