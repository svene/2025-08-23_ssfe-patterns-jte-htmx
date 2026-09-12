<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/simplepage.css"/>
</head>
<body class="page">
<div>
    <h1>Page with ContentParams-Component</h1>

    @template.fragments.helloworldcontent(
      greetingText = @`
        How are you?<br>
        Hopefully <strong>very well</strong>.<br>
        <p>See you soon!</p>
    `
    )
</div>
</body>
</html>
