<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
<link href="./css/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	background-color: #defff9;
}
</style>
<title>一斉メールログイン</title>

<script type='text/javascript'>
<!--

function chkEntry() {

	var msIE = /*@cc_on ! @*/ false;
	ret = true;

	msg1 = 'ユーザＩＤを入力してください';
	msg2 = 'パスワードを入力してください';

	if (document.frmLogin.user_id.value == '') {
		document.getElementById('user_id').style.backgroundColor = '#ff6666';
		window.alert(msg1);
		ret = false;
	}
	else {
		document.getElementById('user_id').style.backgroundColor = '#EEEEEE';
	}
	if (document.frmLogin.passwd.value == '') {
		document.getElementById('passwd').style.backgroundColor = '#ff6666';
		window.alert(msg2);
		ret = false;
	}
	else {
		document.getElementById('passwd').style.backgroundColor = '#EEEEEE';
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

          <form method="post" name="frmLogin" id="frmLogin" action="mail_chk_entry.php">
            <h3>一斉メールログイン</h3>
<table width="700" align="center">
  <tbody>
  <tr>
    <td align="right" colspan="2"><br>
      <a href="../pdf/manual-sinsei.pdf" target="_blank">【ご利用方法はこちら】</a>
    </td>
  </tr>
  <tr>
    <th colspan="2" align="left">    <br>ワンデイパスワードを入力してログインしてください    
      </tr>
  <tr>
    <td width="82" align="left">ユーザＩＤ：</td>
      <th width="506" align="left">
        <input type="text" name="user_id" id="user_id" maxlength="30" size="30" />
      </th>
  </tr>
  <tr>
    <td align="left">ＰＡＳＳ　：</td>
      <th align="left"><input type="password" name="passwd" id="passwd" maxlength="30" size="30" /></th>
  </tr>
  <tr>
    <td align="right">&nbsp;</td>
      <td align="right">
        <input type="submit" value="ログイン" onclick="return chkEntry();" />
      </td>
  </tr>
  </tbody>
</table>

          </form>

      </div>
    </div>
  
  </body>

</html>

