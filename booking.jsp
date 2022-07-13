<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <%@include file="header.html" %>
    <!-- Make form, phone number, date month year -->
    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-header" style="background-color: #C5D8A4;">
                        <h3 class="text-center">Booking</h3>
                    </div>
                    <div class="card-body">
                        <form action="#" method="POST">
                            <div class="form-group">
                                <label for="phone">Phone Number</label>
                                <input type="text" name="phone" class="form-control" placeholder="Phone Number">
                            </div>
                            <br>
                            <div class="form-group">
                                <label for="date">Tanggal</label>
                                <input type="date" name="date" class="form-control" placeholder="Date">
                            </div>
                            <br>
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text" name="name" class="form-control" placeholder="Name">
                            </div>
                            <br>
                            <div class="form-group text-center">
                                <button type="submit" class="btn btn-success">BOOK</button>
                            </div>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="footer.html" %>
</body>
</html>