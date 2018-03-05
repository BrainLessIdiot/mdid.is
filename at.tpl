<!DOCTYPE html>
<html>
  <head>
      <link rel="stylesheet" type="text/css" href="/img/style.css">
    <meta charset="UTF-8">
  </head>
  <body class="back">
      <a href="/">Heim</a>
      %for x in data['results']:
        %if id == x['company']:
        <div class="rammi">  
        <h3>Bensín Stöð: {{x['company']}}</h3>
        <h3>Bensín Verð: {{x['bensin95']}}</h3>
        <h3>Dísel Verð: {{x['diesel']}}</h3>
        <h3>location:s {{x['name']}}</h3>
        </div>  
        %end
      %end
      </div>
      <a href="/">Heim</a>

</body>
</html>