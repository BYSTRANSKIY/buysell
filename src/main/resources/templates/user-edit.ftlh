<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<h3>EDIT USER  <i>${user.name}</i></h3>
<hr>
<form action="/admin/user/edit/${user.id}" method="post">
    <#list roles as role>
        <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
    </#list>
    <hr>
    <label><input type="checkbox" name="blocking" ${user.active?string("", "checked")}>BLOCK</label>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button type="submit">Save</button>
</form>
<hr>
<a href="/admin">BACK</a>
</body>
</html>