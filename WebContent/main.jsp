<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Remind" %>
<%@ page import="java.util.List" %>
<%
//アプリケーションスコープに保存されたリマインドリストを取得
List<Remind> remindList = (List<Remind>)application.getAttribute("remindList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reminder</title>
</head>
<body>
<h1>リマインダー（仮）</h1>

<form action="/reminder_base/Main" method="post"> <!-- ②リマインド内容をMainサーブレットにdoPost -->
	<p>リマインド内容：<input type="text" name="remind"></p>
	<p><input type="submit" value="リマインドを保存する！"></p>
</form>

<% for(Remind remind : remindList) { %>
	<p><%= remind.getRemind() %></p>
<% } %>
</body>
</html>