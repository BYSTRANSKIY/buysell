<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>Products</h1>
<hr>
<#list products as product>
    <div>
        <p>
            <b>${product.title}</b> ${product.price} grn. | <a href="product/${product.id}">More details...</a>
        </p>
    </div>
</#list>
<hr>
<h2>Adding new product</h2>
<form action="product/add" method="post">
    Title: <input type="text" name="title"><br><br>
    Description: <input type="text" name="description"><br><br>
    Price: <input type="number" name="price"><br><br>
    City: <input type="text" name="city"><br><br>
    Author: <input type="text" name="author"><br><br>
    <input type="submit" value="Add product">
</form>
</body>
</html>