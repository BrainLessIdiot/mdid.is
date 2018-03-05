<!DOCTYPE html>
<html>
  <head>
	<link rel="stylesheet" type="text/css" href="/img/style.css">
     
  <meta charset="UTF-8">
  </head>
  <div class="div">
  	<img src="/img/ao.png" height="50px" width=" 50px">
  	<img src="/img/costco.png" height="50px" width=" 50px">
  	<img src="/img/daelan.png" height=50px" width="50px">
  	<img src="/img/n1.png" height="50px" width=" 50px">
  	<img src="/img/ob.png" height="50px" width=" 50px">
  	<img src="/img/olis.png" height="50px" width=" 50px">
  	<img src="/img/orkan.png" height="50px" width=" 50px">
  	<img src="/img/orkanx.png" height="50px" width=" 50px">
  </div>
  <body>
      %for x in nofn:
      <div class="rammi">
      <a href="/company/{{x}}">{{x}}</a>
      </div>
      %end
      <%
      	minPrice = 1000.0
      	minCompany = ""
      	for i in data['results']:
      		if float(i['bensin95']) < minPrice:
      			minPrice = i['bensin95']
      			minCompany = i['company']
      		end
      	end
      %>
      <%
      	minBrice = 1000.0
      	minDompany = ""
      	for i in data['results']:
      		if float(i['diesel']) < minBrice:
      			minBrice = i['diesel']
      			minDompany = i['company']
      		end
      	end
      %>
<h2>ódyrasta bensín 95: {{minPrice}} location {{minCompany}}</h2>
<h2>ódyrasta Dísel 95: {{minBrice}} location {{minDompany}}</h2>
</body>
</html>