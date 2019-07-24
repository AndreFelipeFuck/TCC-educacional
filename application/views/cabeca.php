<html>
<head>
	<title>Atom | Home</title>
     <!--LINKS-->
        <!--CSS-->
            <link rel="stylesheet"  href="<?php echo base_url('assets/css/bootstrap.css')?>">
            <link rel="stylesheet"  href="<?php echo base_url('assets/css/style.css')?>">
            <link rel="stylesheet"  href="<?php echo base_url('assets/css/bootstrap.min.css')?>">
        <!--JS-->                 
        <script src="<?php echo base_url('assets/jquery/jquery-3.1.0.min.js')?>"></script>
        <script src="<?php echo base_url('assets/bootstrap/js/bootstrap.min.js')?>"></script>
        <script src="<?php echo base_url('assets/datatables/js/jquery.dataTables.min.js')?>"></script>
        <script src="<?php echo base_url('assets/datatables/js/dataTables.bootstrap.js')?>"></script>
      <!-- END LINKS-->                   
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <meta charset="utf-8">
</head>
<body>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
		  <a class="navbar-brand" href="#"><img src="<?php echo base_url('assets/img/logo.png')?>" class="imglogo"></a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>

		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item">
		        <a class="nav-link" href="<?php echo site_url('')?>">Home<span class="sr-only">(current)</span></a>
		      </li>
                <!--
		      <li class="nav-item">
		        <a class="nav-link" href="#">Materias</a>
		      </li>
		       <li class="nav-item">
		        <a class="nav-link" href="#">Videos</a>
		      </li>
		       <li class="nav-item">
		        <a class="nav-link" href="#">Artigos</a>
		      </li>
		       <li class="nav-item">
		        <a class="nav-link" href="#">Professores</a>
		      </li>
		       <li class="nav-item">
		        <a class="nav-link" href="#">Sobre</a>
		      </li>
		      -->
		      	<li class="nav-item">
		      	<a class="nav-link" href="<?php echo site_url('alunos') ?>">Aluno</a>
		      </li>
		    </ul>
		    <form class="form-inline my-2 my-lg-0">
		      <input class="form-control mr-sm-2" type="search" placeholder="Pequise aqui..." aria-label="Search">
		      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
		    </form>
		    <form class="form-inline my-2 my-lg-0 registro">
		    	<a class="regis" href="<?php echo site_url('home/opiCad')?>">Cadastre-se</a>
               
		    </form>
		  </div>
		</nav>


