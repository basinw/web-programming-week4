<%-- 
    Document   : ProductList
    Created on : Feb 14, 2018, 1:40:05 PM
    Author     : bas
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .img-thumbnail {
                width: auto;
                margin: auto;
                height: 124px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-sm-10 col-md-8">
                    <button onClick="function () {window.alert('hello')}">button</button>
                    <h3>Product List :: </h3> <hr />
                    <form action="ProductList" method="post">
                        <table class="table-striped table-bordered">
                            <tr>
                                <td>
                                    Search from Product name :
                                </td>
                                <td>
                                    <input type="text" required name="productName" class="form-control" value="${param.productName}"/>
                                </td>
                                <td>
                                    <button class="btn btn-primary">submit</button>
                                </td>
                                <td style="padding-left: 100px; width: 40%; text-align: right;">
                                    <a href="ViewCart">
                                        <img src="https://scraperking.com/wp-content/uploads/2015/01/Amazon_logo-9.gif" width="20px"/>
                                    </a>
                                    ${cart.size}
                                    <%! int a = 0; %>
                                    
                                    <% String b ="sawasdee"; %>
                                    
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
        <hr />
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-sm-10 col-lg-10">
                    <div class="row">
                        <c:forEach items="${products}" var="p" varStatus="vs" >
                            <c:set var="cutPos" value="${fn:indexOf(p.productline.productline, ' ')}"/>
                            <c:set var="path" value="${cutPos > 0 ? fn:substring(p.productline.productline, 0, cutPos) : p.productline.productline}"/>
                            <c:set var="imgFile" value="model-images/${fn:toLowerCase(path)}/${p.productcode}.jpg"/>
                            <div class="col-md-3">
                                <div class="thumbnail">
                                    <a href="ProductManager?productCode=${p.productcode}">
                                        <img class="img-thumbnail"  src="${imgFile}" title="${p.productcode}">
                                    </a>
                                    <a href="AddItemToCart?item=${p.productcode}">
                                        <img src="https://scraperking.com/wp-content/uploads/2015/01/Amazon_logo-9.gif" width="20px"/>
                                    </a>
                                    
                                    <div class="caption">
                                        <p>${p.productname}  | Scale:  ${p.productscale}  | Price: ${p.msrp} $US </p>

                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
