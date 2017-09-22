     <!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Notícias</title>
        
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
	
	
	
	
  <nav class="navbar navbar-default" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
          <span class="sr-only">Navegação</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">Sistema de Notícias</a>
      </div>
 
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
              <li class="active"><a href="<?php echo url('/'); ?>">Home</a></li>
              <li><a href="<?php echo url('/noticias/create'); ?>"> Criar Notícia</a></li>
                <li><a href="<?php echo url('/noticias/'); ?>"> Listar Notícias</a></li> 
				            <li><a href="<?php echo url('/api/new'); ?>"> Criar Usuário</a></li>
                <li><a href="<?php echo url('/api/index'); ?>"> Listar Usuários</a></li> 
			
            
          </ul>
      </div>
    </div>
</nav> 
       <div id="line-one">
            <div class="container">
                <div class="row">
                    <div class="col-md-12" id="center">              
                        <h1><b>Cadastro de Usuários</b></h1>
                        <br>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <ol class="breadcrumb">
                            <li><a href="">Painel</a></li>                  
                            <li><a href="<?php echo url('/api/'); ?>">Usuários</a></li>                  
                            <li class="active">Cadastro</li>
                        </ol>              
                    </div>          
                </div>
                   @if (session('message_success'))
        <div class="alert alert-success alert-dismissible">
            <a href="#" class="close" 
               data-dismiss="alert"
               aria-label="close">&times;</a>
            {{ session('message_success') }}
        </div>
        @endif
                <div class="row">  
                    <br>
                    <h4 id="center"><b>CADASTRO DE USUÁRIOS</b></h4>
                    <br> 
                    <form action="<?php echo url('/api/register'); ?>" method="post">
                  
                      
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
                            <div class="form-group">
                         <div class="form-group">
                                <label for="c_password">Repetir senha</label>
                                <input type="text" name="c_password" 
                                       class="form-control" 
                                       required>
                            </div>
                        </div>
                         
                           </div>                  
                        <div class="col-md-12">                   
                            <button type="reset" class="btn btn-default">
                                Limpar
                            </button>
                            <button type="submit" 
                                    class="btn btn-warning" id="black">
                                Cadastrar
                            </button>
                        </div>
                    </form>      










                </div>
            </div>
        </div>