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
                        <h1><b>Notícias cadastradas</b></h1>
                        <br>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">

                        <ol class="breadcrumb">
                            <li><a href="#">Panel</a></li>                  
                            <li class="active">Notícias</li>
                        </ol>
                        <br>
                        <a href="{{route('noticias.create')}}" 
                           class="btn btn-default btn-sm pull-right">
                            <span class="glyphicon glyphicon-plus"></span> Adicionar notícia</a>
                       
                    </div>           
                </div>
                <br>
    @if (session('message'))
        <div class="alert alert-success alert-dismissible">
            <a href="#" class="close" 
               data-dismiss="alert"
               aria-label="close">&times;</a>
            {{ session('message') }}
        </div>
        @endif
                <div class="row">
                    <div class="col-md-12">   
                        <br />
                        <h4 id="center"><b>Notícias cadastradas ({{$total}})</b></h4>
                        <br>
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th id="center">Código</th>
                                        <th>Título da notícia</th>
                                        <th>Notícia</th>
                                                     
                                                      
                                        <th id="center">Ações</th>                
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($noticias as $noticia)
                                    <tr>
                                        <td id="center">{{$noticia->id}}</td>
                                        <td title="Nome">{{$noticia->tituloNoticia}}</td>
                                        <td title="Descrição">{{$noticia->descNoticia}}</td>
                                        
                                   
                                        <td id="center">
                                            <a href="{{route('noticias.edit', $noticia->id)}}" 
                                               data-toggle="tooltip" 
                                               data-placement="top"
                                               title="Alterar"><i class="fa fa-pencil"></i></a>
                                            &nbsp;<form style="display: inline-block;" method="POST" 
                                                        action="{{route('noticias.destroy', $noticia->id)}}"                                                        
                                                        data-toggle="tooltip" data-placement="top"
                                                        title="Excluir" 
                                                        onsubmit="return confirm('Confirma exclusão?')">
                                                {{method_field('DELETE')}}{{ csrf_field() }}                                                
                                                <button type="submit" style="background-color: #fff">
                                                    <a><i class="fa fa-trash-o"></i></a>                                                    
                                                </button></form></td>               
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
     
            </body>
            </html>

