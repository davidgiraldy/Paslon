<%@include file="connect.jsp"%>
<% Connect con = Connect.getConnection(); %>

<%
    final String email = request.getParameter("email");
    final String password = request.getParameter("password");
    final String query = "select * from users where email = '" + email + "' and password = '" + password + "' limit 1";
    ResultSet rs = con.executeQuery(query);

    try {
        if (rs.next()) {
            Integer id = rs.getInt("userid");
            session.setAttribute("userid", id);
            response.sendRedirect("index.jsp");
        }
        else {
            response.sendRedirect("login.jsp?error=Wrong Password");
        }
    } catch (Exception e){
        out.println("Error");
        e.printStackTrace();
        response.sendRedirect("login.jsp?error=Wrong Password");
    }
%>