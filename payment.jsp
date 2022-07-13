<%
    if(session.getAttribute("userid") == null){
        response.sendRedirect("login.jsp");
    }else{
%>
        <%@include file="header_user.jsp" %>
<%
    }

    Integer userid = (Integer) session.getAttribute("userid");
%>

<% Connect con = Connect.getConnection(); %>

<%
    String[] menu = request.getParameterValues("menu");
    Integer[] harga = new Integer[10];

    for(int i=0; i<menu.length; i++){
        switch(menu[i]){
            case "Blow Dry":
                harga[i] = 70000;
                break;
            case "Cut And Style":
                harga[i] = 100000;
                break;
            case "Bang Trim":
                harga[i] = 50000;
                break;
            case "Curl Set or Upstyle":
                harga[i] = 170000;
                break;
            case "Relaxation Treatment":
                harga[i] = 150000;
                break;
            case "Hair Detox Treatment":
                harga[i] = 220000;
                break;
            case "Kerastase Treatment":
                harga[i] = 370000;
                break;
            case "Scalp Scrub":
                harga[i] = 190000;
                break;
            case "Pompadour":
                harga[i] = 60000;
                break;
            case "Quiff":
                harga[i] = 60000;
                break;
            case "Comb Over":
                harga[i] = 60000;
                break;
            case "Side Part":
                harga[i] = 60000;
                break;
            case "Brow Shapping":
                harga[i] = 85000;
                break;
            case "Lash Extension":
                harga[i] = 190000;
                break;
            case "Totok Wajah":
                harga[i] = 130000;
                break;
            case "Facial":
                harga[i] = 200000;
                break;
        }
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
        /* make .daftar hover with background color green, all side border shadow black 1px */
        .card-body:hover {
            background-color: #aaddff;
            border: 1px solid black;
        }
    </style>
</head>
<body>

    <!-- Make menu card with menu and price -->
    <div class="judul mt-4">
        <div class="container">
            <div class="text-center">
                <h1>Keranjang</h1>
            </div>
        </div>
    </div>
    <div class="container mt-3">
        <div class="row">
            <%
                for(int i=0; i<menu.length; i++){
            %>
                <div class="daftar">
                    <div class="col-md-4 offset-md-4">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-3">
                                        <img src="https://icons.iconarchive.com/icons/bambulu/sailor-moon/256/sailor-moon-icon.png" alt="" style="max-width: 80px;">
                                    </div>
                                    <div class="col-md-9 mt-2">
                                        <h5 class="card-title"><%= menu[i] %></h5>
                                        <p class="card-text"><span class="rp" style="color: green;">Rp. </span><%= harga[i] %></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            <%
                }
            %>
        </div>

        <%
            Integer total = 0;
            for(int i=0; i<menu.length; i++){
                total += harga[i];
            }
        %>
        
        <!-- <div class="container">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <form action="payment_process.jsp" method="post">
                        <button type="submit" class="btn btn-primary btn-block mb-3">Booking Sekarang</button>
                    </form>
                    <h5>Total Harga : <span class="rp" style="color: green;">Rp. </span><%= total %></h5>
                </div>
            </div>
        </div> -->

        <%
            // concat string from array
            String menu_string = "";
            for(int i=0; i<menu.length; i++){
                menu_string += menu[i] + ",";
            }

            // String query = "INSERT INTO payments (userid, cart) VALUES (" + userid + ", '" + menu_string + "')";
            // execute query
            // con.executeUpdate(query);

        %>

        <!-- Button trigger modal -->
        <div class="container">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <h5 class="mb-3">Total Harga : <span class="rp" style="color: green;">Rp. </span><%= total %></h5>
                    <button type="button" class="btn btn-primary mb-4" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                        CHECKOUT BOOKING
                    </button>
                    
                </div>
            </div>
        </div>
        </div>
        
        <%@include file="footer.html" %>
        <!-- Modal -->
        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Konfirmasi</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <!-- Datepicker -->
                        <!-- Make 3 drop down menu, date month and year -->
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <form action="payment_process.jsp" method="post">
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-3">
                                                    <label for="exampleFormControlSelect1">Tanggal</label>
                                                    <select class="form-control" name="tanggal" id="exampleFormControlSelect1">
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                        <option value="10">10</option>
                                                        <option value="11">11</option>
                                                        <option value="12">12</option>
                                                        <option value="13">13</option>
                                                        <option value="14">14</option>
                                                        <option value="15">15</option>
                                                        <option value="16">16</option>
                                                        <option value="17">17</option>
                                                        <option value="18">18</option>
                                                        <option value="19">19</option>
                                                        <option value="20">20</option>
                                                        <option value="21">21</option>
                                                        <option value="22">22</option>
                                                        <option value="23">23</option>
                                                        <option value="24">24</option>
                                                        <option value="25">25</option>
                                                        <option value="26">26</option>
                                                        <option value="27">27</option>
                                                        <option value="28">28</option>
                                                        <option value="29">29</option>
                                                        <option value="30">30</option>
                                                        <option value="31">31</option>
                                                    </select>
                                                </div>
                                                <div class="col-6">
                                                    <label for="exampleFormControlSelect2">Bulan</label>
                                                    <select class="form-control" name="bulan" id="exampleFormControlSelect2">
                                                        <option value="Januari">Januari</option>
                                                        <option value="Februari">Februari</option>
                                                        <option value="Maret">Maret</option>
                                                        <option value="April">April</option>
                                                        <option value="Mei">Mei</option>
                                                        <option value="Juni">Juni</option>
                                                        <option value="Juli">Juli</option>
                                                        <option value="Agustus">Agustus</option>
                                                        <option value="September">September</option>
                                                        <option value="Oktober">Oktober</option>
                                                        <option value="November">November</option>
                                                        <option value="Desember">Desember</option>
                                                    </select>
                                                </div>
                                                <div class="col-3">
                                                    <label for="exampleFormControlSelect3">Tahun</label>
                                                    <select class="form-control" name="tahun" id="exampleFormControlSelect3">
                                                        <option value="2020">2020</option>
                                                        <option value="2021">2021</option>
                                                        <option value="2022">2022</option>
                                                        <option value="2023">2023</option>
                                                        <option value="2024">2024</option>
                                                        <option value="2025">2025</option>
                                                        <option value="2026">2026</option>
                                                        <option value="2027">2027</option>
                                                        <option value="2028">2028</option>
                                                        <option value="2029">2029</option>
                                                        <option value="2030">2030</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <p>Apakah anda sudah yakin ?</p>
                                        <p class="mb-3">Total Harga : <span class="rp" style="color: green;">Rp. </span><%= total %></p>
                                        <input type="hidden" name="cart" value="<%= menu_string%>" />
                                        <%
                                            // convert total into string
                                            String total_string = total.toString();
                                        %>
                                        <input type="hidden" name="harga" value="<%= total_string%>" />
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Belum yakin</button>
                                        <button type="submit" class="btn btn-success btn-block">Booking Sekarang</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        
        <!-- <form action="payment_process.jsp" method="post">
            <button type="submit" class="btn btn-primary btn-block mb-3">Booking Sekarang</button>
        </form> -->
        
        
    

    
    
</body>
</html>

