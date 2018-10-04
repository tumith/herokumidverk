<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>verkefni</title>
	<link rel="stylesheet" type="text/css" href="/static/styles.css">
</head>
<body>
% include('haus.tpl')
	<table>
	<tr>
		<th>Fyrirtæki</th>
		<th>Staður </th>
	</tr>

	<%
		cnt = 0
		for i in data['results']:
	 		if i['company'] == co:
	 		cnt += 1
	%> 
		<tr>
			<td><a href="/moreinfo/{{i['key']}}">{{i['company']}}</a></td>
			<td>{{i['name']}}</td>
		</tr>

	<%
		end
	end
	%>
	<h3>Fjöldi stöðva: {{cnt}}</h3>
	<footer><a href="/">Heim</a></footer>
</body>
</html>