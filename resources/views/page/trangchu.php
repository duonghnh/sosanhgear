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
            @foreach($hinh as $hinh)


            <div class="col-md-3 ml-md-auto">
                <a href="chuot.com" title="Chuột">
                    <img class="category" src="source/images/{{$hinh->ten}}"/>
                    <div class="category-link">{{$hinh->chu}}</div>
                </a>
            </div>
            @endforeach
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