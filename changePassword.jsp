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
    String query = "select * from users where userid = '" + userid + "'";
    ResultSet rs = con.executeQuery(query);
    String oldPassword = "";
    while(rs.next()){
        oldPassword = rs.getString("password");
    }

    String currentPassword = request.getParameter("currentPassword");
    String password = request.getParameter("password");
    String password_confirm = request.getParameter("password_confirm");
%>

<%
    // if oldPassword is not equal to currentPassword
    if(!oldPassword.equals(currentPassword)){
        response.sendRedirect("profile.jsp?error=Wrong Password!");
    }

    else if(!password.equals(password_confirm)){
        response.sendRedirect("profile.jsp?error=Password did not match!");
    }

    else if(oldPassword.equals(currentPassword) && password.equals(password_confirm)){
        String query2 = "update users set password = '" + password + "' where userid = '" + userid + "'";
        con.executeUpdate(query2);
        response.sendRedirect("profile.jsp?success=Password changed successfully!");
    }
%>