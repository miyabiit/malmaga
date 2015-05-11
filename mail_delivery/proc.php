<?php
/******************************/
/* send process               */
/******************************/
	include_once("lib/config.php");
	include_once("/var/www/data/module/Mail.php");
	include_once("/var/www/data/module/Mail/mime.php");

	ini_set("max_execution_time", 0);

	$user_id = isset( $_REQUEST['user_id'] ) ? htmlspecialchars( $_REQUEST['user_id'] ) : "";
	if (get_magic_quotes_gpc()) $user_id = stripslashes($user_id);
	if (strlen($user_id) < 1) {
		header('Location: login_err.html');
	}
	$passwd = isset( $_REQUEST['passwd'] ) ? htmlspecialchars( $_REQUEST['passwd'] ) : "";
	if (get_magic_quotes_gpc()) $passwd = stripslashes($passwd);
	if (strlen($passwd) < 1) {
		header('Location: login_err.html');
	}

	// login status check
	$con = pg_connect("host=$namae dbname=$dbnamae user=$dbuser password=$dbpw");
	if($con == false){
		header('Location: login_err.html');
	}
	$loginsql  = "select * from m_base where user_id = " . $user_id;
	$loginsql .= " and user_pwd = '" . $passwd . "'";
//	$loginsql .= " and del_f = false ";
	$loginsql .= " and  CURRENT_DATE = user_date";

	$result = pg_query($con, $loginsql);
	if (!$result) {
//      echo $loginsql;
//      die("Error in SQL query : " . pg_last_error());
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

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">
<head profile="http://gmpg.org/xfn/11">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta http-equiv="content-style-type" content="text/css" />
  <meta http-equiv="content-script-type" content="text/javascript" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<title>一斉メール送信処理受付完了</title>
<style type="text/css">
body {
        background-color: #defff9;
}
</style>
<script type="text/javascript" language="JavaScript">
<!--
function close_win(){
	var nvua = navigator.userAgent;
	if(nvua.indexOf('MSIE') >= 0){
    	if(nvua.indexOf('MSIE 5.0') == -1) {
			top.opener = '';
		}
	}
	else if(nvua.indexOf('Gecko') >= 0){
		top.name = 'CLOSE_WINDOW';
		wid = window.open('','CLOSE_WINDOW');
	}
	top.close();
}
-->
</script>



</head>
<body>
<div id="container">
<div id="header1">


</div><!-- ここまでがheaderのレイヤー枠です -->
<div id="content">
<div id="p-2">

<form action="proc_sendmail.php" method="POST">
    <!-- MAX_FILE_SIZE は、必ず "file" input フィールドより前になければなりません -->

  <input type="hidden" name="user_id" id="user_id" value="<?php echo $user_id; ?>" />

<h3>一斉メール送信処理受付完了</h3>
<h4>一斉メール送信処理の受付をいたしました。</h4>
<br />
<table width="700" align="center">
<tbody>

<tr>
<th align="left"><font size="3">
一斉メール送信処理受付完了後に、送信者には「送信処理受付完了メール」が届きます。
</font>
</th>
</tr>
<tr>
<th align="left">　</th>
</tr>
<tr>
<th align="left">※
この「送信処理受付完了メール」は、送信受付処理が終わったことをお知らせするメールとなります。</th>
</tr>
<tr>
<th align="left">　連続でメールを一斉に送信した際に送信受付処理が完了した場合でも、全てのメールが相手に受信されるまでに </th>
</tr>
<tr>
<th align="left">　<font color="red">半日ほどお時間がかかる場合</font>がございますので、 ご注意くださいますようお願い致します。 </th>
</tr>

<tr>
<th align="left">　</th>
</tr>

<tr>
<th align="right">
<input type="button" value="閉じる" onClick="close_win()">
</th>
</tr>

<?php
	// nice 値 +5 で実行
	$cmd = "/bin/nice -n +5 /usr/bin/php -q sendmail.php " . $user_id . " > /dev/null &";
//	$cmd = "/bin/nice -n +5 /usr/bin/php /var/www/mail_delivery/sendmail.php " . $user_id;
//echo $cmd ." <br>";

	system($cmd);

	$updir = './data';
	$errfile = $updir."/"."error_addresses.csv";
	$fp_err = @fopen($errfile, "r");
	if ($fp_err) {
		echo "<font color='red' size='3'>存在しないメールアドレスリスト</font><br />";
		while ( $line = fgets($fp) ) {
			echo $line . "<br/>";
		}
	}
?>

</tbody>
</table>
</form>
</div><!-- ここまでがcontentのレイヤー枠です -->
</div><!-- ここまでがfooterのレイヤー枠です -->

</body>
</html>
