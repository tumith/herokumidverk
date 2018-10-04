<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>verkefni</title>
	<link rel="stylesheet" type="text/css" href="/static/styles.css">
</head>
<body>
<h1>Nánari upplýsingar</h1>
	<% 
		for i in data['results']:
			if i['key']== k:
	%>
		<h3>Söluaðili: {{i['company']}}</h3>
		<h3>Staður: {{i['name']}}</h3>
		<h3>Bensín 95: {{i['bensin95']}}</h3>
		<h3>Dísel: {{i['diesel']}}</h3>
	   <def class="kort">
            <h4>staðsetning</h4>
           <ul>
                <li>Breiddargráða: {{i['geo']['lat']}}</li>
                <li>Lengdargráða: {{i['geo']['lon']}}</li>
               <li><a href="https://www.google.com/maps/@{{i['geo']['lat']}},{{i['geo']['lon']}},18z/">Staðsetning á google korti</a></li>
           </ul>
       </def>
        <%
	end
	end
	%>
	<footer>
		<a href="/">Heim</a>
	</footer>
Chat Conversation End
Type a message...
</body>
</html>