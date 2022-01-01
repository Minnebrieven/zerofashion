<title>Transaksi</title>
</head>
<body><br><br><br>
    <section class="main">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="#!"><i class="fa fa-home"></i> Home</a></li>
                <li><a href="#!"><i class="fa fa-user"></i> User</a></li>
                <li><a href="#!"><i class="fa fa-shopping-cart"></i> <strong>Keranjang Belanja</strong></a></li>
            </ol><br>

            <h1 class="title"><i class="fa fa-shopping-cart"></i> Keranjang Belanja</h1><br>
            <a href="#!" class="btn secondary"><i class="fa fa-print"></i> Cetak Transaksi</a>
            <br><br>
            <br>
            <table class="table">
                <thead>
                    <tr>
                        <th>Nama Barang</th>
                        <th>Merek</th>
                        <th>Kategori</th>
                        <th>Jumlah</th>
                        <th>Total Harga</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    <?php
                        if(!isset($_COOKIE['cart'])) {
                            echo "Tidak ada keranjang belanja";
                        } else {
                        $arCookie = unserialize($_COOKIE['cart']);
                        foreach ($arCookie as $value) {
                        ?>
                        <td><?php echo $value?></td>
                        <?php } ?>
                    </tr>
                    
                </tbody>
            </table>
        </div>
    </section>
</body>