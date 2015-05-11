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
	$csvfile = isset( $_REQUEST['csvfile'] ) ? htmlspecialchars( $_REQUEST['csvfile'] ) : "";
	if (get_magic_quotes_gpc()) $csvfile = stripslashes($csvfile);
	if (strlen($csvfile) < 1) {
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
  <link href="./css/style.css" rel="stylesheet" type="text/css" />
  <title>入力画面</title>
  <style type="text/css">
  body {
        background-color: #defff9;
  }
</style>

<script language="JavaScript">
<!--

function chkLength(str,flg) {

	rt = true;
	for (var i = 0; i < str.length; i++) {
		var c = str.charCodeAt(i);
		// Shift_JIS: 0x0 ～ 0x80, 0xa0 , 0xa1 ～ 0xdf , 0xfd ～ 0xff
		// Unicode : 0x0 ～ 0x80, 0xf8f0, 0xff61 ～ 0xff9f, 0xf8f1 ～ 0xf8f3
		if ( (c >= 0x0 && c < 0x81) || (c == 0xf8f0) || (c >= 0xff61 && c < 0xffa0) || (c >= 0xf8f1 && c < 0xf8f4)) {
		}
		else {
			rt = false;
		}
	}
	return rt;
}

function chkEntry() {

	var msIE = /*@cc_on ! @*/ false;
	ret = true;

	msg1 = '送信メールアドレスを入力してください';
	msg2 = '送信者のお名前を入力してください';
	msg3 = '送信アドレス情報のCSVファイルを指定してください';
	msg4 = 'メール件名を入力してください';
	msg5 = 'メール本文を入力してください';


	if (document.frmEntry.apl_adr.value == '') {
		document.getElementById('apl_adr').style.backgroundColor = '#ff6666';
		window.alert(msg1);
		ret = false;
	}
	else {
		document.getElementById('apl_adr').style.backgroundColor = '#EEEEEE';
	}

	if (document.frmEntry.name_info.value == '') {
		document.getElementById('name_info').style.backgroundColor = '#ff6666';
		window.alert(msg2);
		ret = false;
	}
	else {
		document.getElementById('name_info').style.backgroundColor = '#EEEEEE';
	}

	if (document.frmEntry.subject.value == '') {
		document.getElementById('subject').style.backgroundColor = '#ff6666';
		window.alert(msg4);
		ret = false;
	}
	else {
		document.getElementById('subject').style.backgroundColor = '#EEEEEE';
	}

	if (document.frmEntry.comment.value == '') {
		document.getElementById('comment').style.backgroundColor = '#ff6666';
		window.alert(msg5);
		ret = false;
	}
	else {
		document.getElementById('comment').style.backgroundColor = '#EEEEEE';
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

  <form method="post" action="confirm.php" name="frmEntry" enctype="multipart/form-data">

    <input type="hidden" name="user_id" value="<?php echo $user_id; ?>" />
    <input type="hidden" name="passwd" value="<?php echo $passwd; ?>" />
    <input type="hidden" name="csvfile" value="<?php echo $csvfile; ?>" />
    <input type="hidden" name="errfile" value="<?php echo $errfile; ?>" />

<h3>一斉メール発行画面</h3>
<table width="600" align="center">
  <tbody>

    <tr>
      <td align="right"><br>
        <a href="../pdf/manual-sinsei.pdf" target="_blank">【ご利用方法はこちら】</a>
      </td>
    </tr>




    <tr>
      <th align="left"><h4>【一斉メール送信者情報】</h4></th>
    </tr>
    <tr>
      <th align="left"><strong>一斉メール送信者メールアドレス</strong></th>
    </tr>
    <tr>
      <th align="left">
<!--
        <input type="text" name="apl_adr" id="apl_adr" size="80" maxlength="50" />
-->
        <input type="text" name="apl_adr" id="apl_adr" size="80" />
      </th>
    </tr>
    <tr>
      <th align="left"><strong>一斉メール送信者名称（会社名、部署名、担当者名） </strong></th>
    </tr>
    <tr>
      <th align="left">
<!--
        <input type="text" name="name_info" id="name_info" size="80" maxlength="50" />
-->
        <input type="text" name="name_info" id="name_info" size="80" />
      </th>
    </tr>
    <tr>
      <td align="left">（例　株式会社アクティオ　情報システム部　担当　大坂　など　）</td>
    </tr>
    <tr>
      <th align="left">&nbsp;</th>
    </tr>
    <tr>
      <th align="left"><h4>【一斉メール】</h4></th>
    </tr>
    <tr>
      <th align="left"><strong>一斉メール件名（１００文字以内）</strong></th>
    </tr>
    <tr>
      <th align="left">
<!--
        <input type="text" name="subject" id="subject" size="80" maxlength="100" />
-->
        <input type="text" name="subject" id="subject" size="80" />
      </th>
    </tr>
    <tr>
      <td align="left">（例　〇〇月　アクティオ　定期内覧会のお知らせ　など　）</td>
    </tr>
    <tr>
      <th align="left"><strong>一斉メール本文（５０００文字以内）</strong></th>
    </tr>
    <tr>
      <th align="left">
        <textarea cols="80" rows="41" name="comment" id="comment" maxlength="5000"></textarea>
      </th>
    </tr>
    <tr>
      <td align="left">※メーラーやテキストエディターなどで原稿を作成し、コピー＆ペーストで貼り付けて頂く事をおすすめ致します
（次の確認画面にて、本文を確認する事ができます）</td>
    </tr>
    <tr>
      <th align="left">&nbsp;</th>
    </tr>
    <tr>
      <th align="left">添付ファイル（<font color="red">ＰＤＦ限定</font>　５ファイルまで、　合計容量２Ｍまで）</th>
    </tr>
    <tr>
    <th align="left">
      添付ファイル１：<input type="file" name="upfile1" id="upfile1" accept=".pdf">
    </th>
    <tr>
    <th align="left">
     添付ファイル２：<input type="file" name="upfile2" id="upfile2" accept=".pdf">
    </th>
    <tr>
    <th align="left">
     添付ファイル３：<input type="file" name="upfile3" id="upfile3" accept=".pdf">
    </th>
    <tr>
    <th align="left">
     添付ファイル４：<input type="file" name="upfile4" id="upfile4" accept=".pdf">
    </th>
    <tr>
    <th align="left">
     添付ファイル５：<input type="file" name="upfile5" id="upfile5" accept=".pdf">
    </t>
    <tr>
      <td align="left">（一斉メールの添付ファイルにウィルスなどがあると、大きな問題となりますので、ご注意ください） </td>
    </tr>
    <tr>
      <th align="left">&nbsp;</th>
    </tr>
    <tr>
      <th align="left"><font color=red>
<input name="reset" type="reset" value="入力欄をリセット" /><br />
※[入力欄をリセット]ボタンを押すと、入力欄の情報が全ての情報が削除されます。<br />
      </font></th>
    </tr>
    <tr>
      <th align="left">&nbsp;</th>
    </tr>
    <tr>
      <th align="left">&nbsp;</th>
    </tr>
    <tr>
      <th align="right">
        <input name="kakunin" type="submit" value="確認画面へ" onclick="return chkEntry();" />
      </th>
    </tr>
    <tr>
      <th align="left">&nbsp;</th>
    </tr>
  </tbody>
</table>

   <br>
   <br>

</form>

</div><!-- ここまでがcontentのレイヤー枠です -->
</div><!-- ここまでがfooterのレイヤー枠です -->

</body>
</html>

