<%@ page import="pl.pgosciniak.milionerzy.model.Question" %>
<%@ page import="pl.pgosciniak.milionerzy.service.QuestionService" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<html>

<body>
<h4>Pytanie za 125 000:</h4>
<table>
    <tr>
        <th>
            ${question.contents}</th>
    </tr>
    <table border="1">
        <tr>
            <th>
                ${question.a}
                <button id="${question.a}">A</button>
            </th>
            <th>
                ${question.b}
                <button id="${question.b}">B</button>
            </th>
        </tr>
        <tr>
            <th>
                ${question.c}
                <button id="${question.c}">C</button>
            </th>
            <th>
                ${question.d}
                <button id="${question.d}">D</button>
            </th>
        </tr>
    </table>
</table>

<table align="right" border="1">
    <th>Kwota</th>
    <tr>
        <th bgcolor="yellow">1 000 000</th>
    </tr>
    <tr>
        <th>500 000</th>
    </tr>
    <tr>
        <th>250 000</th>
    </tr>
    <tr>
        <th>125 000</th>
    </tr>
    <tr>
        <th><s>75 000</s></th>
    </tr>
    <tr>
        <th><s>40 000</s></th>
    </tr>
    <tr>
        <th><s>20 000</s></th>
    </tr>
    <tr>
        <th><s>10 000</s></th>
    </tr>
    <tr>
        <th><s>5000</s></th>
    </tr>
    <tr>
        <th><s>2000</s></th>
    </tr>
    <tr>
        <th><s>1000</s></th>
    </tr>
    <tr>
        <th><s>500</s></th>
    </tr>
</table>


</body>

</html>