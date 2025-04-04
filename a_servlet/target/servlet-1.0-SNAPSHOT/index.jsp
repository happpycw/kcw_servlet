<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
      body {
        display: flex;
        min-height: 100vh;
        flex-direction: column;
      }

      main {
        flex: 1 0 auto;
      }

    </style>

</head>
<body>

<header class="header">
    <nav class="navbar white">
        <div class="nav-wrapper ">
            <a href="/" class="brand-logo grey-text">Grepp</a>
            <ul id="nav-mobile" class="right hide-on-med-and-down grey-text">
                <li><a href="/member/login" class="grey-text">sign in</a></li>
                <li><a href="badges.html" class="grey-text">sign up</a></li>
            </ul>
        </div>
    </nav>
</header>

<div class="container" style="min-height: 85vh">
    <ul class="collection with-header">
        <li class="collection-header"><h4>Welcome Servlet</h4></li>

        <li class="collection-item">
            <div>GET<a href="/request/get?name=hmd" class="secondary-content"><i
                    class="material-icons">send</i></a></div>
        </li>
        <li class="collection-item">
            <div>POST
                <form action="/request/post" method="post" class="secondary-content">
                    <input type="hidden" name="name" value="hmd" >
                    <button id="postSubmit" style="display:none"></button>
                </form>
                <label class="secondary-content" for="postSubmit"><i
                        class="material-icons">send</i></label>
            </div>
        </li>
        <li class="collection-item">
            <div>Forward<a href="/forward/servlet?name=anna&subject=servlet" class="secondary-content"><i
                    class="material-icons">send</i></a></div>
        </li>
        <li class="collection-item">
            <div>Redirect<a href="/redirect/page" class="secondary-content"><i
                    class="material-icons">send</i></a></div>
        </li>
        <li class="collection-item">
            <div>Cookie<a href="/cookie/page" class="secondary-content"><i class="material-icons">send</i></a>
            </div>
        </li>
        <li class="collection-item">
            <div>Session<a href="/session/page" class="secondary-content"><i
                    class="material-icons">send</i></a></div>
        </li>
        <li class="collection-item">
            <div>Cache<a href="/cache" class="secondary-content"><i class="material-icons">send</i></a>
            </div>
        </li>
        <li class="collection-item">
            <div>Filter<a href="/filter/error" class="secondary-content"><i class="material-icons">send</i></a>
            </div>
        </li>
        <li class="collection-item">
            <div>Listener<a href="/listener/user" class="secondary-content"><i class="material-icons">send</i></a>
            </div>
        </li>
    </ul>
</div>
<footer class="page-footer">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h5 class="white-text">Footer Content</h5>
                <p class="grey-text text-lighten-4">You can use rows and columns here to organize your
                    footer content.</p>
            </div>
            <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Links</h5>
                <ul>
                    <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">Link 3</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">Link 4</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            © 2014 Copyright Text
            <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
        </div>
    </div>
</footer>

</body>
</html>