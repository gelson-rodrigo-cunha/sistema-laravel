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
                        <h1><b>Cadastro de Notícia</b></h1>
                        <br>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <ol class="breadcrumb">
                            <li><a href="">Painel</a></li>                  
                            <li><a href="{{route('noticias.index')}}">Notícias</a></li>                  
                            <li class="active">Cadastro</li>
                        </ol>              
                    </div>          
                </div>
                <div class="row">  
                    <br>
                    <h4 id="center"><b>CADASTRO DE NOTÍCIAS</b></h4>
                    <br> 
                    <form action="{{route('noticias.store')}}" method="post">
                  
                        
                        {{ csrf_field() }}
                        <div class="col-md-12">              
                            <div class="form-group">
                                <label for="name">Notícia</label>
                                <input type="text" name="tituloNoticia" 
                                       class="form-control" 
                                       required>
                            </div>
                        </div>
                       
                        <div class="col-md-12">
                            <div class="form-group">

                                <label for="description">Descrição</label>
                                      <textarea class="form-control" name="descNoticia" placeholer="Message">
                                      </textarea>
                             
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