<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<#if user.email??>
    <hr>
    USERNAME: <i>${user.name}</i>
    <hr>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        Logout: <input type="submit" value="Exit"/>
    </form>
    <#if user.isAdmin()>
        <hr>
        <a href="/admin">Admin panel</a>
    </#if>
<#else>
    <hr>
    <a href="/login">Log in</a>
</#if>
<hr>
<h2>Products</h2>
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
    <p>Products not found</p>
</#list>

<#if user.email??>
<hr>
<h2>Adding new product</h2>
<hr>
<form action="product/add" method="post" enctype="multipart/form-data">
    Title: <input type="text" name="title"><br><br>
    Description: <input type="text" name="description"><br><br>
    Price: <input type="number" name="price"><br><br>
    City: <input type="text" name="city"><br><br>
    1 Photo: <input type="file" name="file1"/><br><br>
    2 Photo: <input type="file" name="file2"/><br><br>
    3 Photo: <input type="file" name="file3"/><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Add product"/>
</form>
</#if>
</body>
</html>