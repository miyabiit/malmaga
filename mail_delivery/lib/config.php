<?php
$namae='localhost';
$dbnamae = 'malmaga_system';
//$dbnamae = 'malmaga_sys_test';
$dbuser = 'malmaga_system';
$dbpw = '5SZcTlCj6h';


$admin_from_adr = "lettersystem@aktio-mail.jp";
$checker = "osaka-tetsuro@aktio.co.jp";
//$checker = "fukuzaki@mediaclip.co.jp";
$info_adr = "info@aktio-mail.jp";

$REGIST_SUBJECT = "【一斉メール配信】認証情報通知";
$REGIST_URL = "https://mail.aktio-mail.jp/";

$MAX_PDFSIZE = 2*1024*1024;
$CHK_USER = 'lettersystem@aktio-mail.jp';
$CHK_PASS = 'wM6Q_WBnTl';
$PWD = "/var/www/mail_delivery/data/";


define("SLEEP_TIME", 1000000); // 1.00 sec
define("CHECK_TIME", 0250000); // 0.25 sec
define("ADMIN_ID", 999);

define("USER_LEN", 6);
define("PASS_LEN", 8);

define("FQDN",  "mail.aktio-mail.jp");
define("SENDER",  "admin@aktio-mail.jp");

define("CHK_ADR", "@aktio.co.jp");
//define("CHK_ADR", "@magnus-sys.co.jp");

define("NG_LSIT", "ng_list.txt");
define("OK_LSIT", "ok_list.txt");
define("FILE_CONTENTS", "_comment.txt");

define("WAIT", 0);
define("REDY", 1);
define("PROCESSED", 2);
define("END", 3);

?>
