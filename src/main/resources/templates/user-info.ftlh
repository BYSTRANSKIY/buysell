<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<h3>Detailed information about <i>${user.name} :</i></h3>
<hr>
<b>Email: </b>${user.email}<br>
<b>Phone number: </b>${user.phoneNumber}<br>
<hr>
<h4>The user put up ${productSize} products for sale:</h4>
<hr>
<#list user.products as product>
    <div>
        <p>
            <b>${product.title}</b> ${product.price} grn. | <a href="/product/${product.id}">More details...</a>
        </p>
    </div>
    <#else >
    <h5>Products not found</h5>
</#list>
<hr>
<a href="/">BACK</a>
</body>
</html>