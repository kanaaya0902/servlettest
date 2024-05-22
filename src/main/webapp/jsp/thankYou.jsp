<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>資料請求ありがとうございます</title>
    <link rel="stylesheet" type="text/css" href="jsp/style.css">
</head>
<body>
    <div class="container">
        <h1 class="page-title">資料請求ありがとうございます</h1>
        <p>この度は資料請求いただきありがとうございます。以下のリンクから資料ダウンロードが可能です。</p>
        <a href="#">資料ダウンロードリンク</a>
        <h2>問い合わせ内容</h2>
        <div class="content">
            <p>氏名: ${name}</p>
            <p>会社: ${company}</p>
            <p>メールアドレス: ${email}</p>
            <p>お問合せ内容: ${message}</p>
            <p>メルマガ種類:
                <c:forEach var="newsletter" items="${newsletterList}">
                    <p>${newsletter}</p>
                </c:forEach>
            </p>
            <p>資料請求希望: ${requestMaterials}</p>
        </div>
    </div>
</body>
</html>
