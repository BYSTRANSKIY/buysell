<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>Products</h1>
<hr>
<form action="/" method="get">
    Searching by title: <input type="text" name="title"> <input type="submit" value="search"/>
</form>
<hr>
<h3>Found ${productsSize} products: </h3>
<#list products as product>
    <div>
        <p>
            <b>${product.title}</b> ${product.price} grn. | <a href="product/${product.id}">More details...</a>
        </p>
    </div>
    <#else>
    <p>Product not found</p>
</#list>
<hr>
<h2>Adding new product</h2>
<hr>
<form action="product/add" method="post">
    Title: <input type="text" name="title"><br><br>
    Description: <input type="text" name="description"><br><br>
    Price: <input type="number" name="price"><br><br>
    City: <input type="text" name="city"><br><br>
    Author: <input type="text" name="author"><br><br>
    <input type="submit" value="Add product"/>
</form>
</body>
</html>