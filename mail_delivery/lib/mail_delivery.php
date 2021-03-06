<?php
require_once('CheckUser.php');

function validEmail($email) {

	$ret = false;
	if (preg_match("/^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\._-]+)+$/", $email)) {
		$ret = true;
	}
	return $ret;
}

// ランダム文字列生成
function makeRandumString($len, $flg) {

	$str = "";

	if ($flg) 	$strinit = "abcdefghkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ012345679";
	else		$strinit = "012345679";

	$strarray = preg_split("//", $strinit, 0, PREG_SPLIT_NO_EMPTY);
	for ($i = 0, $str = null; $i < $len; $i++) {
		$str .= $strarray[array_rand($strarray, 1)];
	}
	return $str;
}

// メール送信
function mail_send($from_adr, $to_adr, $subject, $letter_body) {

	$ret = false;
	$from_cmnt = "From :";

	mb_language("Japanese");
	mb_internal_encoding("UTF-8");

	$ret = mb_send_mail($to_adr, $subject, $letter_body, $from_cmnt . $from_adr);

	return $ret;
}

// 妥当性チェック
function valid_mail($email) {

	$ret = false;

	if(preg_match('/^(?:[^(\040)<>@,;:".\\\\\[\]\000-\037\x80-\xff]+(?![^(\040)<>@,;:".\\\\\[\]\000-\037\x80-\xff])|"[^\\\\\x80-\xff\n\015"]*(?:\\\\[^\x80-\xff][^\\\\\x80-\xff\n\015"]*)*")(?:\.(?:[^(\040)<>@,;:".\\\\\[\]\000-\037\x80-\xff]+(?![^(\040)<>@,;:".\\\\\[\]\000-\037\x80-\xff])|"[^\\\\\x80-\xff\n\015"]*(?:\\\\[^\x80-\xff][^\\\\\x80-\xff\n\015"]*)*"))*@(?:[^(\040)<>@,;:".\\\\\[\]\000-\037\x80-\xff]+(?![^(\040)<>@,;:".\\\\\[\]\000-\037\x80-\xff])|\[(?:[^\\\\\x80-\xff\n\015\[\]]|\\\\[^\x80-\xff])*\])(?:\.(?:[^(\040)<>@,;:".\\\\\[\]\000-\037\x80-\xff]+(?![^(\040)<>@,;:".\\\\\[\]\000-\037\x80-\xff])|\[(?:[^\\\\\x80-\xff\n\015\[\]]|\\\\[^\x80-\xff])*\]))*$/', $email))

		$ret = true;

	return $ret;
}


// メールアドレス存在チェック
function chkAddress($to_adr)
{

	$ret = false;

	$sender = 'fukuzaki@magnus-sys.co.jp';
	$fqdn = 'ns1.magnus-sys.co.jp';
	$chk = new Mail_CheckUser($fqdn, $sender);

	$result = $chk->checkEmail( $to_adr );

	if( $result ){ // $to_adrが有効
		$ret = true;
		print 'OK';
	}
	else{ // $emailが有効ではない
		print $chk->response_code;
		print ': ';
		print $chk->response;
	}

	return $ret;
}


// date check
function valid_date( $str_date ) {

	$ret = true;

	$chk_date = strftime("%Y/%m/%d", strtotime($str_date));

	if(!empty($chk_date)) {

    	// 日付形式チェック
    	if (!preg_match('/^[0-9]{4}\/[0-9]{1,2}\/[0-9]{1,2}$/', $chk_date)) {
			$ret = false;

		}
		else {
        // 日付妥当性チェック
        	list($year, $momth, $day) = preg_split("/\//", $chk_date);
        	if(!checkdate($momth, $day, $year)){
				$ret = false;
        	}
    	}
	}

	// 日付比較　過去日かどうか

	$today = strftime("%Y-%m-%d");
 
	if(strtotime($chk_date) < strtotime($today)) {
		$ret = false;
	}

	return $ret;
}

// function putNgList($mail_adr, $com_name, $sec_name1, $sec_name2, $per_name) {
function putNgList($strRec) {

	$ngfp = fopen($NG_LIST, 'a');
//	$output = $mail_adr . $com_name . $sec_name1 . $sec_name2 . $per_name;
	$output = $strRec[0]. $strRec[1]. $strRec[2] . $strRec[3] . $strRec[4];
	fwrite($ngfp, $output);
	fclose($ngfp);

	return $ret;
}


function putOkList($strRec) {

	$ngfp = fopen($NG_LIST, 'a');
//	$output = $mail_adr . $com_name . $sec_name1 . $sec_name2 . $per_name;
	$output = $strRec[0]. $strRec[1]. $strRec[2] . $strRec[3] . $strRec[4];
	fwrite($ngfp, $output);
	fclose($ngfp);

	return $ret;
}

function removeData() {

	$ret = false;

	return $ret;

}

function scandir($dir_name, $order = '') { 

	$dh = opendir($dir_name); 

	while ( ($filename = readdir($dh)) !== false) { 
		$file_list[] = $filename; 
	} 

	if ($order) { 
		rsort($file_list); 
	}
	else { 
		sort($file_list); 
	} 
	return $file_list; 
}
?>
