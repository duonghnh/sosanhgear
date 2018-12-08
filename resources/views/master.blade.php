<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <base href="{{asset('')}}">
    <link rel="stylesheet" href="source/css/bootstrap.css">
    <link rel="stylesheet" href="source/css/bootstrap-grid.css">
    <link rel="stylesheet" href="source/css/custom1.css">
    <title>Landding Pade</title>
</head>
<body>
    <div class="container-fluid">
        <img class="logo" src="source/images/logo.png"/>
        <center>
        <div class="container">
        <div class="input-group mb-3 input-search">
            <form role="search" method="get" id="searchform" action="{{route('search')}}">
                <input type="text" name="key" class="form-control" placeholder="Tìm kiếm sản phảm...." aria-label="Recipient's username" aria-describedby="button-addon2">
                <div class="input-group-append">
                <button class="search btn btn-outline-secondary " type="submit" id="button-addon2">Button</button>
                </div>
            </form>
        </div>
        </div>
        <div class="row">
            <div class="col-md-3 ml-md-auto">
                <a href="chuot.com" title="Chuột">
                    <img class="category" src="source/images/Chuot.png"/>
                    <div class="category-link">Chuột</div>
                </a>
            </div>
            <div class="col-md-3 ml-md-auto">
                <a href="ghe.com" title="Ghế">
                    <img class="category" src="source/images/Ghe.png"/>
                    <div class="category-link">Ghế</div>
                </a>
            </div>
            <div class="col-md-3 ml-md-auto">
                <a href="Keyboard.com" title="Keyboard">
                    <img class="category" src="source/images/Keyboard.png"/>
                    <div class="category-link">Keyboard</div>
                </a>
            </div>
            <div class="col-md-3 ml-md-auto">
                <a href="Loa.com" title="Loa">
                    <img class="category" src="source/images/Loa.png"/>
                    <div class="category-link">Loa</div>
                </a>
            </div>
            <div class="col-md-3 ml-md-auto">
                <a href="Luutru.com" title="Lưu Trữ">
                    <img class="category" src="source/images/Luutru.png"/>
                    <div class="category-link">Lưu trữ</div>
                </a>
            </div>
            <div class="col-md-3 ml-md-auto">
                <a href="Phone.com title="Phone">
                    <img class="category" src="source/images/Phone.png"/>
                    <div class="category-link">Phone</div>
                </a>
            </div>
            <div class="col-md-3 ml-md-auto">
                <a href="sac.com" title="Sạc">
                    <img class="category" src="source/images/Sac.png"/>
                    <div class="category-link">Sạc</div>
                </a>
            </div>
            <div class="col-md-3 ml-md-auto">
                <a href="TaiNghe.com" title="TaiNghe">
                    <img class="category" src="source/images/Tainghe.png"/>
                    <div class="category-link">TaiNghe</div>
                </a>
            </div>
        </div>

        </center>
    </div>
    <div style="position:fixed; left:0px; bottom:0px; height:50px; width:100%; color:gray">
        <center>Nguồn: Lazada.vn, Tiki.vn, Adayroi.com</center>
    </div>
<script src="source/js/bootstrap.bundle.min.js"></script>
<script src="source/js/bootstrap.js"></script>
<script src="source/js/index.js"></script>
</body>
</html>