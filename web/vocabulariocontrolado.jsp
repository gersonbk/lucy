<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Lucy - Cadastrar Automatização</title>
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
                                     <tr><td>Processo.Classe.CodigoUnificado</td><td>Identifica o código unificado CNJ de uma classe vinculada a um processo judicial</td></tr>          
                                     <tr><td>Processo.Assunto.CodigoUnificado</td><td>Identifica o código unificado CNJ de um assunto vinculada a um processo judicial</td></tr>          
                                     <tr><td>Processo.Autos</td><td>Identifica todos os documentos dos autos processuais</td></tr>          
                                     <tr><td>Processo.Autos.PeticaoInicial</td><td>Identifica a petição inicial</td></tr>          
                                     <tr><td>Processo.Autos.Contestacao</td><td>Identifica a constestação</td></tr>          
                                     <tr><td>Comandos de Comparações</td><td>= : Indica igualdade<br>
                                                                             Contem : Documento contem conjunto de palavras<br>
                                                                             Não Contem : Documento contem conjunto de palavras<br></td></tr>          
                                     <tr><td>Ação.Minutar.Modelo(Código:"Descrição")</td><td>Minutar no processo<br>
                                                                 Exemplo: Ação.Minutar.Modelo(1:"Sentença Danos Morais Juizado Especial")</td></tr>          
                                     <tr><td>Ação.MoverLocalizacao(Código:"Localizador")</td><td>Mudar de localização o processo<br>
                                         Ação.MoverLocalizacao(1:"Revisão Sentença")</td></tr>          
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