<?php
	include_once("./lib/config.php");

	// パラメータ取得
	$user_id = isset( $_REQUEST['user_id'] ) ? htmlspecialchars( $_REQUEST['user_id'] ) : "";
	if (get_magic_quotes_gpc()) $user_id = stripslashes($user_id);
	if (strlen($user_id) < 1) {
		header('Location: https://mail.aktio-mail.jp/');
	}
	$passwd = isset( $_REQUEST['passwd'] ) ? htmlspecialchars( $_REQUEST['passwd'] ) : "";
	if (get_magic_quotes_gpc()) $passwd = stripslashes($passwd);
	if (strlen($passwd) < 1) {
		header('Location: https://mail.aktio-mail.jp/');
	}

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
		//echo $loginsql;
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

//echo $loginsql . "<br/>";
//echo $user_id;
	pg_free_result($result);

	if ( $user_id < 1 ) {
		pg_close($con);
		header('Location: login_err.html');
	}




	pg_close($con);

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">
<head profile="http://gmpg.org/xfn/11">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta http-equiv="content-style-type" content="text/css" />
  <meta http-equiv="content-script-type" content="text/javascript" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<title>一斉メール送信先ＣＳＶチェック</title>
<style type="text/css">
body {
        background-color: #defff9;
}
</style>
 
<script language="JavaScript">
<!--
function chkDialog() {

	ret = true;

	msg = "送信するメールアドレスの確認を行います。\n";
	msg = msg + "確認には最大５分ほどかかります。\n";
	msg = msg + "よろしいですか？";

	msg1 = '送信アドレス情報のCSVファイルを指定してください';

    if (document.frmMailEntry.adr_file.value == '') {
        document.getElementById('adr_file').style.backgroundColor = '#ff6666';
        window.alert(msg1);
        ret = false;
    }
    else {
        document.getElementById('apl_adr').style.backgroundColor = '#EEEEEE';
    }

	if (ret) {
		ret = confirm(msg);
	}

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

  <form method="post" action="mail_chk_confirm.php" name="frmMailEntry" enctype="multipart/form-data">

    <input type="hidden" name="user_id" value="<?php echo $user_id; ?>" />
    <input type="hidden" name="passwd" value="<?php echo $passwd; ?>" />

<h3>一斉メール送信先ＣＳＶファイルチェック</h3>
<table width="600" align="center">
  <tbody>
    <tr>
<!--
      <th align="left"><strong><strong>一斉メール送信先ＣＳＶファイル指定</strong>
-->
<th>　</th>
    </tr>
    <tr>
      <th align="left">
        <input type="file" name="adr_file" id="adr_file" accept=".csv">
      </th>
    </tr>
    <tr>
      <th align="right">
        <input name="kakunin" type="submit" value="確認画面へ" onclick="return chkDialog();" />
      </th>
    </tr>

  </tbody>
</table>
<br />
<br />


</form>

</div><!-- ここまでがcontentのレイヤー枠です -->
</div><!-- ここまでがfooterのレイヤー枠です -->

</body>
</html>
