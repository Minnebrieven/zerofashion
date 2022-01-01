<?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $usr_id = $_POST['usr_id'];
        $barang_id = $_POST['barang_id'];
        $jumlah = $_POST['jumlah'];
        
        $cartArray = array($usr_id,$barang_id,$jumlah);
        setcookie('cart', serialize($cartArray));
        

        // $nama_barang = ;
        // $merek
        // $kategori
        // $jumlah
    }
    // include '../classes/MainPage.php';
    // try{
    //     $main_page = new MainPage;
    //     $main_page->insertKeranjang($_GET['usr_id'],$_GET['brg_id'],$_GET['jml']);
        header('location: ../index.php?page=transaction');
        
    // } catch (Exception $e){

    // }
?>