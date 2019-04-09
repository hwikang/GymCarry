<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.css">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Faker/3.1.0/faker.js"></script>

</head>
<%@ include file="../include/menu.jsp" %>
<body>
	${result }
	
	<div class="container">
		<div class="ui grid">
			<div class="three wide column">ddd</div>
			<div class="three wide column">dd</div>
			<div class="three wide column">dd</div>
		
		</div>
	</div>
	
</body>
<script>
	const grid = document.querySelector(".ui.grid");
	for(var i=0;i<10;i++){
		var img = faker.image.avatar();
		console.log(img);
		grid.innerHTML += `<img src=${img} />`
	}

	
	
	
</script>
</html>