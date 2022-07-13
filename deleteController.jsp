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
    String id = "";
    id = request.getParameter("test123");
    
    out.println("paymentid: " + id);

    // query to delete from payments base on paymentid
    String query = "DELETE FROM payments WHERE paymentid = " + id;
    con.executeUpdate(query);

    response.sendRedirect("profile.jsp");
%>