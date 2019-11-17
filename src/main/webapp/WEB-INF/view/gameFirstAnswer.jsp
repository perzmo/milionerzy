<%@ page import="pl.pgosciniak.milionerzy.model.Question" %>
<%@ page import="pl.pgosciniak.milionerzy.service.QuestionService" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="\css\style.css">
<html>

<body class="background">

<script>
    function callJavascript(e) {
        let value = document.getElementById(e.target.id).value;
        if (value === "${question.correct}") {
            location.href = "/gameSecondAnswer"
        } else {
            let value = document.getElementById("500").value;
            alert("Wygrałeś:" + value)
            location.href = "/finish"
        }
    }
</script>
<div class="w3-third">
    <img src="\pages\hubert.jpg" class="w3-round" style="padding: 5px" width="550" height="600">
</div>
<div class="w3-twothird w3-container">
    <h4 align="center">Nazywam się Hubert i zadam Ci kilka pytań. Już niedługo możesz zostać milionerem! :)</h4>
    <h5 align="center">Pierwsze pytanie za 500:</h5>
</div>
<table align="center">
    <tr>
        <th>
            ${question.contents}</th>
    </tr>
    <table border="1" align="center">
        <tr>
            <th>
                ${question.a}
                <button class="w3-button w3-black w3-round-xxlarge" id="a" value="${question.a}"
                        onclick="callJavascript(event)">A
                </button>
            </th>
            <th>
                ${question.b}
                <button class="w3-button w3-black w3-round-xxlarge" id="b" value="${question.b}"
                        onclick="callJavascript(event)">B
                </button>
            </th>
        </tr>
        <tr>
            <th>
                ${question.c}
                <button class="w3-button w3-black w3-round-xxlarge" id="c" value="${question.c}"
                        onclick="callJavascript(event)">C
                </button>
            </th>
            <th>
                ${question.d}
                <button class="w3-button w3-black w3-round-xxlarge" id="d" value="${question.d}"
                        onclick="callJavascript(event)">D
                </button>
            </th>
        </tr>
    </table>
</table>
<div class="w3-padding w3-display-right">
    <div class="w3-container">
        <table class="w3-table-all w3-hoverable">
            <thead>
            <tr class="w3-light-grey">
                <th>Kwota</th>
            </tr>
            </thead>
            <tr>
                <td>1 000 000</td>
            </tr>
            <tr>
                <td>500 000</td>
            </tr>
            <tr>
                <td>250 000</td>
            </tr>
            <tr>
                <td>125 000</td>
            </tr>
            <tr>
                <td>75 000</td>
            </tr>
            <tr>
                <td>40 000</td>
            </tr>
            <tr>
                <td>20 000</td>
            </tr>
            <tr>
                <td>10 000</td>
            </tr>
            <tr>
                <td>5000</td>
            </tr>
            <tr>
                <td>2000</td>
            </tr>
            <tr>
                <td>1000</td>
            </tr>
            <tr>
                <td bgcolor="yellow">
                    <param id="500" value="500">
                    500</param> </td>
            </tr>
        </table>
    </div>
</div>


</body>

</html>