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

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/index_style.css">
    <title>Hello, world!</title>
</head>

<body>
        <div class="row">
            <div class="col-6 bg-home p-5" style="height:400px">
                <h1 class="m-4 text-white fw-bolder" >PASLON Beauty Studio </h1>
                <p class="m-5 fw-bolder">PASLON brings connection between your personality & appearance.
                Through chair education, we share our passion and knowledge to take home with you. We rely on the energy
                in our space, the relationships that we build and inspiration all around us to create customization in your overall look.</p>
                <a type="button" class="btn btn" href="menusv2.jsp" style="margin-left: 80%;background-color:#F8F0EA">BOOK NOW</a>
            </div>
            <br>
            <div class="col-6" style="background-image: url('assets/home-3.png');height:400px">
                <div class="text-center">
                    <img src="assets/home-2.png" class="p-5" style= "height:430px;width:700px; margin-top: -12px;">
                </div>
            </div>
        </div>

        <div class="row p-4" style="background-color: #faeee5;">
            <h1 class="p-3;" style="margin-left:60px;">SERVICES</h1>
            <div class="container"><br>
                <div class="row justify-content-center">
                    <div class="col-5 p-3">
                        <h2>Hair</h2>
                        <p>Cut & Style, Bang Trim, Blow Dry, Curl Set/Upstyle</p>
                        <p>Express Style, Hair Extensions/Tape, Tab & Sew-In,</p>
                        <p>K-Top & I-Tip Braids</p>
                        <div class="p-3"></div>
                        <h2>Treatments</h2>
                        <p>Kerastase Treatment, K18 Mask, Bond Builder Mask,</p>
                        <p>Brazilian Blowout, Keratin Complex Treatment,</p>
                        <p>Relaxer, Perm</p>
                    </div>
                    <div class="col-5 p-3">
                        <h2>Barbering</h2>
                        <p>Straight Razor Shave, Cut & Groom, Clipper Cut,</p>
                        <p>Neck Clean Up, Beard Clean Up, Beard Detailing,</p>
                        <p>Cut & Groom / Beard Trim Series</p>
                        <div class="p-3"></div>
                        <h2>Color</h2>
                        <p>Single Process Color, Lightening, Foliage, Balayage,</p>
                        <p>SPC & Partial, Dimensional Color, Corrective Color</p>
                        <p>Brown Sugar Color</p>
                    </div>
                </div>
            </div>
            <div class="" style="width: 90%;"></div>
            <div class="text-center">
                <br><br>
                <a type="button"  href="services.jsp" class="btn btn-success rounded-3">VIEW SERVICES</a>
            </div>
        </div>

        <div class="container-fluid">
            <img src="assets/home-1.png" alt="" class="foto-home img-fluid">
            <div class="row">
                <div class="col-9 p-5 bg-home">
                    <h1 class="text text-white fw-bolder" >About Us</h1><br>
                    <p style="width: 80%;">PASLON provides complete beauty treatments, from head to toe that will enhance your</p>
                    <p>appearance. All of the packages we offer use traditional Indonesian herbal ingredients</p>
                    <p>that are handled by stylish and professional therapists in their fields.</p><br>
                    <a type="button" href="AboutUs.jsp" class="btn btn-light">More About US!</a>
                </div>
                <div class="col-3"></div>
            </div>
        </div>

        <div class="row text-center p-4" style="background-color: #D9D9D9;">
            <h1>LOCATION</h1>
            <br><br><br>
            <p>Jl. Raya Kebon Jeruk No.2 RT.5/RW.1</p>
            <p>Jakarta Barat, 13960.</p>
        </div>

        <%@include file="footer.html" %>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>


</body>

</html>