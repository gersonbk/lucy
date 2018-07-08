<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Lucy - Cadastrar Automatiza��o</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
		<script src="js/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-xlarge.css" />
		</noscript>
	</head>
	<body>

			<%@include file="cabecalho.jsp" %>

			<section id="main" class="wrapper">
				<div class="container">
                                 <table>
                                     <tr><td>Processo.Classe.CodigoUnificado</td><td>Identifica o c�digo unificado CNJ de uma classe vinculada a um processo judicial</td></tr>          
                                     <tr><td>Processo.Assunto.CodigoUnificado</td><td>Identifica o c�digo unificado CNJ de um assunto vinculada a um processo judicial</td></tr>          
                                     <tr><td>Processo.Autos</td><td>Identifica todos os documentos dos autos processuais</td></tr>          
                                     <tr><td>Processo.Autos.PeticaoInicial</td><td>Identifica a peti��o inicial</td></tr>          
                                     <tr><td>Processo.Autos.Contestacao</td><td>Identifica a constesta��o</td></tr>          
                                     <tr><td>Comandos de Compara��es</td><td>= : Indica igualdade<br>
                                                                             Contem : Documento contem conjunto de palavras<br>
                                                                             N�o Contem : Documento contem conjunto de palavras<br></td></tr>          
                                     <tr><td>A��o.Minutar.Modelo(C�digo:"Descri��o")</td><td>Minutar no processo<br>
                                                                 Exemplo: A��o.Minutar.Modelo(1:"Senten�a Danos Morais Juizado Especial")</td></tr>          
                                     <tr><td>A��o.MoverLocalizacao(C�digo:"Localizador")</td><td>Mudar de localiza��o o processo<br>
                                         A��o.MoverLocalizacao(1:"Revis�o Senten�a")</td></tr>          
                                </table>
                                </div>
			</section>

		<!-- Footer -->
			<footer id="footer">
				<div class="container">
					<section class="links">
						<div class="row">
							<section class="3u 6u(medium) 12u$(small)">
							</section>
						</div>
					</section>
					<div class="row">
						<div class="8u 12u$(medium)">
							<ul class="copyright">
								<li>&copy; Untitled. All rights reserved.</li>
								<li>Design: <a href="http://templated.co">TEMPLATED</a></li>
								<li>Images: <a href="http://unsplash.com">Unsplash</a></li>
							</ul>
						</div>
						<div class="4u$ 12u$(medium)">
							<ul class="icons">
								<li>
									<a class="icon rounded fa-facebook"><span class="label">Facebook</span></a>
								</li>
								<li>
									<a class="icon rounded fa-twitter"><span class="label">Twitter</span></a>
								</li>
								<li>
									<a class="icon rounded fa-google-plus"><span class="label">Google+</span></a>
								</li>
								<li>
									<a class="icon rounded fa-linkedin"><span class="label">LinkedIn</span></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</footer>

	</body>
</html>