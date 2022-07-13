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
    <link rel="stylesheet" href="css/menus_style.css">
    <title>Document</title>
</head>

<body>
        <br>
        <div class="container">
            <h1 class="text-center">Our <span style="color: red;">Menu</span></h1>
            <br>
            <form action="payment.jsp" method="post" class="text-center" onsubmit="return validasi()">
                <!-- HAIR MENU -->
                <h2 class="text-center">HAIR <span style="color: rgb(0, 88, 202);">MENU</span></h2>
                <hr>
                <br>
                <div class="row ">
                    <div class="col-md-10 ">
                        <div class="card">
                            <div class="card-body rounded-3 testasdasd">
                                <h4>BLOW DRY</h4>
                                Blow dry termasuk sampo & basic blow dry. Jika ditambah hair style, terdapat biaya
                                tambahan
                                <br>
                                
                                <h5><span class="harga">Harga</span> : 70.000</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 d-flex aligns-items-center justify-content-center" style="margin-top: 20px;">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="menu" value="Blow Dry"
                                style="height: 2.7rem; width: 3rem;">
                        </div>
                    </div>
                </div>
                <br>
                <div class="row ">
                    <div class="col-md-10">
                        <div class="card">
                            <div class="card-body rounded-3">
                                <h4>CUT AND STYLE</h4>
                                Potongan rambut termasuk sampo & basic blow dry. Jika ditambah hair style, terdapat
                                biaya
                                tambahan
                                <br>
                                <br>
                                <h5><span class="harga">Harga</span> : 100.000</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 d-flex aligns-items-center justify-content-center" style="margin-top: 20px;">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="menu" value="Cut And Style"
                                style="height: 2.7rem; width: 3rem;">
                        </div>
                    </div>
                </div>
                <br>
                <div class="row ">
                    <div class="col-md-10 ">
                        <div class="card">
                            <div class="card-body rounded-3">
                                <h4>BANG TRIM</h4>
                                Potongan poni termasuk sampo & Basic Blow Dry
                                <br>
                                <br>
                                <h5><span class="harga">Harga</span> : 50.000</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 d-flex aligns-items-center justify-content-center" style="margin-top: 20px;">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="menu" value="Bang Trim"
                                style="height: 2.7rem; width: 3rem;">
                        </div>
                    </div>
                </div>
                <br>
                <div class="row ">
                    <div class="col-md-10 ">
                        <div class="card">
                            <div class="card-body">
                                <h4>CURL SET / UPSTYLE</h4>
                                Curly rambut termasuk Basic Blow Dry dan Hair Style
                                <br>
                                <br>
                                <h5><span class="harga">Harga</span> : 170.000</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 d-flex aligns-items-center justify-content-center" style="margin-top: 20px;">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="menu" value="Curl Set or Upstyle"
                                style="height: 2.7rem; width: 3rem;">
                        </div>
                    </div>
                </div>
                <!-- END HAIR MENU -->

                <br>
                <br>

                <!-- TREATMENTS MENU -->
                <h2 class="text-center">TREATMENT <span style="color: rgb(0, 88, 202);">MENU</span></h2>
                <hr>
                <br>
                <div class="row ">
                    <div class="col-md-10 ">
                        <div class="card">
                            <div class="card-body rounded-3">
                                <h4>RELAXATION TREATMENT</h4>
                                Perawatan rambut cocok untuk yang memiliki rambut bertekstur, baik bergelombang maupun
                                keriting.
                                <br>
                                <br>
                                <h5><span class="harga">Harga</span> : 150.000</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 d-flex aligns-items-center justify-content-center" style="margin-top: 20px;">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="menu" value="Relaxation Treatment"
                                style="height: 2.7rem; width: 3rem;">
                        </div>
                    </div>
                </div>
                <br>
                <div class="row ">
                    <div class="col-md-10 ">
                        <div class="card">
                            <div class="card-body rounded-3">
                                <h4>HAIR DETOX TREATMENT</h4>
                                Perawatan detoks rambut mampu menghilangkan penumpukan bahan kimia pada batang rambut.
                                <br>
                                <br>
                                <h5><span class="harga">Harga</span> : 220.000</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 d-flex aligns-items-center justify-content-center" style="margin-top: 20px;">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="menu" value="Hair Detox Treatment"
                                style="height: 2.7rem; width: 3rem;">
                        </div>
                    </div>
                </div>
                <br>
                <div class="row ">
                    <div class="col-md-10 ">
                        <div class="card">
                            <div class="card-body rounded-3">
                                <h4>KERASTASE TREATMENT</h4>
                                Perawatan keratin rambut di salon biasanya akan menggunakan krim yang mengandung
                                formaldehida,
                                dan dioleskan pada rambut.
                                <br>
                                <br>
                                <h5><span class="harga">Harga</span> : 370.000</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 d-flex aligns-items-center justify-content-center" style="margin-top: 20px;">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="menu" value="Kerastase Treatment"
                                style="height: 2.7rem; width: 3rem;">
                        </div>
                    </div>
                </div>
                <br>
                <div class="row ">
                    <div class="col-md-10 ">
                        <div class="card">
                            <div class="card-body rounded-3">
                                <h4>SCALP SCRUB</h4>
                                Perawatan rambut dengan metode scrub kulit kepala diklaim mampu membantu mengurangi
                                produksi
                                minyak berlebih.
                                <br>
                                <br>
                                <h5><span class="harga">Harga</span> : 190.000</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 d-flex aligns-items-center justify-content-center" style="margin-top: 20px;">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="menu" value="Scalp Scrub"
                                style="height: 2.7rem; width: 3rem;">
                        </div>
                    </div>
                </div>
                <!-- END TREATMENTS MENU -->

                <br>
                <br>

                <!-- BARBERING MENU -->
                <h2 class="text-center">BARBERING <span style="color: rgb(0, 88, 202);">MENU</span></h2>
                <hr>
                <br>
                <div class="row ">
                    <div class="col-md-10 ">
                        <div class="card">
                            <div class="card-body rounded-3">
                                <h4>POMPADOUR</h4>
                                Potongan rambut pria ini cocok untuk para penggemar gaya retro, maupun mereka yang ingin
                                sedikit
                                sentuhan formal pada penampilannya.
                                <br>
                                <br>
                                <h5><span class="harga">Harga</span> : 60.000</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 d-flex aligns-items-center justify-content-center" style="margin-top: 20px;">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="menu" value="Pompadour"
                                style="height: 2.7rem; width: 3rem;">
                        </div>
                    </div>
                </div>
                <br>
                <div class="row ">
                    <div class="col-md-10 ">
                        <div class="card">
                            <div class="card-body rounded-3">
                                <h4>QUIFF</h4>
                                Quiff bis adalah versi simpel dari model pompadour. Ciri khas dari potongan ini terdapat
                                pada
                                bagian sisi rambut yang terlihat memudar.
                                <br>
                                <br>
                                <h5><span class="harga">Harga</span> : 60.000</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 d-flex aligns-items-center justify-content-center" style="margin-top: 20px;">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="menu" value="Quiff"
                                style="height: 2.7rem; width: 3rem;">
                        </div>
                    </div>
                </div>
                <br>
                <div class="row ">
                    <div class="col-md-10 ">
                        <div class="card">
                            <div class="card-body rounded-3">
                                <h4>COMB OVER</h4>
                                Comb over, model rambut klasik untuk pria karena cocok semua kesempatan dan tidak
                                ketinggalan
                                zaman.
                                <br>
                                <br>
                                <h5><span class="harga">Harga</span> : 60.000</h5><br>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 d-flex aligns-items-center justify-content-center" style="margin-top: 20px;">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="menu" value="Comb Over"
                                style="height: 2.7rem; width: 3rem;">
                        </div>
                    </div>
                </div>
                <br>
                <div class="row ">
                    <div class="col-md-10 ">
                        <div class="card">
                            <div class="card-body rounded-3">
                                <h4>SIDE PART</h4>
                                side part  cocok untuk semua gaya rambut, mulai dari rambut panjang, sedang maupun
                                pendek.
                                <br>
                                <br>
                                <h5><span class="harga">Harga</span> : 60.000</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 d-flex aligns-items-center justify-content-center" style="margin-top: 20px;">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="menu" value="Side Part"
                                style="height: 2.7rem; width: 3rem;">
                        </div>
                    </div>
                </div>
                <!-- END BARBERING MENU -->

                <br>
                <br>

                <!-- FACE MENU -->
                <h2 class="text-center">FACE <span style="color: rgb(0, 88, 202);">MENU</span></h2>
                <hr>
                <br>
                <div class="row ">
                    <div class="col-md-10 ">
                        <div class="card">
                            <div class="card-body rounded-3">
                                <h4>BROW SHAPPING</h4>
                                Membentuk dan merapihkan rambut alis menggunakan tweezers.
                                <br>
                                <br>
                                <h5><span class="harga">Harga</span> : 85.000</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 d-flex aligns-items-center justify-content-center" style="margin-top: 20px;">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="menu" value="Brow Shapping"
                                style="height: 2.7rem; width: 3rem;">
                        </div>
                    </div>
                </div>
                <br>
                <div class="row ">
                    <div class="col-md-10 ">
                        <div class="card">
                            <div class="card-body rounded-3">
                                <h4>LASH EXTENSION</h4>
                                Sambung bulu mata untuk mendapatkan bulu mata yang penjang dan lentik.
                                <br>
                                <br>
                                <h5><span class="harga">Harga</span> : 190.000</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 d-flex aligns-items-center justify-content-center" style="margin-top: 20px;">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="menu" value="Lash Extension"
                                style="height: 2.7rem; width: 3rem;">
                        </div>
                    </div>
                </div>
                <br>
                <div class="row ">
                    <div class="col-md-10 ">
                        <div class="card">
                            <div class="card-body rounded-3">
                                <h4>TOTOK WAJAH</h4>
                                Pijatan lembut pada titik-titik tertentu di wajah agar energi bisa mengalir lebih
                                lancar.
                                <br>
                                <br>
                                <h5><span class="harga">Harga</span> : 130.000</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 d-flex aligns-items-center justify-content-center" style="margin-top: 20px;">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="menu" value="Totok Wajah"
                                style="height: 2.7rem; width: 3rem;">
                        </div>
                    </div>
                </div>
                <br>
                <div class="row ">
                    <div class="col-md-10 ">
                        <div class="card">
                            <div class="card-body rounded-3">
                                <h4>FACIAL</h4>
                                Membersihkan wajah dari kotoran, debu, minyak, sel-sel kulit mati dan komedo.
                                <br>
                                <br>
                                <h5><span class="harga">Harga</span> : 200.000</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 d-flex aligns-items-center justify-content-center" style="margin-top: 20px;">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="menu" value="Facial"
                                style="height: 2.7rem; width: 3rem;">
                        </div>
                    </div>
                </div>
                <!-- END FACE MENU -->
                <br>
                <br>
                <%
                    Integer userid = 0;
                    // get attribute from session integer
                    if(session.getAttribute("userid") != null){
                        userid = (Integer) session.getAttribute("userid");

                        // Convert userid into string
                        
                    
                    }
                    String userid_str = userid.toString();
                %>
                <div class="col-md-10">
                    <%
                        out.println(userid_str);
                    %>
                    <input type="hidden" name="isCheck" value="<%= userid%>%">
                    <input type="submit" value="CHECK-IN ORDER" class="btn btn-success">
                </div>
                <br>
                <br>
                
            </form>
        </div>
        <%@include file="footer.html" %>
        <script>
            // check if checkbox is checked at least 1 vanilla html

            function validasi(){
                var checkbox = document.getElementsByName("menu");
                var isCheck = document.getElementsByName("isCheck");

                // take integer isCheck from isCheck name
                var isCheck_int = parseInt(isCheck[0].value);
                var okay = false;
                for(var i = 0; i < checkbox.length; i++){
                    if(checkbox[i].checked){
                        okay = true;
                        break;
                    }
                }

                if(!okay){
                    alert("Choose at least 1 menu");
                    return false;
                }

                

                // check if string isCheck equals 0
                if(isCheck_int == 0){
                    alert("Please login first");
                    return false;
                }

                return true;
            }
            
        </script>
    </body>
</html>