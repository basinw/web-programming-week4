<%-- 
    Document   : ViewCart
    Created on : Feb 28, 2018, 2:44:02 PM
    Author     : bas
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>JSP Page</title>
        <style>
            .img-thumbnail {
                height: 124px;
                overflow: hidden;
            }
            
            .img-thumnail img {
                width: 100%;
            }
        </style>
    </head>
    <body>
        <h3>Your Cart ::</h3>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-11">
                    
                    <c:forEach items="${sessionScope.cart.orders}" var="od" varStatus="vs">
                        <div class="row">
                            <c:set var="p" value="${od.product}" />
                            <c:set var="cutPos" value="${fn:indexOf(p.productline.productline, ' ')}"/>
                            <c:set var="path" value="${cutPos > 0 ? fn:substring(p.productline.productline, 0, cutPos) : p.productline.productline}"/>
                            <c:set var="imgFile" value="model-images/${fn:toLowerCase(path)}/${p.productcode}.jpg"/>
                            <div class="col-md-4 col-3">
                                <div class="img-thumbnail " style="height: 120px">
                                    <img src="${imgFile}">
                                </div>
                            </div>
                                <div class="col-md-3">${p.productname}</div>
                                <div class="col-md-2">${p.msrp}</div>
                                <div class="col-md-1">${od.quantityordered}</div>
                                <div class="col-md-2">${od.quantityordered * p.msrp}</div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </body>
</html>
