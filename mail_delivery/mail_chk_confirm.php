<?php
	include_once('./lib/config.php');
	include_once('./lib/mail_delivery.lib');
	include_once('./lib/CheckUser.php');

//	ini_set("max_execution_time", 0);

	// パラメータ取得
	$user_id = isset( $_REQUEST['user_id'] ) ? htmlspecialchars( $_REQUEST['user_id'] ) : "";
	if (get_magic_quotes_gpc()) $user_id = stripslashes($user_id);
	if (strlen($user_id) < 1) {
		header('Location: login_err.html');
	}
	$passwd = isset( $_REQUEST['passwd'] ) ? htmlspecialchars( $_REQUEST['passwd'] ) : "";
	if (get_magic_quotes_gpc()) $passwd = stripslashes($passwd);
	if (strlen($user_id) < 1) {
		header('Location: login_err.html');
	}

	// login status check
	$con = pg_connect("host=$namae dbname=$dbnamae user=$dbuser password=$dbpw");
	if($con == false){
		header('Location: login_err.html');
	}
	$loginsql  = "select * from m_base where user_id = " . $user_id;
	$loginsql .= " and user_pwd = '" . $passwd . "'";
	$loginsql .= " and del_f = false ";
	$loginsql .= " and  CURRENT_DATE = user_date";

	$result = pg_query($con, $loginsql);
	if (!$result) {
//		echo $loginsql;
//		die("Error in SQL query : " . pg_last_error());
		pg_close($con);
		header('Location: login_err.html');
	}
	if (pg_numrows($result) > 0) {
		if ($row = pg_fetch_array($result)) {
			$user_id = $row['user_id'];
		}
		else {
			pg_close($con);
			header('Location: login_err.html');
		}
	}
	else {
		pg_close($con);
		header('Location: login_err.html');
	}
	pg_free_result($result);

	if ( strlen($user_id) < 1 ) {
		pg_close($con);
		header('Location: login_err.html');
	}
	pg_close($con);


	$adr_file = isset( $_REQUEST['adr_file'] ) ? htmlspecialchars( $_REQUEST['adr_file'] ) : "";
	if (get_magic_quotes_gpc()) $adr_file = stripslashes($adr_file);

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">
<head profile="http://gmpg.org/xfn/11">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta http-equiv="content-style-type" content="text/css" />
  <meta http-equiv="content-script-type" content="text/javascript" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<title>確認画面</title>
<style type="text/css">
body {
        background-color: #defff9;
}
</style>

<script language="JavaScript">
<!--

function chkDialog() {

//	ret = confirm( "メールアドレスのチェックを行います。よろしいですか？");
	ret = true;

	return ret;
}
//-->
</script>
</head>

<body>
<div id="container">
<div id="header1">


</div><!-- ここまでがheaderのレイヤー枠です -->
<div id="content">
<div id="p-2">

<form action="entry.php" method="post">
  <input type="hidden" name="user_id" id="user_id" value="<?php echo $user_id; ?>" />
  <input type="hidden" name="passwd" id="passwd" value="<?php echo $passwd; ?>" />

<h3>一斉メール送信先確認</h3>
<h4>【一斉メール送信先確認結果】</h4>
  <table width="100%" border="0">

<!--
    <tr>
      <td>メールアドレスチェック中です。</td>
    </tr>
    <tr>
      <td>送信するメールアドレスの存在チェックは最大５分かかります。</td>
    </tr>
-->
    <tr>
      <td align="center">------------------------------------------------------------------------------------------ <br>
<?php
	$updir = './data';
	$flg_send = true;

	// copy file
	$array_file = scandir($updir);
	$count_file = count($array_file) -1;
	$tmp_file = @$_FILES['adr_file']['tmp_name'];
	@list($file_name, $file_type) = explode(".",@$_FILES['adr_file']['name']);
	$copy_file = $file_name . "." . $file_type;
	$full_file = "$updir/$copy_file";
	move_uploaded_file($tmp_file,"$full_file");
	$csvfile = $full_file;
	// error file
	$errfile = $updir."/"."error_addresses.csv";

