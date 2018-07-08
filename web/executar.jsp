<%@page import="br.tjsc.jus.processo.model.Automatizador"%>
<%@page import="br.tjsc.jus.processo.model.AutomatizadorDAO"%>
<%@page import="br.tjsc.jus.processo.model.Minuta"%>
<%@page import="br.tjsc.jus.processo.model.MinutaDAO"%>
<%@page import="java.util.List"%>
<%@page import="br.tjsc.jus.processo.model.Processo"%>
<%@page import="br.tjsc.jus.processo.model.ProcessoDAO"%>
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
                            
                            <%
                                
                                String idAutomatizador = request.getParameter("idauto");
                                AutomatizadorDAO autoDAO = new AutomatizadorDAO();
                                Automatizador automatizador = autoDAO.getPorId(Integer.parseInt(idAutomatizador));
                                String regras = automatizador.getDeregras();
                                //MinutaDAO minutaDAO = new MinutaDAO();
                                //Minuta minuta = minutaDAO.getPorId(Integer.parseInt(idAutomatizador));
                             %>   
				<div class="container">
                                    <table>
                                        <tr>
                                        <th>Número</th>
                                        <th>Cd. Classe</th>
                                        <th>Nome Classe</th>
                                        <th>Cd Assunto</th>
                                        <th>Nome Assunto</th>
                                        <th>Valor Ação</th>
                                        <th>Validar Ações Programadas</th>
                                        </tr>
                                    <%
                                    ProcessoDAO dao = new ProcessoDAO();
                                    List<Processo> lista = dao.getProcessos("436", "10433");
                                    out.print("");
                                    for(Processo processo : lista){
                                        out.print("<tr>");
                                        out.print("<td>"+processo.getNuprocesso()+"</td>");
                                        out.print("<td>"+processo.getCdclasseunif()+"</td>");
                                        out.print("<td>"+processo.getDeclasse()+"</td>");
                                        out.print("<td>"+processo.getCdassuntounif()+"</td>");
                                        out.print("<td>"+processo.getDeassunto()+"</td>");
                                        out.print("<td>"+processo.getVlcausa()+"</td>");
                                        out.print("<td><a href=\"acaominutar.jsp?id=1&cdprocesso="+processo.getCdprocesso()+"\">Minutar</a>|");
                                        out.print("<a href=\"acaominutar.jsp?id=1&cdprocesso="+processo.getCdprocesso()+"\">MoverLocalizacao</a></td>");
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