<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>Product</h1>
<hr>
<b>Title product: </b>${product.title}<br>
<b>Description product: </b>${product.title}<br>
<b>Price product: </b>${product.title}<br>
<b>City product: </b>${product.title}<br>
<b>Author product: </b>${product.title}<br>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Delete product"> <a href="/">Back</a>
</form>
</body>
</html>