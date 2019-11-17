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
            location.href = "/gameTwelfthAnswer"
        } else{
            let value = document.getElementById("500000").value;
            alert("Wygrałeś:" + value)
            location.href = "/finish"
        }
    }
</script>
<h4 align="center">Pytanie za 500 000:</h4>
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
                <td bgcolor="yellow">
                    <param id="500000" value="500000">
                    500000 </param> </td>
            </tr>
            <tr>
                <td><s> 250000 </s></td>
            </tr>
            <tr>
                <td><s> 125000 </s></td>
            </tr>
            <tr>
                <td><s> 75000 </s></td>
            </tr>
            <tr>
                <td><s> 40000 </s></td>
            </tr>
            <tr>
                <td><s> 20000 </s></td>
            </tr>
            <tr>
                <td><s>10000 </s></td>
            </tr>
            <tr>
                <td><s>5000</s></td>
            </tr>
            <tr>
                <td><s>2000</s></td>
            </tr>
            <tr>
                <td><s>1000</s></td>
            </tr>
            <tr>
                <td><s>500</s></td>
            </tr>
        </table>
    </div>
</div>

</body>
</html>