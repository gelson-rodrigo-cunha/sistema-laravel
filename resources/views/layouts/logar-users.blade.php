     <!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Usuários</title>
        
        <!-- Favicon -->
        <link href="{{URL::asset('img/favicon.ico')}}" rel="shortcut icon">

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"> 

        <!-- Styles -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   
        <!-- JavaScript -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     
    </head>
    <body>
       
 <div id="line-one">
            <div class="container">
              
             
                   @if (session('message_success'))
        <div class="alert alert-success alert-dismissible">
            <a href="#" class="close" 
               data-dismiss="alert"
               aria-label="close">&times;</a>
            {{ session('message_success') }}
        </div>
        @endif
              

<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4" style="margin-top:30px">
            <div class="login-panel panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Acesso ao Sistema</h3>
                </div>
                <div class="panel-body">



                <div class="row">  
                    <br>
                    <h4 id="center"><b>Login</b></h4>
                    <br> 
                    <form action="<?php echo url('/api/login'); ?>" method="post">
                  
                      
                        {{ csrf_field() }}
                        <div class="col-md-12">              
                            <div class="form-group">
                                <label for="name">Nome</label>
                                <input type="text" name="name" 
                                       class="form-control" 
                                       required>
                            </div>
                        </div>
                            <div class="col-md-12">              
                            <div class="form-group">
                                <label for="email">email</label>
                                <input type="text" name="email" 
                                       class="form-control" 
                                       required>
                            </div>
                        </div>
                             <div class="col-md-12">              
                            <div class="form-group">
                                <label for="password">Senha</label>
                                <input type="text" name="password" 
                                       class="form-control" 
                                       required>
                            </div>
                        </div>
                                    
                        <div class="col-md-12">                   
                            <button type="reset" class="btn btn-default">
                                Limpar
                            </button>
                            <button type="submit" 
                                    class="btn btn-warning" id="black">
                                Logar
                            </button>
                        </div>
                    </form>      


 </div>
                               
            </div>
        </div>
            </div>
        </div>
    </div>
</div>