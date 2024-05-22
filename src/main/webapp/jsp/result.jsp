<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>結果</title>
    <link rel="stylesheet" type="text/css" href="jsp/style.css">
</head>
<body>
    <div class="form-container">
        <h1 class="page-title">問い合わせ内容</h1>
        <form>
            <!-- フォームの内容 -->
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
        </form>
    </div>
</body>
</html>
