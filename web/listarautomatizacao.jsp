<%@page import="java.util.List"%>
<%@page import="br.tjsc.jus.processo.model.Automatizador"%>
<%@page import="br.tjsc.jus.processo.model.AutomatizadorDAO"%>
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
                                    <%
                                    AutomatizadorDAO dao = new AutomatizadorDAO();
                                    List<Automatizador> lista = dao.listarTodos();
                                    out.print("");
                                    for(Automatizador auto : lista){
                                        out.print("<tr>");
                                        out.print("<td>Nome:</td>");
                                        out.print("<td>" + auto.getNmautomatizador() + "</td>");
                                        out.print("</tr>");
                                        
                                        out.print("<tr>");
                                        out.print("<td>Regras:</td>");
                                        out.print("<td><span style=\"white-space: pre-line\">" + auto.getDeregras() + "</span></td>");
                                        out.print("</tr>");
                                        
                                        out.print("<tr>");
                                        out.print("<td>Ações:</td>");
                                        out.print("<td><span style=\"white-space: pre-line\">" +  auto.getDeacoes() + "</span></td>");
                                        out.print("</tr>");
                                        out.print("<tr>");
                                        out.print("<td></td>");
                                        out.print("<td>");
                                        out.print("<a href=\"executar.jsp?idauto="+ auto.getCdautomatizador() +"\">Executar</a>");
                                        out.print("</td>");
                                        out.print("</tr>");
                                    }
                                    %>    
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