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

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Services</title>

    <style>
        p {
            font-size: large;
        }
    </style>
</head>

<body>
        <div class="row" style="background-color: #AA9688">
            <h1 class="p-3 text-center" style="margin-top:20px">SERVICES</h1>
            <div class="col-4" style="margin-left:200px;margin-top:20px">
                <h2>Hair</h2>
                <br>
                <p>Cut & Style, Bang Trim, Blow Dry, Curl Set/Upstyle</p>
                <p>Express Style, Hair Extensions/Tape, Tab & Sew-In,</p>
                <p>K-Top & I-Tip Braids</p>
                <div style="width: 90%;"></div>
                <br>
                <h2>Treatments</h2>
                <br>
                <p>Kerastase Treatment, K18 Mask, Bond Builder Mask,</p>
                <p>Brazilian Blowout, Keratin Complex Treatment,</p>
                <p>Relaxer, Perm</p>
                <div style="width: 90%;"></div>
                <br>
                <h2>Barbering</h2>
                <br>
                <p>Straight Razor Shave, Cut & Groom, Clipper Cut,</p>
                <p>Neck Clean Up, Beard Clean Up, Beard Detailing,</p>
                <p>Cut & Groom / Beard Trim Series</p>
                <br>
                <br>
            </div>
            <div class="col-4" style="margin-left:200px;margin-top:20px">
                <h2>Color</h2>
                <br>
                <p>Single Process Color, Lightening, Foliage, Balayage,</p>
                <p>SPC & Partial, Dimensional Color, Corrective Color</p>
                <p>Brown Sugar Color</p>
                <div style="width: 90%;"></div>
                <br>
                <h2>Face</h2>
                <br>
                <p>Brow Shaping, Brow Tinting, Lash Lift, Lash Extensions,<p>
                <p>Lash Extension Touch Up, Mascara Lash Package,</p>
                <p>Natural Lash Package</p>
                <br>
                <br>
            </div>
            <div>
             <a role="button" href="menus.jsp" class="btn btn-light" style="margin-left:660px;background-color:#C5D8A4">BOOK NOW</a>
             <br><br><br>
            </div>
        </div>
        <%@include file="footer.html" %>
</body>
</html>