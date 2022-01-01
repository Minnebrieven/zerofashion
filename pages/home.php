<title>Home - ZeroFashion</title>
</head>
<body>
    
<div class="container">
    <section class="main">
        <?php
            foreach ($main_page->UniversalCount("banner",1) as $key){
                if ($key[0] > 0){
        ?>
        <h1 class="title">Promo Menarik</h1><br>

        <div class="slider">
            <div class="slider-inner">
                <?php
                    foreach ($main_page->UniversalDapet("banner") as $row){
                    ?>
                        <div class="content">
                            <img src="assets/imgs/upload/<?=$row['gambar'];?>" alt="">
                            <div class="content-inner text-white">
                                <h1 class="title text-center"><?=$row['judul'];?></h1>
                                <p class="desc"><?=$row['deskripsi'];?></p>
                            </div>
                        </div>
                    <?php
                    }
                ?>
            </div>

            <a href="#!" class="slide-nav prev"><i class="fa fa-chevron-left"></i></a>
            <a href="#!" class="slide-nav next"><i class="fa fa-chevron-right"></i></a>

            <div class="bubbles">
                <?php
                    for ($i=1;$i<=$key[0];$i++){
                    ?>
                        <a href="#!" data-slide-to="<?=$i;?>" class="bubble"></a>
                    <?php
                    }
                ?>
            </div>
        </div>
        <?php 
                }
            } 
        ?>
        <br><br>

        <h1 class="title">Kategori</h1>
        <div class="product-category">
            <div class="container">
                <div class="row no-wrap">
                    <?php
                        foreach ($main_page->UniversalDapet("kategori") as $key){
                        ?>
                            <div class="col-lg-2 col-md-4 col-12 product-item">
                                <a href="?page=kategori&kategori_id=<?=$key['kategori_id'];?>&nama=<?=$key['nama'];?>"><?=$key['nama'];?></a>
                            </div>
                        <?php
                        }
                    ?>                
                </div>
            </div>
        </div>

        <br><br>

        <h1 class="title">Official Stores</h1>
        <div class="row">
        <?php
                    foreach ($main_page->UniversalDapet('barang') as $key){
                    ?>
                    <div class="col-12 col-md-4 col-lg-3">
                        <a class="a-card" href="?page=details&kategori_id=<?=$key['kategori_id'];?>&product_id=<?=$key['barang_id'];?>">
                            <div class="card">
                                <div class="card-image">
                                    <img src="assets/imgs/upload/<?=$key['gambar'];?>" alt="">
                                </div>
                                <div class="card-inner">
                                    <h2 class="card-title">
                                        <?=$key['nama_barang'];?>
                                    </h2>
                                    <p class="price">
                                        Rp. <?=number_format($key['harga'],2,",",".");?>
                                    </p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <?php
                    }
                ?>
        </div>
    </section>
</div>