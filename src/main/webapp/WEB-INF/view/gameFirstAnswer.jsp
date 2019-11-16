<%@ page import="pl.pgosciniak.milionerzy.model.Question" %>
<%@ page import="pl.pgosciniak.milionerzy.service.QuestionService" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<html>

<body>
<h3>Nazywam się Hubert i zadam Ci kilka pytań. Już niedługo możesz zostać milionerem! :)</h3>

<h4>Pierwsze pytanie za 500:</h4>
<table>
    <tr>
        <th>
            ${question.contents}</th>
    </tr>
    <table border="1">
        <tr>
            <th>
                ${question.a}
                <button>A</button>
            </th>
            <th>
                ${question.b}
                <button>B</button>
            </th>
        </tr>
        <tr>
            <th>
                ${question.c}
                <button>C</button>
            </th>
            <th>
                ${question.d}
                <button>D</button>
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
        <th>500</th>
    </tr>
</table>


</body>

</html>