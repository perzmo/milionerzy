<%@ page import="pl.pgosciniak.milionerzy.model.Question" %>
<%@ page import="pl.pgosciniak.milionerzy.service.QuestionService" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<html>

<body>

<script>
    function callJavascript(e) {
        let value = document.getElementById(e.target.id).value;
        if (value === "${question.correct}") {
            location.href = "/gameFirstAnswer"
        } else
            location.href = "/finish"
    }
</script>
<h4>Pytanie za 1000:</h4>
<table>
    <tr>
        <th>
            ${question.contents}</th>
    </tr>
    <table border="1">
        <tr>
            <th>
                ${question.a}
                <button id="a" value="${question.a}" onclick="callJavascript(event)">A</button>
            </th>
            <th>
                ${question.b}
                <button id="b" value="${question.b}" onclick="callJavascript(event)">B</button>
            </th>
        </tr>
        <tr>
            <th>
                ${question.c}
                <button id="c" value="${question.c}" onclick="callJavascript(event)">C</button>
            </th>
            <th>
                ${question.d}
                <button id="d" value="${question.d}" onclick="callJavascript(event)">D</button>
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
        <th>75 000</th>
    </tr>
    <tr>
        <th>40 000</th>
    </tr>
    <tr>
        <th>20 000</th>
    </tr>
    <tr>
        <th>10 000</th>
    </tr>
    <tr>
        <th>5000</th>
    </tr>
    <tr>
        <th>2000</th>
    </tr>
    <tr>
        <th>1000</th>
    </tr>
    <tr>
        <th><s>500</s></th>
    </tr>
</table>


</body>
</html>