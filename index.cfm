<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<script src="jslib/jquery/jquery-1.12.4.js"></script>
<script src="jslib/jquery/jquery-ui.js"></script>
<script src="jslib/jquery/jquery.validate.min.js"></script>
<link rel="stylesheet" href="css/global_style.css" />
<link rel="stylesheet" href="jslib/jquery/jquery-ui.css">
<link rel="stylesheet" href="jslib/jquery/cmxform.css">
</head>
<body>
<table style="width:100%;height:100%;" cellspacing="0" border="0">
<cfinclude template="header.cfm">
<!-- ============ NAVIGATION BAR SECTION ============== -->
<cfinclude template="horizontal_menu.cfm">
<tr>
<!-- ============ LEFT COLUMN (MENU) ============== -->
<cfinclude template="vertical_menu.cfm">
<!-- ============ RIGHT COLUMN (CONTENT) ============== -->
<td valign="top" bgcolor="#F1F0FF" height="900" style="padding-left:25px">
<cfinclude template="router.cfm">
</td>
</tr>
<!-- ============ FOOTER SECTION ============== -->
<cfinclude template="footer.cfm">
</table>
</body>
</html>