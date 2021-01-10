<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<html>
<script src="js/jquery.min.js"></script>
<body>
<h2>Hello World!!!!</h2>
</body>
</html>
<script>
$.get(
    "testControol",
    function (data) {
        console.log(data);
    }
);
</script>