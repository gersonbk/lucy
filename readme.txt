Protótipo funcional da Solução

O protótipo foi construído com tecnologia Java (jsp) e banco de dados MySQL, com utilização dos framework Hibernate. Entendemos que as tecnologias utilizadas não são as mais adequadas, considerando que tínhamos apenas um programador na equipe e pouco tempo foi optado por uma solução simplificada apenas para demonstração da ideia.

Num projeto futuro, pretende-se utilizar um framework proprietário do TJSC que faz uso de tecnologias/frameworks atuais de mercado: AngularJS, Bootstrap, Maven, Java, servidor Wildfly, banco de dados Oracle etc.
Para que a solução proposta funcione, será necessário elaborar uma Ontologia para criação de uma “Vocabulário Controlado”, esse vocabulário irá dar origem a “linguagem de programação” baseada em regras e ações. Essa linguagem de programação será construída de modo a facilitar o uso, a ideia é que Assessores, Analistas Jurídicos e Magistrados possam criar seus próprios “programas”.
Cada uma das ações e comandos da linguagem proposta terá que ser linkada com tabelas do banco de dados e também serviços de software a serem desenvolvidos para integração com os sistemas.

Exemplo Regras:
Processo.Classe.CodigoUnificado = “19” (Peso: 10)  E
Processo.Assunto.CodigoUnificado = “22” (Peso: 20) E
Processo.PartePassiva.CNPJ = “00000000012” (Peso: 30)  E
Processo.Localizacao = “Concluso - Sentença” (Obrigatório) E
Processo.Autos.PeticaoInicial Contem “*Regressiva*” (Peso: -100) E
Processo.Autos.PeticaoInicial Similaridade 97% Processo[00328973473948798].Autos.PeticaoInicial (Peso: 200) 

Exemplo Ações:
Ação.Minutar.Modelo[563]() E
Ação.MoverLocalizacao(“Revisão Sentença”)
