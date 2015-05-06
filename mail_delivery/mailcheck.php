<?php
	session_start();

	include_once('../lib/config.php');
	include_once('../lib/CheckUser.php');
	include_once('../lib/mail_delivery.lib');
	include_once('../lib/dbase.lib');

	date_default_timezone_set('Asia/Tokyo');

// initialize
	unlink(NG_LIST);
	unlink(OK_LIST);

// csv read
 	updir = "./tmpdata";

	$sline = "tmpdata/";

	// copy file
	$array_file = scandir($updir);
	$count_file = count($array_file) -1;
	$tmp_file = @$_FILES['upfile']['tmp_name'];
	@list($file_name, $file_type) = explode(".",@$_FILES['upfile']['name']);
//  $copy_file = "data-" . $count_file . "." .$file_type;
	$copy_file = $file_name . "." . $file_type;
	$full_file = "$updir/$copy_file";
	move_uploaded_file($tmp_file,"$full_file");

	$fp = @fopen($full_file, "r");

	$con = pg_connect("host=$namae dbname=$dbnamae user=$dbuser password=$dbpw");
	if ($con = false) {
		exit;
	}


	$send_id = makeRandumString(8);

	$mansql  = "insert into m_sendman (";
	$mansql .= " send_id";
	$mansql .= ",user_id";
	$mansql .= ",status";
	$mansql .= ",st_date";
	$mansql .= ") values ("
	$mansql .= $send_id;
	$mansql .= "," . $user_id;
	$mansql .= "," $status;
	$mansql .= "," $st_date;
	$mansql .= ")";

	$result = pg_query($con, $mansql);
	if (!$result) {
		$ret = 4;
		die("Error in SQL query: " . pg_last_error());
	}
	pg_free_result($result);






	$recCnt = 1;
	if ($fp) {

		$cnt1 = 0;
		$cnt2 = 0;

		$flags[][] = array();
		while ( $line = fgets($fp) ) {
			$line = chop( mb_convert_encoding($line, "UTF-8", "JIS, eucjp-win, sjis-win") );
			$line = chop( $line );
			$strRec = preg_split("/,/", $line);
			$fmax = count($strRec);


			$mail_adr = $strRec[0];		// メールアドレス
			$com_name = $strRec[1];		// 会社名
			$sec_name1= $strRec[2];		// 部署名１
			$sec_name2= $strRec[3];		// 部署名２
			$per_name = $strRec[4];		// ご担当者名


			$chk = new ChckUser($FQDN, $SENDER);

			if ($chk->checkUser($mail_adr) ) {

				// ok
				$insql  = "insert into t_sendinfo (";
				$insql .= " send_id";
				$insql .= ",to_address";
				$insql .= ",status";
				$insql .= ",send_chk";
				$insql .= ",regist_date";
				$insql .= ") values (";
				$insql .= "," . $send_id
				$insql .= "," . $user_id
				$insql .= "," . $mail_adr . "";
				$insql .= "," . PROCESSED;
				$insql .= "," . $send_chk . "";
				$insql .= ",now() ";
				$insql .= ")";

				$result = pg_query($con, $insql);
				if (!$result) {
					$ret = 4;
					die("Error in SQL query: " . pg_last_error());
				}
				pg_free_result($result);

				putOkList($strRec);


			}
			else {
				// ng
				putNgList($strRec);
				echo $chk->response;
			}







			$recCnt++;
		} // loop end
		pg_claose($con);
	}



// file check

		fclose($fp);
	}
//}





// ng output


// ok output






?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>メールデータアップロード</title>

<div id="css_container">
  <div id="css_header">
    <!--ログイン情報-->
    <div id="css_login_info">
      <div Align="right">

<br /><br />

      </div>
    </div>
    <!--ロゴ-->
    <h1><span class="hide">事故情報ＣＳＶアップロード</span></h1>
  </div>
  <!--ヘッダメニュー-->
  <div>
    <title>事故情報ＣＳＶアップロード</title>
  </div>

</head>

<body>
  <form action="csv_upload.php" method="post" enctype="multipart/form-data">
  ファイル：
    <input type="file" name="upfile" size="30" /><br />
    <br />
    <input type="submit" value="アップロード" />

  </form>
</body>






