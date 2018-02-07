<%-- 
    Document   : ProductInfo
    Created on : Feb 7, 2018, 4:59:39 PM
    Author     : bas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h3>Product Information</h3>
        <form action="ProductManager" method="post">
            Enter Product code to search
            <input type="text" name="productCode" placeholder="Product code format x99_9999">
            <input type="submit" />
        </form>
        <p style="color: red">${message}</p>
        <table>
            <tr>
                <td>Product CodeL</td>
                <td><input type="text" value="${product.productcode}" disabled /></td>
            </tr>
            <tr>
                <td>Product Name:</td>
                <td><input type="text" value="${product.productname}"></td>
            </tr>
            <tr>
                <td>Product description</td>
                <td><textarea rows="5" cols="60">${product.productdescription}</textarea></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><input type="text" value="${product.msrp}" /></td>
            </tr>
        </table>
    </body>
</html>
