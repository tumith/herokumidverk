<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>miðnaðarverkefni</title>
	<link rel="stylesheet" type="text/css" href="/static/styles.css">
</head>
<body>
	<h1>Söluaðlir eldsneytis á Íslandi</h1>
    <div class="imgwrapper">
        <img src="static/Atlantsolia-logo-3.gif">
        <img src="static/costco.png">
        <img src="static/dalan.png">
        <img src="static/n1.png">
        <img src="static/ob_logo_2012.jpg">
        <img src="static/Orkan.png">
        <img src="static/orkanx.jpg">
        <img src="static/um_olis_logo.jpg">
        
    </div>

	<div class="wrapper">
	<%
        minpriceP = 5000.0
        minpriceD = 5000.0
       
       
		le = len(data['results'])
       
        c = 0
		
		for i in range(le -1):
            c = i
            if minpriceP > data['results'][i]['bensin95']:
                minpriceP = data['results'][i]['bensin95']
                companyP = data['results'][i]['company']
            
            end
        
            if minpriceD > data['results'][i]['diesel']:
                minpriceD = data['results'][i]['diesel']
                companyD = data['results'][i]['company']
            end
		
		if (data['results'][i]['company'] != data['results'][i-1]['company']):

	%>

		<div class="box">
            <a href="/company/{{data['results'][i]['company']}}">{{data['results'][i]['company']}}</a>
		</div>

		<% end
		end
	%>
	</div>
        <div>
            <h3>Besta verðið</h3>
            <h4>Bensin 95 orkan: <i>{{[minpriceP]}} er hjá {{[companyP]}}</i></h4>
        </div>
        <div>
            <h3>Besta verðið</h3>
            <h4>Disel: <i>{{[minpriceD]}} er hjá {{[companyD]}}</i></h4>
        </div>
        <%
           import datetime
           t = data['timestampPriceCheck']
           t = t [:19]
           d = datetime.datetime.strptime(t,'%Y-%m-%dT%H:%M:%S')
        %>
        <h5>Síðast uppfært: {{d.strftime('%d.%m %Y K1.%H:%M')}}</h5>
        
<footer>
% include('fotur.tpl')
</footer>
</body>
</html>