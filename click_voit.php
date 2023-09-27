<?php

// echo $_POST["MB_ID"];

// echo "test";

include_once __DIR__ . './connectdb.php';
$MB_ID = $_POST["MB_ID"];

$music_band = db::query("SELECT * FROM `music_band` WHERE MB_ID = '$MB_ID'", PDO::FETCH_OBJ);
foreach ($music_band as $key => $item) {
    $voit = 1 + (int) $item->MB_VOTE;
    db::query("UPDATE `music_band` SET `MB_VOTE` = '$voit' WHERE `music_band`.`MB_ID` = $MB_ID");

    echo $voit;
    return;
}

?>
