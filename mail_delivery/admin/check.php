<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript">
</script>
<title>一斉メール送信</title>
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
<form method="POST" action="check.php" target="_blank" name="frmEntry">
<div id="container">
<div id="header">


</div><!-- ここまでがheaderのレイヤー枠です -->
<div id="content">
<div id="p-1">

<br>
<h1>メール管理者画面：利用者ＩＤ　Ｐａｓｓ発行</h1>
<table width="600" align="center">
  <tbody>
  <tr>

<?php
	require_once('../lib/config.php');
	require_once('../lib/mail_delivery.lib');
	require_once('../lib/dbase.lib');

//	include_once("/var/www/data/module/Mail.php");
//	include_once("/var/www/data/module/Mail/mime.php");
	include_once("Mail.php");
	include_once("Mail/mime.php");

	// Variable initialize
	$status     = -1;
	$quest_ent  = -1;
	$maga_ent   = -1;
	$gift_ent   = -1;
	$err_str    = "";

	$ret = 0;

	// パラメータ取得
	$admin_adr = isset( $_REQUEST['admin_adr'] ) ? htmlspecialchars( $_REQUEST['admin_adr'] ) : "";
	if (get_magic_quotes_gpc()) $admin_adr = stripslashes($admin_adr);

	$apl_adr = isset( $_REQUEST['apl_adr'] ) ? htmlspecialchars( $_REQUEST['apl_adr'] ) : "";
	if (get_magic_quotes_gpc()) $apl_adr = stripslashes($apl_adr);

	$use_date = isset( $_REQUEST['use_date'] ) ? htmlspecialchars( $_REQUEST['use_date'] ) : "";
	if (get_magic_quotes_gpc()) $use_date = stripslashes($use_date);

	$use_date = date("Y-m-d", strtotime($use_date));

	// address check
	if ( !validEmail($admin_adr) ) {
		$ret = 1;
	}
	if ( !validEmail($apl_adr) ) {
		$ret = 2;
	}
	if ( !valid_date( $use_date ) ) {
		$ret = 3;
	}

	// address check
	$offset = strpos($apl_adr, CHK_ADR);
//echo $spl_adr . " " . $offset . "byte<br>";
	if ($offset <= 0) {
		$ret = 4;
	}
	
	if ( $ret == 0 ) {

		$con = pg_connect("host=$namae dbname=$dbnamae user=$dbuser password=$dbpw");
		if($con==false){
			die("Error in SQL query open m_base: " . pg_last_error());
	//		exit;
		}

		$check_user = true;
		$cmt_id = ADMIN_ID;
		$user_id = maxUserID($con) + 1;
		$user_name = "";
		$user_adr = $apl_adr;
		$user_pass = makeRandumString(PASS_LEN, true);

//ini_set( 'max_execution_time', 2);
		// user id check
		while ($check_user) {

			$user_id = makeRandumString(USER_LEN, false);

			$chksql = "select * from m_base where user_id = " . $user_id;
			$chk_res = pg_query($con, $chksql);
//echo $user_id . "<br/>";

			if (!$chk_res) {
                //echo $chksql;
//              die("Error in SQL query : " . pg_last_error());
				pg_close($con);
				header('Location: index.php');
				break;
			}
			if (pg_numrows($chk_res) > 0) {
				if ($row = pg_fetch_array($chk_res)) {
//					$user_id = $row['user_id'];
                }
				else {
					$check_user = false;
					break;
				}
        	}
			else {
				// ok
				$check_user = false;
				break;
			}
        	pg_free_result($chk_res);
		}

		$sql = "Insert into m_base (";
		$sql .= " user_id";
		$sql .= ",cmt_id";
		$sql .= ",user_name";
		$sql .= ",user_adr";
		$sql .= ",user_date";
		$sql .= ",user_pwd";
		$sql .= ",del_f";
		$sql .= ",crate_date";
		$sql .= " ) values (";
		$sql .= $user_id;
		$sql .= "," . $cmt_id;
		$sql .= ",'" . $user_name . "'";
		$sql .= ",'" . $user_adr . "'";  
		$sql .= ",'" . $use_date . "'"; 
		$sql .= ",'" . $user_pass . "'";
		$sql .= ",false";
		$sql .= ",Now()";
		$sql .= ")";

		$result = pg_query($con, $sql);
		if (!$result) {
			$ret = 4;
			die("Error in SQL query insert m_base: " . pg_last_error());
		}

		pg_free_result($result);

		pg_close($con);

		$use_date = date("Y/m/d", strtotime($use_date));
		
		$REGIST_LETTER1 = "\n 一斉メール配信のＵＲＬをお知らせ致します。\n\n";
		$REGIST_LETTER2 = "\t" . $REGIST_URL . "\n\n";
		$REGIST_LETTER3 = "一斉メール配信は" . $use_date . " のみのご利用となります。\n\n";
		$REGIST_LETTER4 = "ユーザーＩＤ は [" . $user_id . "] です。";
		$REGIST_LETTER5 = "パスワードは [" . $user_pass . "] です。\n\n";
		$REGIST_LETTER6 = "※一度メール配信まで完了したＩＤ、パスは無効となり、\n";
		$REGIST_LETTER7 = "　再申請が必要となります。\n";

		$subject = $REGIST_SUBJECT;
		$letter_body  = $REGIST_LETTER1 . $REGIST_LETTER2 . $REGIST_LETTER3;
		$letter_body .= $REGIST_LETTER4 . $REGIST_LETTER5 . $REGIST_LETTER6;
		$letter_body .= $REGIST_LETTER7;

		// to administrator mail
		mail_send($admin_from_adr, $admin_adr, $subject, $letter_body);

		// to user mail
		mail_send($admin_from_adr, $user_adr, $subject, $letter_body);

		// to user mail
		$admin_body  = $admin_adr . "様が要求しました。 \n\n";
		$admin_body .= $letter_boyd;
		mail_send($admin_from_adr, $checker, $subject, $admin_body);


?>
<tr><td align="left"><font size=3>利用者ＩＤ　ＰＡＳＳの発行が完了しました。</font></td></tr>
<tr><td align="left"><font size=3>ご入力いただいたメールアドレスに発行された情報が送信されました。</font></td></tr>
<tr><th align="right"></th></tr>
<tr><th align="right"><input type="button" value="閉じる" onClick="close_win()"></th></tr>
  </tbody>
</table>

<?php
	}
	else {

		switch ($ret) {
			case 1:
					echo '<tr><td align="left"><font color="red" size=3>管理者メールアドレスをご確認ください。</font></td></tr>';
					break;
			case 2:
					echo '<tr><td align="left"><font color="red" size=3>申請者メールアドレスをご確認ください。</font></td></tr>';
					break;
			case 3:
					echo '<tr><td align="left"><font color="red" size=3>一斉メール利用日に過去日は指定できません。</font></td></tr>';
					break;
			case 4:
					echo '<tr><td align="left"><font color="red" size=3> aktio.co.jp 以外のメールアドレスは利用できません。</font></td></tr>';
					break;


			default:
					echo '<tr><td align="left"><font color="red" size=3>想定外のトラブルが発生いたしました。</font></td></tr>';
					echo '<tr><td align="left"><font color="red" size=3>管理者へお問合せください。</font></p>';
					break;
		}
		echo '<tr><th align="right"></th></tr>';
		echo '<tr><th align="right"></th></tr>';
		echo '<tr><th align="right"><input type="button" value="戻る" onClick="history.back();"></th></tr>';
	}
?>

  </body>
</html>
