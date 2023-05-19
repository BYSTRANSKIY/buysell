<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<h2>Detailed information about <i>${user.name} :</i></h2>
<hr>
<b>Email: </b>${user.email}<br>
<b>Phone number: </b>${user.phoneNumber}<br>
<hr>
<h3>The user put up ${productSize} products for sale:</h3>
<hr>
<#list user.products as product>
    <div>
        <p>
            <b>${product.title}</b> ${product.price} grn. | <a href="/product/${product.id}">More details...</a>
        </p>
    </div>
    <#else >
    <h3>Products not found</h3>
</#list>
<hr>
<a href="/">Back</a>
</body>
</html>