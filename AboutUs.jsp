    <%
        if(session.getAttribute("userid") == null){
    %>
            <%@include file="header.jsp" %>

    <%
        }
        else{
    %>
            <%@include file="header_user.jsp" %>
            

    <%
        }
    %>

    <%
        Integer userid = 0;
        // get attribute from session integer
        if(session.getAttribute("userid") != null){
            userid = (Integer) session.getAttribute("userid");

            // Convert userid into string
            
        
        }
        String userid_str = userid.toString();
    %>


    <% Connect con = Connect.getConnection(); %>
<!doctype html>
<html lang="en">
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit-no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" 
    integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/aboutus_style.css">

    <title>Applikasi PASLON</title>
    </head>

<body>

    <div class="row">
            <div class="col-5 p-5 bg-home">
                <h1 class="text1">ABOUT US</h1> <br><br>
                <p>In 2022, a group of students have a vision to create a salon which can be reserved in order to save time and be more efficient. With the dedication of like-minded creative stylists the vision became a reality. We innovate, educate, respect each other and have fun along the way.<br><br>
                    PASLON provides complete beauty treatments, from head to toe that will enhance your appearance. All of the packages we offer use traditional Indonesian herbal ingredients that are handled by stylish and professional therapists in their fields.</p><br>
                <p>Order now the treatment you want!</p>
                <a class="btn btn" style="background-color:#C5D8A4" href="menusv2.jsp" role="button">Book Now</a>
            </div>
            <div class="col-5 d-flex justify-content-end">
                <img src="assets/AboutUs.png" alt="" class="foto-home img-fluid" style="width:500px;height:300px;margin-top:150px;">
            </div>
    </div>



    <%-- Make comment area --%>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 mt-5">
                <h1 class="text1">Comment</h1>
                <form action="comment.jsp?userid=<%= userid_str%>" method="post">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Komentar yang sehat, tidak menjatuhkan maupun mengandung SARA!</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="comment" style="width: 50%;"></textarea>
                    </div>
                    <button type="submit" class="btn btn-success">Comment</button>
                </form>
                <div class="mb-4"></div>

                
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row bg-light align-items-center h-100">
            <div class="col-md-12 mt-5">
                <h1 class="text1">Isi Komen</h1>
                <%
                    
        
                    //INNER JOIN users ON comments.userid = users.userid
                    String showComment = "SELECT * FROM comments INNER JOIN users ON comments.userid = users.userid";
                    ResultSet sComment = con.executeQuery(showComment);
                    
                    String current_userid = "";
                    String commentid = "";
                    while(sComment.next()){
                        current_userid = sComment.getString("userid");
                        commentid = sComment.getString("commentid");
                %>
                
                <div class="border rounded p-3">
                    <div class="row bg-light align-items-center h-100">
                        <div class="col-md-8">
                            <p class="text-success fw-bolder" style="margin: 0;">
                                <%= sComment.getString("name") %>
                            </p>
                            <p class="text-dark">
                                <%= sComment.getString("comment") %>
                            </p>
                        </div>
                        <div class="col-md-4 text-center d-flex justify-content-end">
                            <%
                                if(current_userid.equals(userid_str)){
                            %>
                            <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                EDIT
                            </button>

                            <div class="me-2"></div>
                            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                DELETE
                            </button>

                            <!-- Modal -->
                            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form action="edit_comment.jsp?commentid=<%= commentid%>" method="post">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="staticBackdropLabel">Edit Comment</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <!-- Make form for editing comment -->
                                                <div class="form-group">
                                                    <label for="exampleFormControlTextarea1">Edit Komentar Kamu!</label>
                                                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="commentUpdate"></textarea>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-success">Edit</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Delete Confirmation</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            Apakah anda yakin akan menghapus komentar ini?
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                            <a href="delete_comment.jsp?commentid=<%= commentid %>" class="btn btn-danger">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
                <br>
        
                <%
                    }
                %>
            </div>
        </div>
    </div>

    <%@include file="footer.html" %>
</body>
</html>