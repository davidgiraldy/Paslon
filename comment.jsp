<%@include file="connect.jsp"%>
<% Connect con = Connect.getConnection(); %>

<%
    String userid = request.getParameter("userid");
    String comment = request.getParameter("comment");

    String insertComment = String.format("insert into comments (userid, comment) values ('%s', '%s')", userid, comment);
    con.executeUpdate(insertComment);

    response.sendRedirect("AboutUs.jsp");
%>