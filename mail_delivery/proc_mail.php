<?php
/******************************/
/* send process               */
/******************************/
	include_once("lib/config.php");
	include_once("/var/www/data/module/Mail.php");
	include_once("/var/www/data/module/Mail/mime.php");

	ini_set("max_execution_time", 0);
	set_time_limit(0);

	$user_id = $argv[1];

	if (strlen($user_id) < 1 ) {
		$user_id = isset( $_REQUEST['user_id'] ) ? htmlspecialchars( $_REQUEST['user_id'] ) : "";
		if (get_magic_quotes_gpc()) $user_id = stripslashes($user_id);
	}
	if ($user_id < 1) {
		echo "user_id がパラメータに指定されていません<br>\n";
		exit(1);
	}
	$apl_adr = isset( $_REQUEST['apl_adr'] ) ? htmlspecialchars( $_REQUEST['apl_adr'] ) : "";
	if (get_magic_quotes_gpc()) $apl_adr = stripslashes($apl_adr);

// $start_time = microtime(true);

// db open intialize
	$con = pg_connect("host=$namae dbname=$dbnamae user=$dbuser password=$dbpw");
	if($con == false) {
		exit;
	}

// senddata get
	$sql = "select * from t_senddata where user_id = " . $user_id;

//echo $sql . "\n<br>";
	$result = pg_query($con, $sql);
	if (!$result) {
		//echo $loginsql;
	      die("Error in SQL query : " . pg_last_error());
	}
	if (pg_numrows($result) > 0) {
		if ($row = pg_fetch_array($result)) {
//			$userid = $row['userid'];
			$from_adr = $row['from_adr'];
			$name = $row['name'];
			$subject = $row['subject'];
			$comment = $row['comment'];
			$filepdf1 = $row['filepdf1'];
			$filepdf2 = $row['filepdf2'];
			$filepdf3 = $row['filepdf3'];
			$filepdf4 = $row['filepdf4'];
			$filepdf5 = $row['filepdf5'];
		}
	}
	pg_free_result($result);

// setting subject
	mb_language("uni");
	mb_internal_encoding("utf-8");
	$subject = mb_convert_encoding($subject,'utf-8', mb_detect_encoding($subject));
	$subject = mb_encode_mimeheader($subject,'iso-2022-jp');


// mail intialize
	$params = array(
		"host" => "mail.aktio-mail.jp",
		"port" => "25",
		"auth" => false,
		"username" => $CHK_USER,
		"password" => $CHK_PASS,
		"persit' => true
	);


	// attachment file check
/*
//	$files = "'./data/" . $filepdf1 . "','" . $filepdf2 . "','" . $filepdf3 . "','" . $filepdf4 . "','" . $filepdf5 . "'";

	$afiles = array();

	$mimeObject = new Mail_Mime("\n");
	$mailObject = Mail::factory("smtp", $params);
	if (strlen($filepdf1) > 0) $afile[] = $PWD . $filepdf1;
	if (strlen($filepdf2) > 0) $afile[] = $PWD . $filepdf2;
	if (strlen($filepdf3) > 0) $afile[] = $PWD . $filepdf3;
	if (strlen($filepdf4) > 0) $afile[] = $PWD . $filepdf4;
	if (strlen($filepdf5) > 0) $afile[] = $PWD . $filepdf5;

$files = implode(",", $afile);
//$files = "/var/www/mail_delivery/data/tokyo.pdf";
//$files = "/var/www/mail_delivery/data/パスワード.pdf";
//$files = mb_convert_encoding($files, 'ISO-2022-JP', 'UTF-8');
//$files = "/var/www/mail_delivery/data/2504盗難.pdf";
*/


//echo $files . "\n<br/>";

	$bodyParam = array(
		"head_charset" => "ISO-2022-JP",
		"text_charset" => "ISO-2022-JP"
	);


// mail address get
	if (get_magic_quotes_gpc()) $user_id = stripslashes($user_id);
	$sql = "select * from t_sendinfo where (status = 0 or status = 1) and send_id = " . $user_id;
