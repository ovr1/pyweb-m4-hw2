<!DOCTYPE html>
	<html>
		<head>
			<meta charset="utf-8">
		<title>Гороскоп на сегодня</title>
		<style type="text/css">
div#main
{
width: 900px; 
height: 850px;
border: solid 1px black;
background-color: darkorchid;
}
div#content
{
float: right;
margin-left: 500px;
width: 450px;
height: 400px;
background-color: darkorchid;
}

h1
{
color: #ffba73;
font-size: 48px;
font-weight: bold;
text-align: center;
}
h2
{
color: #ffba73;
font-size: 36px;
font-weight: bold;
text-align: center;
}
h3
{
color: #ffba73;
font-size: 30px;
font-weight: bold;
text-align: center;
}
h4
{
color: #ffba73;
font-size: 24px;
font-weight: bold;
text-align: center;
}
h5
{
color: blue;
font-size: 14px;
font-weight: bold;
text-align: center;
}
#kalendar
		{
		float: left;
		width: 450px;
		height: 580px;
		margin-top: -385px;
		margin-left: 20px;
		padding-left: 10px:

		}
	div#pred1
{

width: 367px;
height: 75px;
position: relative;
background-color: #f6ee07;
margin-left: 25px;
}
div#pred2
{

width: 367px;
height: 75px;
position: relative;
background-color: #bcf006;
margin-left: 25px;
}
div#pred3
{

width: 367px;
height: 75px;
position: relative;
background-color: #07a4f6;
margin-left: 25px;
			</style>
<script
			  src="http://code.jquery.com/jquery-3.3.1.min.js"
			  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
			  crossorigin="anonymous"></script>
	</head>
	<body>
		<div id="main">
			<h1>Что день {{ date }} готовит<br><hr></h1>
			<h2 id="helpers">ПРЕДСКАЗАНИЯ:</h2>
			<h5>Жми на пресказание</h5>
				<div id="content">
					<div id="third">
						<h4>< Предсказание для знакомых: ><br>< Первому: ></h4>
						<div id="pred3">
							<p>{{ predictions4 }}</p>
						</div>
					</div>
					<div id="fore">
						<h4>< Второму: ></h4>
						<div id="pred3">
							<p>{{ predictions5 }}</p>
						</div>
					</div>
					<div id="five">
						<h4>< Третьему: ></h4>
						<div id="pred3">
                              <p>{{ predictions6 }}</p>
						</div>
					</div>
			</div>
			<div id="kalendar">
					<div id="first">
						<h2><Предсказание для Вас: ></h3>
						<div id="pred1">
							<p>{{ predictions1 }}</p>
						</div>
					</div>
					<div id="second">
						<h3>< Предсказание для друга: ></h3>
						<div id="pred2">
							<p>{{ predictions2 }}</p>
						</div>
					</div>
					<div id="third">
						<h4>< Предсказание для коллеги: ><br></h4>
						<div id="pred3">
							<p>{{ predictions3 }}</p>
						</div>
					</div>
			</div>
		</div>
		<script>
			$("#helpers").click(function() {
				console.log("1. Внутри анонимной функции")
				p = $("#helpers");
				p.html("Работает!")
				p.css("color", "red")
				console.log("2. После вызова стайлинга")
			})
		</script>
	</body>
</html>