// file check
$offset = strpos($csvfile, ".csv");
//echo $adr_file. " " . $offset . "byte<br>";
$recCnt = 0;
if ($offset > 0) {

//echo $csvfile . "<br />";

	$fp = @fopen($csvfile, "r");
	$fp_err = @fopen($errfile, "w");

	$flg_send = true;
	$errMsg = false;
	if ($fp) {

		$con = pg_connect("host=$namae dbname=$dbnamae user=$dbuser password=$dbpw");
		if($con == false) {
			fclose($fp);
			unlink($csvfile);
			exit;
		}

		$chk = new Mail_CheckUser(FQDN, SENDER);

		while ( $line = fgets($fp) ) {
			$line = chop( mb_convert_encoding($line, "UTF-8", "JIS, eucjp-win, sjis-win") );
			$line = chop( $line );
			$line_replaced = $line;
			$line_replaced = str_replace("\"","",$line_replaced);
			$line_replaced = str_replace("'", "",$line_replaced);
			$strRec = preg_split("/,/", $line_replaced);
			$fmax = count($strRec);

			$to_address = $strRec[0];   // メールアドレス
			$com_name   = $strRec[1];   // 会社名
			$sec_name1  = $strRec[2];   // 部署名１
			$sec_name2  = $strRec[3];   // 部署名２
			$per_name   = $strRec[4];   // ご担当者名

			$sql  = "select * from t_sendinfo ";
			$sql .= " where send_id = " . $user_id;
			$sql .= "   and status = " . WAIT;
			$sql .= "   and to_address = '" . $to_address . "'"; 

			$result = pg_query($con, $sql);
			//sql error -- $to_address string error example include ' or " , ?
			if (!$result) {
				// die("Error in SQL query : " . pg_last_error());
				pg_close($con);
				fclose($fp);
				unlink($csvfile);
				header('Location: login_err.html');
			}
			$chk_adr = '';
			if (pg_numrows($result) > 0) {
				$recCnt++;
				if ($row = pg_fetch_array($result)) {
					$chk_adr = $row['to_address'];
				}
      			}
			//echo "chk_adr: " . $chk_adr. " " . "<br />";

			if (strcmp($chk_adr, $to_address) != 0) {
				usleep(CHECK_TIME);
				// Mail Check 
				// 連続定義を行なうと機嫌がいい
				$chk->checkEmail($to_address);
				$chk->checkEmail($to_address);
				$chk->checkEmail($to_address);
				if ($chk->checkEmail($to_address) ) {
					//echo $user_id . " " . $to_address . "<b/r>";
					$info_sql  = "insert into t_sendinfo (";
					$info_sql .= " send_id";
					$info_sql .= ",to_address";
					$info_sql .= ",status";
					$info_sql .= ",com_name";
					$info_sql .= ",sec_name1";
					$info_sql .= ",sec_name2";
					$info_sql .= ",per_name";
					$info_sql .= ",send_chk";
					$info_sql .= ",regist_date";
					$info_sql .= "  ) values ( ";
					$info_sql .=  $user_id;
					$info_sql .= ",'" . $to_address . "'";
					$info_sql .= ","  . WAIT;
					$info_sql .= ",'" . $com_name . "'";
					$info_sql .= ",'" . $sec_name1 . "'";
					$info_sql .= ",'" . $sec_name2 . "'";
					$info_sql .= ",'" . $per_name . "'";
					$info_sql .= ",0";
					$info_sql .= ",Now()";
					$info_sql .= ")";

					$result = pg_query($con, $info_sql);
					if (!$result) {
						$ret = 4;
						echo $info_sql . "<br />";
						die("Error in SQL query insert t_sendinfo: " . pg_last_error());
					}
					pg_free_result($result);
					$recCnt++;
				}
				// MailAddress Error
				else {
					//echo "<font color='red' size='3'>$chk->response_code : $chk->response</font><br/>";
					/*
					if (!$errMsg) {
						echo "<font color='red' size='3'>存在しないメールアドレスが含まれています。 </font><br />";
						echo "<font color='red' size='3'>添付ファイルをご確認の上、戻るボタンから </font><br />";
						echo "<font color='red' size='3'>再度操作を行なってください。 </font><br />";
					}
					echo $to_address ."　". $com_name ."　". $sec_name1 ."　". $sec_name2 ."　". $per_name . "<br/>";
					*/
					fwrite($fp_err, $line.','.$chk->response_code."\n");
					$flg_send = false;
					//$errMsg = true;
				}
			}
			else {
				//echo "check ok : " . $to_address . "<br />";
			}
		} // while end
		fclose($fp);
		fclose($fp_err);
		unlink($csvfile);
	}
}
else {  // csv check
	echo "<font color='red' size=3>ＣＳＶ以外のファイルが指定されました。 </font><br />";
	$flg_send = false;
}

// success
if ($flg_send) {
?>
<font size="3">送信先のメールアドレスが正常であることを確認しました。 </font>
<br />
          ------------------------------------------------------------------------------------------ <br></td>
</tr>
<td align="right">
<input name="sousin" type="submit" value="入力画面へ" onclick="return chkDialog();">
<input name="csvfile" type="hidden"value="<?php echo $csvfile; ?>" />
<?php
	}elseif($recCnt > 0){
?>
<font size="3">アップロードされた該当メールアドレスが実在するか、確認を行いました。</font><br/>
<font size="3"><?php echo($recCnt); ?>件のメールアドレスの存在が確認されました。</font><br/>
<font size="3">実在するメールアドレスのみ送信する場合には[入力画面へ]をクリックしてください。</font><br/>
<font size="3">※ 実在しないメールアドレスの一覧画面は一括送信後に表示されます</font><br/>
<br/>
          ------------------------------------------------------------------------------------------ <br></td>
</tr>
<td Align="right">
	<input name="sousin" type="submit" value="入力画面へ" onclick="return chkDialog();">
	<input name="csvfile" type="hidden" value="<?php echo $csvfile; ?>" />
	<input name="errfile" type="hidden" value="<?php echo $errfile; ?>" />
	&nbsp;&nbsp;
	&nbsp;&nbsp;
	<input name="modoru" type="button" value="戻る" onclick="history.back();">
</form>
<?php
	}else {
?>
<font size="3">アップロードされたメールアドレスは全て存在しません。</font><br/>
<font color='red' size='3'>添付ファイルをご確認の上、戻るボタンから </font><br/>
<font color='red' size='3'>再度操作を行なってください。 </font><br/>
          ------------------------------------------------------------------------------------------ <br></td>
</tr>
<tr>
<td align="right">
<input name="modoru" type="button" value="戻る" onclick="history.back();">

<?php
	}
?>
        </td>
      </tr>
    </table>
   <br>
</form>
</div><!-- ここまでがcontentのレイヤー枠です -->
</div><!-- ここまでがfooterのレイヤー枠です -->

</body>
</html>