//echo $sql  . "\n";

	$result = pg_query($con, $sql);
	if (!$result) {
		echo $loginsql . "\n";
	    die("Error in SQL query : " . pg_last_error());
	}

	if (strlen($filepdf1) > 0) $mimeObject -> addAttachment($PWD . $filepdf1, "application/octet-stream");
	if (strlen($filepdf2) > 0) $mimeObject -> addAttachment($PWD . $filepdf2, "application/octet-stream");
	if (strlen($filepdf3) > 0) $mimeObject -> addAttachment($PWD . $filepdf3, "application/octet-stream");
	if (strlen($filepdf4) > 0) $mimeObject -> addAttachment($PWD . $filepdf4, "application/octet-stream");
	if (strlen($filepdf5) > 0) $mimeObject -> addAttachment($PWD . $filepdf5, "application/octet-stream");

	$recipients = "";
	$ret = true;
// loop
	if (pg_numrows($result) > 0) {
		while ($row = pg_fetch_array($result)) {

			$recipients = $row['to_address'];

			$com_name = $row['com_name'];
			$sec_name1 = $row['sec_name1'];
			$sec_name2 = $row['sec_name2'];
			$per_name = $row['per_name'];

			$body_top = $com_name . " " .  $sec_name1 . " " .  $sec_name2 . " " .  $per_name . " " .  " \n\n";
			$body_down = "\n" . $name . "\n" . $from_adr . "\n";


			$body = strip_tags($comment);
			$body = $body_top . $body . $body_down;

			$body = mb_convert_encoding($body, "ISO-2022-JP", "auto");

			$mimeObject -> setTxtBody($body);

//			$mimeObject -> addAttachment($files, "application/octet-stream");

			$body = $mimeObject -> get($bodyParam);
			$addHeaders = null;
var_dump($headers);
			$addHeaders = array(
				"To" => $recipients,
				"From" => $from_adr,
				"Retrun-Path" => $from_adr,
				"Subject" => $subject
			);

echo "<br>To:" . $recipients . " " . $body_top . "送信済み<br />";
echo "From:" . $from_adr . "<br />";
			// procedure send
			$headers = $mimeObject -> headers($addHeaders);
			$return = $mailObject -> send($recipients, $headers, $body);
var_dump($headers);

			if (PEAR::isError($return)) {
				$ret = false;
    			echo("メールが送信できませんでした エラー：".$return->getMessage());
			}
			usleep(SLEEP_TIME);

			// send result db write
			$sql  = "update t_sendinfo set ";
			$sql .= " status = 3";
			$sql .= " where send_id = " . $user_id;
			$sql .= "  and status = " . END;
			$sql .= "  and to_address = '" . $recipients . "'";

			$upstatus = pg_query($con, $sql);
			if (!$upstatus) {
				$ret = false;
				//echo $loginsql;
	      		die("Error in SQL query upstatus: " . pg_last_error());
			}
		}
		// end result db write
	}
	else {
		$ret = false;
	}

		$use_datetime = date("Y/m/d H:i:s");
		
		$end_subject = "一斉メール送信完了メール";
		$end_message1 = "\n送信完了時刻：" . $use_datetime . "\n";
		$end_message2 = "\n一斉メール送信が完了いたしました。\n";

		$letter_body = $end_message1 . $end_message2;

		$con = pg_connect("host=$namae dbname=$dbnamae user=$dbuser password=$dbpw");
		if($con==false){
			die("Error in SQL query insert m_base: " . pg_last_error());
			exit;
		}
		$adr_sql = "select user_adr from m_base where user_id = " . $user_id;
        $result = pg_query($con, $adr_sql);
        if (!$result) {
            $ret = 4;
            die("Error in SQL query insert m_base: " . pg_last_error());
        }

		$user_adr = "";
		if (pg_numrows($result) > 0) {
			if ($row = pg_fetch_array($result)) {
				$user_adr = $row['user_adr'];
			}
		}
        pg_free_result($result); 
		pg_close($con);

		$end_mimeObject = new Mail_Mime("\n");
		$end_mailObject = Mail::factory("smtp", $params);

		$end_subject = mb_convert_encoding($end_subject,'utf-8', mb_detect_encoding($end_subject));
		$end_subject = mb_encode_mimeheader($end_subject,'iso-2022-jp');

		$end_body = mb_convert_encoding($letter_body, "ISO-2022-JP", "auto");

		$end_mimeObject -> setTxtBody($end_body);
		$end_addHeaders = array(
			"To" => $user_adr,
			"From" => $admin_from_adr,
			"Subject" => $end_subject
		);

		$end_headers = $end_mimeObject -> headers($end_addHeaders);
		$return = $end_mailObject -> send($user_adr, $end_headers, $end_body);

// $end_time = microtime(true) - $start_time;
//echo "<br>" . $end_time . " seconds<br>";
?>
