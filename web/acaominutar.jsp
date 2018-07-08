<%@page import="br.tjsc.jus.processo.model.Processo"%>
<%@page import="br.tjsc.jus.processo.model.ProcessoDAO"%>
<%@page import="br.tjsc.jus.processo.model.Minuta"%>
<%@page import="br.tjsc.jus.processo.model.MinutaDAO"%>
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
                                    <a href="#" onclick="history.go(-1)">Voltar</a>
                                    </br>
                                    <table>    
                                    <%
                                    String id = request.getParameter("id");
                                    String cdProcesso = request.getParameter("cdprocesso");
                                    MinutaDAO dao = new MinutaDAO();
                                    ProcessoDAO processoDAO = new ProcessoDAO();
                                    Minuta minuta = dao.getPorId(Integer.parseInt(id));
                                    //String minutaStr = new String(minuta.getDocumento());
                                    String minutaStr = minuta.getDocumento();
                                    Processo processo = processoDAO.getPorId(cdProcesso);
                                    out.print("<b>"+minuta.getNmminuta()+"</b>");
                                    minutaStr = minutaStr.replace("[$NMPESSOAATIVA]", processo.getNmpessoaativa());
                                    minutaStr = minutaStr.replace("[$NMPESSOAPASSIVA]", processo.getNmpessoapassiva());
                                    
                                    char[] caracteres = minutaStr.toCharArray();
                                    StringBuilder strTexto = new StringBuilder();
                                    StringBuilder strRegra = new StringBuilder();
                                    boolean regra = false;
                                    for(int i = 0; i < caracteres.length; i++){
                                        if(caracteres[i] == ']' && regra){
                                            regra = false;
                                            strTexto.append(caracteres[i]);
                                            strTexto.append("Confirmar Regra? <b>Sim</b> ou <b>Não</b>");
                                            continue;
                                        } else if(caracteres[i] == '[' && caracteres[i+1] == '$'
                                           && caracteres[i+2] == 'S' && caracteres[i+3] == 'e'){
                                            i = i + 3;
                                            regra = true;
                                        }
                                        strTexto.append(caracteres[i]);
                                    }
                                    
                                    
                                    out.print("<td><span style=\"white-space: pre-line\">"+strTexto.toString()+"</span></td>");
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