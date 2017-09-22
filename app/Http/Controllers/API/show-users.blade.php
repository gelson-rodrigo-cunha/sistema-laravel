     <!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Sistema de notícias</title>
        
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
        <a class="navbar-brand" href="#">Usuários</a>
      </div>
 
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
              <li class="active"><a href="{{ url('') }}">Home</a></li>
              <li><a href="{{route('user.index')}}">Notícias</a></li>
              <li>
             <li><a href="{{route('user.index')}}">Usuários</a></li>
              <li>
           
          </ul>
      </div>
    </div>
</nav> 
   
        <div id="line-one">   
            <div class="container">
                <div class="row">
                    <div class="col-md-12" id="center"> 
                        <h1><b>Usuários cadastrados</b></h1>
                        <br>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">

                        <ol class="breadcrumb">
                            <li><a href="#">Panel</a></li>                  
                            <li class="active">Usuários</li>
                        </ol>
                        <br>
                        <a href="{{route('usuarios.create')}}" 
                           class="btn btn-default btn-sm pull-right">
                            <span class="glyphicon glyphicon-plus"></span> Adicionar Usuários</a>
                       
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
                        <h4 id="center"><b>Usuários cadastrados ({{$total}})</b></h4>
                        <br>
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th id="center">Código</th>
                                        <th>Nome</th>
                                        <th>Senha</th>
                                                     
                                                      
                                        <th id="center">Ações</th>                
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($user as $us)
                                    <tr>
                                        <td id="center">{{$us->id}}</td>
                                        <td title="Nome">{{$us->name}}</td>
                                        <td title="Descrição">{{$us->email}}</td>
                                        
                                   
                                        <td id="center">
                                            <a href="{{route('user.edit', $us->id)}}" 
                                               data-toggle="tooltip" 
                                               data-placement="top"
                                               title="Alterar"><i class="fa fa-pencil"></i></a>
                                            &nbsp;<form style="display: inline-block;" method="POST" 
                                                        action="{{route('user.destroy', $us->id)}}"                                                        
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

