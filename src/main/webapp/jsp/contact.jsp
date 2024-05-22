<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>問い合わせフォーム</title>
<style>
/* 全体のフォームを中央に配置するためのスタイル */
.form-container {
    width: 50%;
    margin: auto;
}

/* 全体のフォームのスタイル */
form {
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

/* ラベルのスタイル */
label {
    font-weight: bold;
    margin-bottom: 5px;
}

/* 入力フィールドのスタイル */
input[type="text"],
input[type="email"],
textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

/* チェックボックスのスタイル */
input[type="checkbox"] {
    margin-right: 5px;
}

/* 送信ボタンのスタイル */
input[type="submit"] {
    width: 100%; /* 幅を100%に設定 */
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

/* 送信ボタンのホバースタイル */
input[type="submit"]:hover {
    background-color: #0056b3;
}

/* h1要素のスタイル */
h1 {
    text-align: center; /* テキストを中央揃えにする */
    margin-top: 0; /* 上部のマージンを0に設定 */
    padding-top: 10px; /* 上部のパディングを設定 */
}


</style>
</head>
<body>
	<div class="form-container">
		<h1>問い合わせフォーム</h1>
		<form action="/ServletTest/processForm" method="post">
			<label for="name">氏名:</label> <input type="text" id="name"
				name="name" required><br> <label for="company">会社:</label>
			<input type="text" id="company" name="company"><br> <label
				for="email">メールアドレス:</label> <input type="email" id="email"
				name="email" required><br> <label for="message">お問合せ内容:</label>
			<textarea id="message" name="message" required></textarea>
			<br> <label>メルマガ種類:</label><br> <input type="checkbox"
				id="newsletter1" name="newsletter" value="総合案内"> <label
				for="newsletter1">総合案内</label><br> <input type="checkbox"
				id="newsletter2" name="newsletter" value="セミナー案内"> <label
				for="newsletter2">セミナー案内</label><br> <input type="checkbox"
				id="newsletter3" name="newsletter" value="求人採用情報"> <label
				for="newsletter3">求人採用情報</label><br> <label>資料請求希望:</label><br>
			<input type="radio" id="yes" name="requestMaterials" value="Yes">
			<label for="yes">Yes</label><br> <input type="radio" id="no"
				name="requestMaterials" value="No" checked> <label for="no">No</label><br>

			<input type="submit" value="送信">
		</form>
	</div>
</body>
</html>
