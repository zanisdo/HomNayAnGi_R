<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
    </script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            /* background: rgb(241, 105, 105);
            background: linear-gradient(255deg, rgba(241, 105, 105, 1) 0%, rgba(252, 229, 23, 1) 100%); */
            background: rgb(241, 105, 105);
            background: linear-gradient(225deg, rgba(241, 105, 105, 1) 0%, rgba(252, 229, 23, 0.5021358885351015) 100%);
        }

        .custom-button {
            background-color: #fff;
            display: flex;
            border: none;
            padding: 15px;
            border-radius: 50px;
            box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
        }

        .love-btn {
            color: #ffc107;
        }

        .hate-btn {
            color: #f44336;
        }

        .gap-3-rem {
            margin-top: 3rem;
        }
    </style>
</head>

<body>
    @include('layouts.header')
    @yield('body')
</body>

</html>
