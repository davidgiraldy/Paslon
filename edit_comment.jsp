<%@include file="connect.jsp"%>
<% Connect con = Connect.getConnection(); %>

<%
    String commentid = request.getParameter("commentid");
    String commentUpdate = request.getParameter("commentUpdate");

    String updateComment = String.format("UPDATE comments SET comment = '%s' WHERE commentid = '%s'", commentUpdate, commentid);
    con.executeUpdate(updateComment);

    response.sendRedirect("AboutUs.jsp");
%>