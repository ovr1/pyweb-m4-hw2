<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>goroscop</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous">
    <style type="text/css">
        h1
        {
        color: #ffba73;
        font-size: 48px;
        font-weight: bold;
        margin-left: 124px;
        }
        .knopka
		{
		width: 550px;
		height: 115px;
		border-radius: 30px;
		border: #a65400 20px outset;
		background-color: #a65400;
		padding-bottom: 30px;
		margin-left: 175px;
        margin-bottom: 75px;

		color: #ffba73;
		font-size: 48px;
		font-weight: bold;
		text-align: center;
		text-decoration: none;
		}
        .knopka:visited
        {
        background-color: red;
        }
        .knopka:hover
        {
        background-color: #a61e77;
        text-decoration-line: blink;
        }
        .col
        {
           float: left;
        }
        #p-0
        {
            height: 95px;
        }
        #p-1
        {
            height: 95px;
        }
        #p-2
        {
            height: 95px;
        }
        #p-3
        {
            height: 95px;
        }
        #p-4
        {
            height: 95px;
        }
        #p-5
        {
            height: 95px;
        }
        #p-0:hover
        {
            background-color: #bcf006;
        }
        #p-1:hover
        {
            background-color: #bcf006;
        }
        #p-2:hover
        {
            background-color: #bcf006;
        }
        #p-3:hover
        {
            background-color: #bcf006;
        }
        #p-4:hover
        {
            background-color: #bcf006;
        }
        #p-5:hover
        {
            background-color: #bcf006;
        }
    </style>
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
  <div class="main">
      <h3 id="timedisplay"></h3>
      <h1>Что этот день готовит Вам ?<br><hr></h1>
    <a><h1 class="knopka" id="click">Предсказание</h1></a>
    <div class="row">
      <div class="col-2" id="1">
        <p id="p-0"></p>
        <p id="p-3"></p>
      </div>
      <div class="col-2" id="2">
        <p id="p-1"></p>
        <p id="p-4"></p>
      </div>
      <div class="col-2" id="3">
        <p id="p-2"></p>
        <p id="p-5"></p>
      </div>
    </div>
  </div>
<script type="text/javascript">
		function getDate() {
			var date = new Date();
    		document.getElementById('timedisplay').innerHTML = date;
			}
		setInterval(getDate, 0);
	</script>


		<script>
			advice_url = "http://sf-pyw.mosyag.in/m04/api/forecasts"
			$("#click").click(function() {
				$.getJSON(advice_url, function(data) {
				advice = data["prophecies"];
				set_content_in_divs(advice);
					})
				});
			function set_content_in_divs(paragraphs) {
				$.each(paragraphs, function(i, d) {
				p = $("#p-" + i);
				p.html("<p>" + d + "</p>")
					})
				}
		</script>
</body>
</html>