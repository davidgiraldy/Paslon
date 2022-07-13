<%@include file="connect.jsp"%>
<% Connect con = Connect.getConnection(); %>

<%
    String commentid = request.getParameter("commentid");

    String deleteComment = String.format("delete from comments where commentid = '%s'", commentid);
    con.executeUpdate(deleteComment);

    response.sendRedirect("AboutUs.jsp");
%>