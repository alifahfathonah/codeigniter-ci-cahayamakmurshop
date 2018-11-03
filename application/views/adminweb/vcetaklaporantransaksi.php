<html>
<head>
  <title><?=$title?></title>
<style>
    #customers {
        font-family: 'Open Sans', sans-serif;
        border-collapse: collapse;
    }

    #customers td, #customers th {
        border: 1px solid #ddd;
        padding: 3px;
    }

    #customers tr:nth-child(even){background-color: #f2f2f2;}

    #customers tr:hover {background-color: #ddd;}

    #customers th {
        padding-top: 3px;
        padding-bottom: 3px;
        text-align: left;
        background-color: #b6b6b6;
        color: black;
    }
</style>
</head>
<body>
<p align="center"><h1 align="center"><?=$title?></h1></p>
<table id="customers">
    <tr>
        <th STYLE="WIDTH: 2%">NO</th>
        <th>Kode</th>
        <th>Penerima</th>
        <th width="25%">Alamat</th>
        <th>No Telp</th>
        <th>Propinsi</th>
        <th>Kota</th>
        <th>Kode Pos</th>
        <th>Total Bayar</th>
    </tr>
    <?php $NO=0; foreach ($qbarang AS $r){
    $NO++;
    ?>
    <tr>
        <td><?PHP echo $NO;?></td>
        <td><?PHP echo $r->kode_transaksi;?></td>
        <td><?PHP echo $r->penerima;?></td>
        <td><?PHP echo $r->alamat;?></td>
        <td><?PHP echo $r->no_telepon;?></td>
        <td><?PHP echo $r->propinsi;?></td>
        <td><?PHP echo $r->kota;?></td>
        <td><?PHP echo $r->kode_pos;?></td>
        <td><?PHP echo 'Rp.'.$this->cart->format_number($r->total);?></td>
    </tr>
    <?php }?>
</table>



</body>
</html>