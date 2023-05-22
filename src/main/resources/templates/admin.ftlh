<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Roles</th>
        <th>Activity</th>
        <th>Editing</th>
    </tr>
    <#list users as user>
        <tr>
            <th><a href="/user/${user.id}">${user.name}</a></th>
            <th><#list user.roles as role>${role.name()}<#sep>, </#list></th>
            <th><#if user.active>ACTIVE<#else>BLOCKED</#if></th>
            <th><a href="/admin/user/editing/${user.id}">EDIT</a></th>
        </tr>
        <#else>
        <h3>Users not found</h3>
    </#list>
</table>
<hr>
<a href="/">BACK</a>
</body>
</html>