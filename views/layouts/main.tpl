<!DOCTYPE html>
<html>

    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1"> 
        <title> Orchids for everyone - How to grow any orchid</title>
        <script src="https://kit.fontawesome.com/7b3bb89727.js" crossorigin="anonymous"></script>
        
        <link href="./node_modules/@glidejs/glide/dist/css/glide.core.min.css" rel="stylesheet">
        <link href="./node_modules/@glidejs/glide/dist/css/glide.theme.min.css" rel="stylesheet">
        <link rel="stylesheet" href="/orchidsforeveryone/css/styles.css"> <!--css/styles.css--><!--css/styles-light.css-->
        <link rel="icon" type="image/x-icon" href="./orchid-images/favicon.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>

    <body id="page-{$view_name}">
        <header>

         
            <nav class="navbar navbar-expand-lg mb-4">
                <div class="container">
                
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <a href="index.php"><img src="/orchidsforeveryone/images/logo.png" alt="Orchids For Everyone" width="250" height="55"  /></a>
                    <div class="collapse navbar-collapse" id="navbar">
                        
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link" href="/orchidsforeveryone/home">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/orchidsforeveryone/categories">Categories</a>
                            </li>  
                            <li class="nav-item">
                                <a class="nav-link" href="/orchidsforeveryone/problems">Problems</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/orchidsforeveryone/facts">Facts</a>
                            </li>
                            {if $user_data}
                                <li class="nav-item">
                                    <a class="nav-link" href="/orchidsforeveryone/account">Account</a>
                                </li>
                            
                                <li class="nav-item">
                                    <a class="nav-link" href="/orchidsforeveryone/logout">Logout</a>
                                </li>
                            {else}
                                <li class="nav-item">
                                <a class="nav-link" href="/orchidsforeveryone/login">Login / Register</a>
                                </li>
                            {/if}   
                              

                        </ul>
                        <form action="/orchidsforeveryone/search" method="post" class="d-flex" role="search">
                            <input class="form-control me-2" type="search" placeholder="vanda..." name="query" aria-label="Search">
                            <button class="btn btn-outline-dark" type="submit">Search</button>
                        </form>
                        
                    </div>
                </div>     
            </nav>
        </header>

        <div class="container">
            {block name="body"}{/block}
        </div>
        
       

            <script src="./js/scripts-vendor.min.js"></script>
            <script src="./js/scripts.min.js"></script>
            <script>
                home.init();
            </script>
            
    </body>

</html>