<title>Produt details</title>
</head>

<body>
    <section class="main">
        <div class="container pull-down-navbar">
            <?php 
                    foreach ($main_page->DetailBarang($_GET['kategori_id'],$_GET['product_id']) as $key){
                    ?>
                    <ol class="breadcrumb">
                        <li><a href="#!"><i class="fa fa-home"></i> Home</a></li>
                        <li><a href="#!"> Product Details</a></li>
                        <li><a href="#!"> <?=$key['nama_kategori'];?></a></li>
                        <li><a href="#!"><strong><?=$key['nama_barang'];?></strong></a></li>
                    </ol>
                    <div class="product-description">
                        <div class="row">
                            <div class="col-lg-4 product-image">
                                <img src="assets/imgs/upload/<?=$key['gambar'];?>" alt="">
                            </div>
                            <div class="col-lg-8 product-desc">
                                <h1 class="title"><?=$key['nama_barang'];?></h1>
                                <p class="price">Rp. <?=number_format($key['harga'],2,",",".");?></p>

                                <form action="process/tambahKeranjang.php" method="POST" class="buy">
                                    <input type="hidden" name="usr_id" value="<?php echo $_SESSION['usr_id']; ?>">
                                    <input type="hidden" name="barang_id" value="<?php echo $_GET['product_id']; ?>">                
                                    <div class="input-group">
                                        <label for="">Jumlah</label>
                                        <input type="number" name="jumlah" class="form-control" value="1" min="1" max="<?=$key['stok'];?>">
                                    </div>
                                    <br>
                                    <button type="submit" class="btn warning"><i class="fa fa-shopping-cart"></i> Tambah ke Keranjang</button>
                                    <a class="btn secondary">Beli</a>
                                </form>
                                </div>
                        </div>
                    <?php
                    }
                ?>
            </div>
        </div>
    </section>    