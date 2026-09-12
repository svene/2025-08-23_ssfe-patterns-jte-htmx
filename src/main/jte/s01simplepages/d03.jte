@param String greetee

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/simplepage.css"/>
</head>
<body class="page">
<div>
    <h1>Page with Params-Component</h1>

    <%--
      first parameter passed literally from this template.
      Second parameter coming in from controller through Model and passed to included template:
    --%>
    @template.fragments.helloworldparams(
      greeting = "Hey",
      greetee = greetee
    )
</div>
</body>
</html>
