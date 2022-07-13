<%@include file="connect.jsp"%>
<% Connect con = Connect.getConnection(); %>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String phonenumber = request.getParameter("phonenumber");

    ResultSet rs = con.executeQuery("select * from users");

    while(rs.next()) {
        if(rs.getString("email").equals(email))
        {
            response.sendRedirect("register.jsp?error=Email already exists");
        }
    }

    String query = "insert into users (`name`, `email`, `phonenumber`, `password`) values('"+name+"','"+email+"','"+phonenumber+"','"+password+"')";
    con.executeUpdate(query);
    
    response.sendRedirect("register.jsp?success=Registration Successful");
%>