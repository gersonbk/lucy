Prot�tipo funcional da Solu��o

O prot�tipo foi constru�do com tecnologia Java (jsp) e banco de dados MySQL, com utiliza��o dos framework Hibernate. Entendemos que as tecnologias utilizadas n�o s�o as mais adequadas, considerando que t�nhamos apenas um programador na equipe e pouco tempo foi optado por uma solu��o simplificada apenas para demonstra��o da ideia.

Num projeto futuro, pretende-se utilizar um framework propriet�rio do TJSC que faz uso de tecnologias/frameworks atuais de mercado: AngularJS, Bootstrap, Maven, Java, servidor Wildfly, banco de dados Oracle etc.
Para que a solu��o proposta funcione, ser� necess�rio elaborar uma Ontologia para cria��o de uma �Vocabul�rio Controlado�, esse vocabul�rio ir� dar origem a �linguagem de programa��o� baseada em regras e a��es. Essa linguagem de programa��o ser� constru�da de modo a facilitar o uso, a ideia � que Assessores, Analistas Jur�dicos e Magistrados possam criar seus pr�prios �programas�.
Cada uma das a��es e comandos da linguagem proposta ter� que ser linkada com tabelas do banco de dados e tamb�m servi�os de software a serem desenvolvidos para integra��o com os sistemas.

Exemplo Regras:
Processo.Classe.CodigoUnificado = �19� (Peso: 10)  E
Processo.Assunto.CodigoUnificado = �22� (Peso: 20) E
Processo.PartePassiva.CNPJ = �00000000012� (Peso: 30)  E
Processo.Localizacao = �Concluso - Senten�a� (Obrigat�rio) E
Processo.Autos.PeticaoInicial Contem �*Regressiva*� (Peso: -100) E
Processo.Autos.PeticaoInicial Similaridade 97% Processo[00328973473948798].Autos.PeticaoInicial (Peso: 200) 

Exemplo A��es:
A��o.Minutar.Modelo[563]() E
A��o.MoverLocalizacao(�Revis�o Senten�a�)
