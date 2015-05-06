<?php
    include_once("lib/config.php");
    include_once("/var/www/data/module/Mail.php");
    include_once("/var/www/data/module/Mail/mime.php");

function aiueo($recipients, $from_adr, $subject, $inbody, $file1, $file2, $file3, $file4, $file5) {


// mail intialize
    $params = array(
        "host" => "mail.aktio-mail.jp",
        "port" => "25",
        "auth" => false,
        "username" => $CHK_USER,
        "password" => $CHK_PASS,
        "persit" => true
    );

    $bodyParam = array(
        "head_charset" => "ISO-2022-JP",
        "text_charset" => "ISO-2022-JP"
    );

    $mimeObject = new Mail_Mime("\n");
    $mailObject = Mail::factory("smtp", $params);
    if (strlen($filepdf1) > 0) $mimeObject -> addAttachment($PWD . $file1, "application/octet-stream");
    if (strlen($filepdf2) > 0) $mimeObject -> addAttachment($PWD . $file2, "application/octet-stream");
    if (strlen($filepdf3) > 0) $mimeObject -> addAttachment($PWD . $file3, "application/octet-stream");
    if (strlen($filepdf4) > 0) $mimeObject -> addAttachment($PWD . $file4, "application/octet-stream");
    if (strlen($filepdf5) > 0) $mimeObject -> addAttachment($PWD . $file5, "application/octet-stream");


            $body = mb_convert_encoding($inbody, "ISO-2022-JP", "auto");
            $mimeObject -> setTxtBody($body);
            $body = $mimeObject -> get($bodyParam);


            $addHeaders = array(
                "To" => $recipients,
                "From" => $from_adr,
                "Retrun-Path" => $from_adr,
                "Subject" => $subject
            );

            $headers = $mimeObject -> headers($addHeaders);
            $return = $mailObject -> send($recipients, $headers, $body);
            if (PEAR::isError($return)) {
                $ret = false;
                echo("メールが送信できませんでした エラー：".$return->getMessage());
            }


}




?>
