<?php
	include_once('./lib/config.php');
	include_once('./lib/mail_delivery.lib');
	include_once('./lib/CheckUser.php');

	ini_set("max_execution_time", 0);

	// パラメータ取得
	$user_id = isset( $_REQUEST['user_id'] ) ? htmlspecialchars( $_REQUEST['user_id'] ) : "";
	if (get_magic_quotes_gpc()) $user_id = stripslashes($user_id);
	if (strlen($user_id) < 1) {
		header('Location: login_err.html');
	}
//echo $user_id . "<br />";
	$passwd = isset( $_REQUEST['passwd'] ) ? htmlspecialchars( $_REQUEST['passwd'] ) : "";
	if (get_magic_quotes_gpc()) $passwd = stripslashes($passwd);
	if (strlen($passwd) < 1) {
		header('Location: login_err.html');
	}
//echo $passwd . "<br />";

	$csvfile = isset( $_REQUEST['csvfile'] ) ? htmlspecialchars( $_REQUEST['csvfile'] ) : "";
	if (get_magic_quotes_gpc()) $csvfile = stripslashes($csvfile);
	if (strlen($csvfile) < 1) {
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

	$apl_adr = isset( $_REQUEST['apl_adr'] ) ? htmlspecialchars( $_REQUEST['apl_adr'] ) : "";
	if (get_magic_quotes_gpc()) $apl_adr = stripslashes($apl_adr);

	$name_info = isset( $_REQUEST['name_info'] ) ? htmlspecialchars( $_REQUEST['name_info'] ) : "";
	if (get_magic_quotes_gpc()) $name_info = stripslashes($name_info);

	$subject = isset( $_REQUEST['subject'] ) ? htmlspecialchars( $_REQUEST['subject'] ) : "";
	if (get_magic_quotes_gpc()) $subject = stripslashes($subject);

	$adr_file = isset( $_REQUEST['adr_file'] ) ? htmlspecialchars( $_REQUEST['adr_file'] ) : "";
	if (get_magic_quotes_gpc()) $adr_file = stripslashes($adr_file);

	$comment = nl2br( $_POST['comment'] );
	$chk_cmt = nl2br( $_POST['comment'] );

	$adr_file= isset( $_FILES['adr_file']['name'] ) ? htmlspecialchars( $_FILES['adr_file']['name'] ) : "";
	if (get_magic_quotes_gpc()) $adr_file = stripslashes($adr_file);

	$upfile1= isset( $_FILES['upfile1']['name'] ) ? htmlspecialchars( $_FILES['upfile1']['name'] ) : "";
	if (get_magic_quotes_gpc()) $upfile1 = stripslashes($upfile1);
//echo "upfile1:" .  $upfile1 . "<br/>";

	$upfile2 = isset( $_FILES['upfile2']['name'] ) ? htmlspecialchars( $_FILES['upfile2']['name'] ) : "";
	if (get_magic_quotes_gpc()) $upfile2 = stripslashes($upfile2);
//echo "upfile2:" .  $upfile2 . "<br/>";

	$upfile3 = isset( $_FILES['upfile3']['name'] ) ? htmlspecialchars( $_FILES['upfile3']['name'] ) : "";
	if (get_magic_quotes_gpc()) $upfile3 = stripslashes($upfile3);
//echo "upfile3:" .  $upfile3 . "<br/>";

	$upfile4 = isset( $_FILES['upfile4']['name'] ) ? htmlspecialchars( $_FILES['upfile4']['name'] ) : "";
	if (get_magic_quotes_gpc()) $upfile4 = stripslashes($upfile4);
//echo "upfile4:" .  $upfile4 . "<br/>";

	$upfile5 = isset( $_FILES['upfile5']['name'] ) ? htmlspecialchars( $_FILES['upfile5']['name'] ) : "";
	if (get_magic_quotes_gpc()) $upfile5 = stripslashes($upfile5);
//echo "upfile5:" .  $upfile5 . "<br/>";

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

	msg  = "一斉メール送信の指示を行ないます。\n";
	msg .= "送信処理は最大１時間半かかります。\n\n";
	msg .= "実行いたしますか？" );



	ret = confirm( msg );
/* deleted by y.fukuzaki
	if ( ret == true ) {
		alert( "送信指示を行ないます。" );
	}
*/

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

<form action="proc.php" method="post">
  <input type="hidden" name="user_id" id="user_id" value="<?php echo $user_id; ?>" />
  <input type="hidden" name="passwd" id="passwd" value="<?php echo $passwd; ?>" />
  <input type="hidden" name="apl_adr" id="apl_adr" value="<?php echo $apl_adr; ?>" />

