
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="CSMSU Music Award 2023">
    <link rel="shortcut icon" href="favicon.png">

    <meta name="description" content="CSMSU Music Award 2023" />
    <meta name="keywords" content="CSMSU" />


    <link rel="stylesheet" href="./css/vendor/icomoon/style.css">
    <link rel="stylesheet" href="./css/vendor/owl.carousel.min.css">
    <link rel="stylesheet" href="./css/vendor/aos.css">
    <link rel="stylesheet" href="./css/vendor/animate.min.css">
    <link rel="stylesheet" href="./css/vendor/bootstrap.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <!-- Theme Style -->
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/awesome/css/font-awesome.min.css">
    <title>CSMSU Music Award 2023</title>
</head>

<?php
include_once __DIR__ . './connectdb.php';


$music_type = db::query("SELECT * FROM `music_type`");

// echo json_encode($music_type->fetchAll());
// exit();


if (isset($_GET["MT_ID"]) && $_GET["MT_ID"] != '-1') {
    $music_band = db::query("SELECT * FROM `music_band` as MB INNER JOIN music_type MT ON MT.MT_ID = MB.MT_ID WHERE MB.MT_ID = '{$_GET['MT_ID']}' ORDER BY MB.MB_VOTE DESC ");
} else {
    $music_band = db::query("SELECT * FROM `music_band` as MB INNER JOIN music_type MT ON MT.MT_ID = MB.MT_ID  ORDER BY MB.MB_VOTE DESC");
}

$MT_ID = isset($_GET["MT_ID"]) ? $_GET["MT_ID"] : "-1";


?>



