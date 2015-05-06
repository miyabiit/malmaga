<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">
<head profile="http://gmpg.org/xfn/11">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="content-style-type" content="text/css" />
<meta http-equiv="content-script-type" content="text/javascript" />
<head>
<meta charset="utf-8">
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<title>管理者Password発行</title>

<script type='text/javascript'>
<!--

function chkDate(datestr) {

	if (!datestr.match(/^\d{4}\/\d{2}\/\d{2}$/)) {
		return false;
	}

	var vYear = datestr.substr(0, 4) - 0;
	var vMonth = datestr.substr(5, 2) - 1;
	var vDay = datestr.substr(8, 2) - 0;

	if (vMonth >= 0 && vMonth <= 11 && vDay >= 1 && vDay <= 31){
		var vDt = new Date(vYear, vMonth, vDay);
		if(isNaN(vDt)) {
			return false;
		}
		else if(vDt.getFullYear() == vYear && vDt.getMonth() == vMonth && vDt.getDate() == vDay){
			return true;
		}
		else{
			return false;
		}
	}
	else{
		return false;
	}
}


function chkEntry() {

	var msIE = /*@cc_on ! @*/ false;
	ret = true;

	msg1 = '管理者メールアドレスを入力してください';
	msg2 = '申請者メールアドレスを入力してください';
	msg3 = '一斉メール利用日を入力してください';
	msg4 = 'yyyy/mm/dd の形式で入力してください';

	if (document.frmEntry.admin_adr.value == '') {
		document.getElementById('admin_adr').style.backgroundColor = '#ff6666';
		window.alert(msg1);
		ret = false;
	}
	else {
		document.getElementById('admin_adr').style.backgroundColor = '#EEEEEE';
	}

	if (document.frmEntry.apl_adr.value == '') {
		document.getElementById('apl_adr').style.backgroundColor = '#ff6666';
		window.alert(msg2);
		ret = false;
	}
	else {
		document.getElementById('apl_adr').style.backgroundColor = '#EEEEEE';
	}

	if (document.frmEntry.use_date.value == '') {
		document.getElementById('use_date').style.backgroundColor = '#ff6666';
		window.alert(msg3);
		ret = false;
	}
	else {
		datestr = document.frmEntry.use_date.value;
		if ( chkDate(datestr) ) {
			document.getElementById('use_date').style.backgroundColor = '#EEEEEE';
		}
		else {
			document.getElementById('use_date').style.backgroundColor = '#ff6666';
			window.alert(msg4);
			ret = false;
		}
	}
	return ret;
}

//-->
</script>

</head>

<body>
<form method="POST" action="check.php" name="frmEntry">
<div id="container">
<div id="header">


</div><!-- ここまでがheaderのレイヤー枠です -->
<div id="content">
<div id="p-1">

<br>
<h1>一斉メール管理者画面：利用者ＩＤ　Ｐａｓｓ発行</h1>
<table width="600" align="center">
  <tbody>
    <tr>
      <td align="right"><br><a href="../pdf/manual-hakko.pdf" target="_blank">【ご利用方法はこちら】</a></td>
    </tr>
    <tr>
    <tr>
      <th align="left">【管理者情報】</th>
    </tr>
    <tr>
      <td align="left">管理者メールアドレス</td>
    </tr>
    <tr>
      <th align="left">
        <input type="text" id="admin_adr" name="admin_adr" size="80" maxlength="50 />"
      </th>
    </tr>
    <tr>
      <td align="left">（ｘｘｘｘｘｘｘ＠aktio.co.jp　となります。aktio.co.jp以外のアカウントは利用できません。） </td>
    </tr>
    <tr>
      <th align="left">【申請者（利用者）情報】</th>
    </tr>
    <tr>
      <td align="left">申請者メールアドレス</td>
    </tr>
    <tr>
      <th align="left">
        <input type="text" id="apl_adr" name="apl_adr" size="80" maxlength="50" />
      </th>
    </tr>
    <tr>
      <th align="left">一斉メール利用日</th>
    </tr>
    <tr>
      <th align="left">
        <input type="text" id="use_date" name="use_date" size="80" maxlength="10" />
      </th>
    </tr>
    <tr>
      <th align="left"> ※形式は  yyyy/mm/dd で入力してください。 </th>
    </tr>
    <tr>
      <th align="right">
        <input value="1 Day Pass発行" type="submit" name="1DayPass"  onclick="return chkEntry();">
      </th>
    </tr>
    
  </tbody>
</table>

   <br>
   <br>
</div></div><!-- ここまでがcontentのレイヤー枠です -->
</div><!-- ここまでがfooterのレイヤー枠です -->

</form>
</body>
</html>