<h3>一斉メール確認画面</h3>
<h4>【一斉メール送信者情報】</h4>
<p><strong>一斉メール送信者メールアドレス　（メール一番下に反映されます）</strong></p>
<p><?php echo $apl_adr; ?></p>
<p><strong>一斉メール送信者名称　（メール一番下に反映されます） </strong><br>
<?php echo $name_info; ?> <br />
<p><strong>一斉メール件名 </strong><br>
<p><?php echo $subject; ?></p>
  <table width="100%" border="0">
    <tr>
      <td align="left">------------------------------------------------------------------------------------------ <br>

<?php
	// apl_adr check
//echo "hoge:" . mb_strlen($apl_adr) . "<br>";
	if (strlen($apl_adr) <= 50 ) {

	// name_info check
//echo "name_info:" . $name_info . " " . mb_strlen($name_info, 'UTF-8') . "<br>";
	if (mb_strlen($name_info, 'UTF-8') <= 50 ) {

	// subject check
//echo "hoge:" . mb_strlen($subject) . "<br>";
	if (mb_strlen($subject, 'UTF-8') <= 100 ) {

	// textarea check
//echo "chk_cmt:" . mb_strlen( strip_tags($chk_cmt), 'UTF-8') . "<br>";
	if (mb_strlen( strip_tags($chk_cmt), 'UTF-8') <= 6000 ) {

	// pdf check
	$offset1 = 1;
	$offset2 = 1;
	$offset3 = 1;
	$offset4 = 1;
	$offset5 = 1;
	if (strlen($upfile1) > 1)	$offset1 = strpos($upfile1, ".pdf");
	if (strlen($upfile2) > 1)	$offset1 = strpos($upfile2, ".pdf");
	if (strlen($upfile3) > 1)	$offset1 = strpos($upfile3, ".pdf");
	if (strlen($upfile4) > 1)	$offset1 = strpos($upfile4, ".pdf");
	if (strlen($upfile5) > 1)	$offset1 = strpos($upfile5, ".pdf");
//echo $upfile1. " " . $offset1 . "byte<br>";
//echo $upfile2. " " . $offset2 . "byte<br>";
//echo $upfile3. " " . $offset3 . "byte<br>";
//echo $upfile4. " " . $offset4 . "byte<br>";
//echo $upfile5. " " . $offset5 . "byte<br>";

	if ( ($offset1 > 0) && ($offset2 > 0) && ($offset3 > 0) && ($offset4 > 0) && ($offset5 > 0) ) {

// initialize
//	unlink(NG_LIST);
//	unlink(OK_LIST);

	$updir = './data';
	$flg_send = true;

	// copy file
	$array_file = scandir($updir);
	$count_file = count($array_file) -1;
	$tmp_file = @$_FILES['upfile1']['tmp_name'];
	@list($file_name, $file_type) = explode(".",@$_FILES['upfile1']['name']);
	$copy_file = $file_name . "." . $file_type;
	$full_file = "$updir/$copy_file";
	move_uploaded_file($tmp_file,"$full_file");
	$file1size = filesize($full_file);

	$array_file = scandir($updir);
	$count_file = count($array_file) -1;
	$tmp_file = @$_FILES['upfile2']['tmp_name'];
	@list($file_name, $file_type) = explode(".",@$_FILES['upfile2']['name']);
	$copy_file = $file_name . "." . $file_type;
	$full_file = "$updir/$copy_file";
	move_uploaded_file($tmp_file,"$full_file");
	$file2size = filesize($full_file);

	$array_file = scandir($updir);
	$count_file = count($array_file) -1;
	$tmp_file = @$_FILES['upfile3']['tmp_name'];
	@list($file_name, $file_type) = explode(".",@$_FILES['upfile3']['name']);
	$copy_file = $file_name . "." . $file_type;
	$full_file = "$updir/$copy_file";
	move_uploaded_file($tmp_file,"$full_file");
	$file3size = filesize($full_file);

	$array_file = scandir($updir);
	$count_file = count($array_file) -1;
	$tmp_file = @$_FILES['upfile4']['tmp_name'];
	@list($file_name, $file_type) = explode(".",@$_FILES['upfile4']['name']);
	$copy_file = $file_name . "." . $file_type;
	$full_file = "$updir/$copy_file";
	move_uploaded_file($tmp_file,"$full_file");
	$file4size = filesize($full_file);

	$array_file = scandir($updir);
	$count_file = count($array_file) -1;
	$tmp_file = @$_FILES['upfile5']['tmp_name'];
	@list($file_name, $file_type) = explode(".",@$_FILES['upfile5']['name']);
	$copy_file = $file_name . "." . $file_type;
	$full_file = "$updir/$copy_file";
	move_uploaded_file($tmp_file, "$full_file");
	$file5size = filesize($full_file);

	$allsize = $file1size + $file2size + $file3size + $file4size + $file5size;
//$allsize = $MAX_PDFSIZE + 10;
//echo "total:" . $allsize;
//echo " max:" . $MAX_PDFSIZE;

	if ($MAX_PDFSIZE >= $allsize) {

		$flg_send = true;
		$recCnt = 1;
		$errMsg = false;

		$con = pg_connect("host=$namae dbname=$dbnamae user=$dbuser password=$dbpw");
		if($con == false) {
			exit;
		}

		if (!$flg_send) {
			$sql = "delete from t_sendinfo where send_id = '" . $user_id . "'";
			$result = pg_query($con, $sql);
			if (!$result) {
				die("Error in SQL query delete t_sendinfo: " . pg_last_error());
			}
		}
		else {
			$datasql  = "insert into t_senddata (";
			$datasql .= " user_id";
			$datasql .= ",from_adr";
			$datasql .= ",name";
			$datasql .= ",subject";
			$datasql .= ",filepdf1";
			$datasql .= ",filepdf2";
			$datasql .= ",filepdf3";
			$datasql .= ",filepdf4";
			$datasql .= ",filepdf5";
			$datasql .= ",comment";
			$datasql .= ") values (";
			$datasql .=  $user_id;
			$datasql .= ",'" . $apl_adr . "'";
			$datasql .= ",'" . $name_info . "'";
			$datasql .= ",'" . $subject . "'";
			$datasql .= ",'" . $upfile1 . "'";
			$datasql .= ",'" . $upfile2 . "'";
			$datasql .= ",'" . $upfile3 . "'";
			$datasql .= ",'" . $upfile4 . "'";
			$datasql .= ",'" . $upfile5 . "'";
			$datasql .= ",'" . $comment . "'";
			$datasql .= ")";
				
			$result = pg_query($con, $datasql);

			if (!$result) {
				$ret = 4;
				echo $datasql . "<br />";
				die("Error in SQL query insert t_senddata: " . pg_last_error());
			}

			pg_free_result($result);

		}

		pg_close($con);


}
else {
	echo "<font color='red' size=3>添付ファイルサイズの合計が２Mバイトを超えています。</font><br />";
	$flg_send = false;
}


} 
else {	// pdf check
	echo "<font color='red' size=3>ＰＤＦ以外のファイルが指定されました。 </font><br />";
	$flg_send = false;
}

}
else { 	// comment check
	echo "<font color='red' size=3> 一斉メール本文に5000文字以上の文字は利用できません。 </font><br />";
	$flg_send = false;
}

}
else { 	// subject check
	echo "<font color='red' size=3> 件名に100文字以上の文字は利用できません。 </font><br />";
	$flg_send = false;
}

}
else { 	// name_info check
	echo "<font color='red' size=3> 一斉メール送信者名称に50文字以上の文字は利用できません。 </font><br />";
	$flg_send = false;
}

}
else { 	// apl_adr check
	echo "<font color='red' size=3> 一斉メール送信者アドレスに50文字以上の文字は利用できません。 </font><br />";
	$flg_send = false;
}

        // success
	if ($flg_send) {
?>
        <br>
<?php echo $comment; ?>
<br />
<br />
<?php echo $name_info; ?>
<br />
<?php echo $apl_adr; ?>
<br />
          ------------------------------------------------------------------------------------------ <br>
<br />
<?php
if (strlen($upfile1) > 0)	echo "添付ファイル１：" . $upfile1 . "<br />";
if (strlen($upfile2) > 0)	echo "添付ファイル２：" . $upfile2 . "<br />";
if (strlen($upfile3) > 0)	echo "添付ファイル３：" . $upfile3 . "<br />";
if (strlen($upfile4) > 0)	echo "添付ファイル４：" . $upfile4 . "<br />";
if (strlen($upfile5) > 0)	echo "添付ファイル５：" . $upfile5 . "<br />";
?>
</td>
</tr>
<td align="right">
<input name="modoru" type="button" value="戻る" onclick="history.back();">　　
<input name="sousin" type="submit" value="一斉送信" onclick="return chkDialog();">
 <?php
	}
	else {
?>

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