<body>

    <div id="untree_co--overlayer"></div>
    <div class="loader">
        <div class="spinner-border text-primary" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>

    <nav class="untree_co--site-mobile-menu">
        <div class="close-wrap d-flex">
            <a href="#" class="d-flex ml-auto js-menu-toggle">
                <span class="close-label">Close</span>
                <div class="close-times">
                    <span class="bar1"></span>
                    <span class="bar2"></span>
                </div>
            </a>
        </div>
        <div class="site-mobile-inner"></div>
    </nav>


    <div class="untree_co--site-wrap">
        <nav class="untree_co--site-nav js-sticky-nav">
            <div class="container d-flex align-items-center">
                <div class="logo-wrap">
                    <a href="./" class=" fs-1 untree_co--site-logo">CSMSU Music Award 2023</a>
                </div>
                <div class="site-nav-ul-wrap text-center d-none d-lg-block">
                    <ul class="site-nav-ul js-clone-nav">
                        <li class="active"><a href="#vote" class="fs-2 font-weight-bold">โหวต</a></li>
                    </ul>
                </div>
                <div class="icons-wrap text-md-right">


                    <!-- Mobile Toggle -->
                    <a href="#" class="d-block d-lg-none burger js-menu-toggle" data-toggle="collapse"
                        data-target="#main-navbar">
                        <span></span>
                    </a>
                </div>
            </div>
        </nav>

        <div class="untree_co--site-main">


            <div class="owl-carousel owl-hero">

                <div class="untree_co--site-hero overlay" style="background-image: url('./images/bg.jpg')">
                    <div class="container">
                        <div class="row align-items-center justify-content-center">
                            <div class="col-md-8">
                                <div class="site-hero-contents text-center" data-aos="fade-up">
                                    <h1 class="hero-heading">Music Award 2023</h1>
                                    <div class="sub-text">
                                        <p>มารวมเป็นส่วนหนึ่งในการโหลต</p>
                                    </div>
                                    <a href="#vote" class="btn btn-dark  btn-lg fs-4">SRART VOTE</a>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>

            </div>


            <div id="vote" class="untree_co--site-section">
                <div class="container">
                    <div class="row justify-content-center text-center pt-0 pb-5">
                        <div class="col-lg-6 section-heading" data-aos="fade-up">
                            <h3 class="text-center">มาเริมการโหวตกันเลย</h3>
                            <p>มาช่วยกันโหวตให้คะแนนโดยเลือกวงที่ชอบได้เลย ............เริ่มได้............</p>
                            <h5 class="text-center fs-3">วงดนตรี</h5>
                            <form id="Form-MT_ID" action="./#vote" method="get">
                                <select class="form-select form-select-lg" aria-label="" name="MT_ID"
                                    onchange="document.getElementById('Form-MT_ID').submit();">
                                    <option <?php echo $MT_ID == '-1' ? "selected" : "" ?> value="-1">วงดนตรีทั้งหมด
                                    </option>
                                    <?php foreach ($music_type as $key => $item): ?>
                                        <option <?php echo $MT_ID == $item['MT_ID'] ? "selected" : "" ?>
                                            value="<?php echo $item['MT_ID'] ?>">
                                            <?php echo $item['MT_NAME'] ?>
                                        </option>
                                    <?php endforeach; ?>

                                </select>
                            </form>
                        </div>
                    </div>
                    <div id="show-music" class="row gutter-2">

                        <?php foreach ($music_band as $key => $item): ?>
                            <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                                <a href="javascript:void(0)" data-bs-toggle="modal"
                                    data-bs-target="#MB-<?php echo $item['MB_ID'] ?>">
                                    <img src="images/<?php echo $item['MB_IMAGE'] ?>" alt="Image" class="img-fluid">
                                </a>
                            </div>

                            <div class="modal fade" id="MB-<?php echo $item['MB_ID'] ?>" tabindex="-1"
                                aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="exampleModalLabel">
                                                <?php echo $item['MB_NAME'] . ' - ' . $item['MT_NAME'] ?>
                                            </h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="card mb-4" style="width: 100%;">
                                                <img src="images/<?php echo $item['MB_IMAGE'] ?>" alt="Image"
                                                    class="img-fluid">
                                            </div>
                                            <h3>
                                                <?php echo $item['MB_NAME'] . ' - ' . $item['MT_NAME'] ?>
                                            </h3>
                                            <p style=" text-indent: 2em" class="fs-5">
                                                <?php echo $item['MB_DETAILS'] ?>
                                            </p>

                                        </div>
                                        <div class="modal-footer d-flex justify-content-end">
                                            <h3> <a
                                                    href="javascript:click_voit('<?php echo $item['MB_ID'] ?>','<?php echo $item['MB_NAME'] . ' - ' . $item['MT_NAME'] ?>')"><i
                                                        class="fa fa-heart text-danger" aria-hidden="true"></i></a> ผลโหวต :
                                                <span id="sum-voit-<?php echo $item['MB_ID'] ?>">
                                                    <?php echo $item['MB_VOTE'] ?>
                                                </span>
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <script>
        function click_voit(MB_ID, TEXT) {
            if (confirm("คุณต้องการโหลตให้ : " + TEXT)) {
                $.ajax({
                    type: "post",
                    url: "./click_voit.php",
                    data: {
                        MB_ID: MB_ID
                    },
                    success: function (response) {
                        // console.log(response);
                        document.getElementById("sum-voit-" + MB_ID).innerHTML = response
                    }
                });
            }

        }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>

    <script src="js/vendor/jquery-3.3.1.min.js"></script>
    <script src="js/vendor/popper.min.js"></script>
    <script src="js/vendor/bootstrap.min.js"></script>

    <script src="js/vendor/owl.carousel.min.js"></script>

    <script src="js/vendor/jarallax.min.js"></script>
    <script src="js/vendor/jarallax-element.min.js"></script>
    <script sr c="js/vendor/ofi.min.js"></script>

    <script src="js/vendor/aos.js"></script>

    <script src="js/vendor/jquery.lettering.js"></script>
    <script src="js/vendor/jquery.sticky.js"></script>

    <script src="js/vendor/TweenMax.min.js"></script>
    <script src="js/vendor/ScrollMagic.min.js"></script>
    <script src="js/vendor/scrollmagic.animation.gsap.min.js"></script>
    <script src="js/vendor/debug.addIndicators.min.js"></script>


    <script src="js/main.js"></script>
</body>

</html>
