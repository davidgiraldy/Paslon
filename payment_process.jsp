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
    String tanggal = request.getParameter("tanggal");
    String bulan = request.getParameter("bulan");
    String tahun = request.getParameter("tahun");
    String cart = request.getParameter("cart").toString();
    String price = request.getParameter("harga").toString();
    
    // convert price into integer
    Integer harga = Integer.parseInt(price);

    // tanggal + bulan + tahun
    String tanggal_bulan_tahun = tanggal + " " + bulan + " " + tahun;
    out.println(userid);
    out.println(tanggal_bulan_tahun + " " + cart + " " + harga);

    String query = "INSERT into payments (`userid`, `cart`, `booking_date`, `harga`) VALUES " +"(" + userid + ", '" + cart + "', '" + tanggal_bulan_tahun + "', " + harga + ")";
    con.executeUpdate(query);

    response.sendRedirect("profile.jsp");
%>