<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<h2>Product</h2>
<hr>
<#list images as img>
    <img src="/images/${img.id}" height="100px"/>
</#list>
<hr>
<b>Title product: </b>${product.title}<br>
<b>Description product: </b>${product.description}<br>
<b>Price product: </b>${product.price}<br>
<b>City product: </b>${product.city}<br>
<b>Author product: </b><a href="/user/${product.user.id}">${product.user.name}</a><br>
<hr>
<a href="/">Back</a>
</body>
</html>