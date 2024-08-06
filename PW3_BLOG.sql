CREATE DATABASE PW3_BLOG;
USE PW3_BLOG;


CREATE TABLE TBL_POST(
	ID_POST BIGINT PRIMARY KEY IDENTITY,
	TX_TITULO VARCHAR(50) NOT NULL,
	TX_CONTEUDO VARCHAR(1000) NOT NULL,
	DT_CRIACAO SMALLDATETIME NOT NULL
);


CREATE TABLE TBL_COMENTARIO(
	ID_COMENTARIO BIGINT PRIMARY KEY IDENTITY,
	TX_CONTEUDO VARCHAR(200) NOT NULL,
	TX_AUTOR VARCHAR(30) NOT NULL,
	DT_CRIACAO SMALLDATETIME NOT NULL,
	ID_POST BIGINT FOREIGN KEY REFERENCES TBL_POST(ID_POST)
);


INSERT INTO TBL_POST(TX_TITULO, TX_CONTEUDO, DT_CRIACAO) VALUES ('Publicando SpringBoot e Frontend em produ��o','Ao criarmos uma aplica��o nova hoje em dia, temos v�rios suportes aos devs no ambiente de desenvolvimento. IDEs e gerenciadores de deploy, como maven/gradle no Java ou npm no front, facilitam bastante a carga da [�]','2019-01-10T10:20:05');
INSERT INTO TBL_POST(TX_TITULO, TX_CONTEUDO, DT_CRIACAO) VALUES ('O m�nimo que voc� deve saber de Java 8','Sem d�vida as mudan�as do Java 8 foram as mais profundas na plataforma depois de muito tempo. Aproveitamos para atualizar esse post para tamb�m linkar as mudan�as do Java 9 e as do Java 10','2019-03-07T11:23:54');
INSERT INTO TBL_POST(TX_TITULO, TX_CONTEUDO, DT_CRIACAO) VALUES ('O m�nimo que voc� deve saber de Java 9','O t�tulo n�o � uma coincid�ncia, esse post foi criado com o mesmo intuito daquele que eu escrevi em 2014 junto com o Paulo Silveira, anunciando as principais altera��es da nova vers�o da linguagem Java. Com [�]','2020-09-25T09:36:12');
INSERT INTO TBL_POST(TX_TITULO, TX_CONTEUDO, DT_CRIACAO) VALUES ('Invocando m�todos ass�ncronos com Spring','O ecossistema Spring � muito usado por v�rias aplica��es Java mundo afora e uma das features interessantes desse framework � a possibilidade de criarmos chamadas ass�ncronas entre nossos m�todos. O tutorial do site do Spring [�]','2021-08-02T20:21:08');
INSERT INTO TBL_POST(TX_TITULO, TX_CONTEUDO, DT_CRIACAO) VALUES ('Usando o Google Maps e GPS no Android','Este � um post criado em 2010 que est� sendo atualizado neste ano de 2017. Os ajustes realizados visam a melhora da formata��o como tamb�m do conte�do. O mercado para Android est� cada vez mais [�','2020-04-10T09:09:13');
INSERT INTO TBL_POST(TX_TITULO, TX_CONTEUDO, DT_CRIACAO) VALUES ('Ordenando cole��es com Comparable e Comparator','Uma tarefa comum no dia a dia dos desenvolvedores � ordenar uma lista ou array. Para n�o inventar a roda, a Collections API do Java (tamb�m conhecida pelo nome do seu pacote, o java.util) vem [�]','2021-03-22T06:18:42');
INSERT INTO TBL_POST(TX_TITULO, TX_CONTEUDO, DT_CRIACAO) VALUES ('Documentando uma API JAX-RS com Swagger','Em um post anterior, falamos sobre como modelar uma API REST com o Swagger. Essa abordagem, em que pensamos nos detalhes da API antes da implement�-la, � conhecida como Contract-First ou API-First. Uma outra abordagem, [�]','2020-03-22T16:48:12');
INSERT INTO TBL_POST(TX_TITULO, TX_CONTEUDO, DT_CRIACAO) VALUES ('Testando servi�os REST','Uma pergunta frequente em muitos projetos � qual tipo de testes devo fazer? A resposta, como quase tudo em nossa �rea, n�o � �nica, e cada caso deve ser analisado separadamente, sendo um espec�fico o [�]','2021-07-08T13:06:18');


INSERT INTO TBL_COMENTARIO(TX_CONTEUDO, TX_AUTOR, DT_CRIACAO, ID_POST) VALUES ('Parab�ns! Post excelente, adorei!','Henrique Felipe','2019-01-12T21:09:32',1);
INSERT INTO TBL_COMENTARIO(TX_CONTEUDO, TX_AUTOR, DT_CRIACAO, ID_POST) VALUES ('Parab�ns pelo post e pelo blog, tem me ajudado bastante','An�nimo','2019-01-23T18:42:14',1);
INSERT INTO TBL_COMENTARIO(TX_CONTEUDO, TX_AUTOR, DT_CRIACAO, ID_POST) VALUES ('Parab�ns! Post excelente, adorei!','Henrique Felipe','2019-03-17T04:11:21',2);
INSERT INTO TBL_COMENTARIO(TX_CONTEUDO, TX_AUTOR, DT_CRIACAO, ID_POST) VALUES ('Parab�ns pelo post e pelo blog, tem me ajudado bastante','An�nimo','2019-04-01T13:06:18',2);
INSERT INTO TBL_COMENTARIO(TX_CONTEUDO, TX_AUTOR, DT_CRIACAO, ID_POST) VALUES ('Parab�ns! Post excelente, adorei!','Henrique Felipe','2020-10-01T12:50:21',3);
INSERT INTO TBL_COMENTARIO(TX_CONTEUDO, TX_AUTOR, DT_CRIACAO, ID_POST) VALUES ('Parab�ns pelo post e pelo blog, tem me ajudado bastante','An�nimo','2020-09-25T11:03:20',3);
INSERT INTO TBL_COMENTARIO(TX_CONTEUDO, TX_AUTOR, DT_CRIACAO, ID_POST) VALUES ('Parab�ns! Post excelente, adorei!','Henrique Felipe','2021-08-05T06:50:32',4);
INSERT INTO TBL_COMENTARIO(TX_CONTEUDO, TX_AUTOR, DT_CRIACAO, ID_POST) VALUES ('Parab�ns pelo post e pelo blog, tem me ajudado bastante','An�nimo','2021-08-03T13:04:21',4);
INSERT INTO TBL_COMENTARIO(TX_CONTEUDO, TX_AUTOR, DT_CRIACAO, ID_POST) VALUES ('Parab�ns! Post excelente, adorei!','Henrique Felipe','2020-10-01T12:50:21',5);
INSERT INTO TBL_COMENTARIO(TX_CONTEUDO, TX_AUTOR, DT_CRIACAO, ID_POST) VALUES ('Parab�ns pelo post e pelo blog, tem me ajudado bastante','An�nimo','2020-09-25T11:03:20',5);
INSERT INTO TBL_COMENTARIO(TX_CONTEUDO, TX_AUTOR, DT_CRIACAO, ID_POST) VALUES ('Parab�ns! Post excelente, adorei!','Henrique Felipe','2021-08-05T06:50:32',6);
INSERT INTO TBL_COMENTARIO(TX_CONTEUDO, TX_AUTOR, DT_CRIACAO, ID_POST) VALUES ('Parab�ns pelo post e pelo blog, tem me ajudado bastante','An�nimo','2021-08-03T13:04:21',6);
INSERT INTO TBL_COMENTARIO(TX_CONTEUDO, TX_AUTOR, DT_CRIACAO, ID_POST) VALUES ('Parab�ns! Post excelente, adorei!','Henrique Felipe','2020-08-05T06:50:32',7);
INSERT INTO TBL_COMENTARIO(TX_CONTEUDO, TX_AUTOR, DT_CRIACAO, ID_POST) VALUES ('Parab�ns pelo post e pelo blog, tem me ajudado bastante','An�nimo','2020-08-03T13:04:21',7);
INSERT INTO TBL_COMENTARIO(TX_CONTEUDO, TX_AUTOR, DT_CRIACAO, ID_POST) VALUES ('Parab�ns! Post excelente, adorei!','Henrique Felipe','2021-07-15T06:50:32',8);
INSERT INTO TBL_COMENTARIO(TX_CONTEUDO, TX_AUTOR, DT_CRIACAO, ID_POST) VALUES ('Parab�ns pelo post e pelo blog, tem me ajudado bastante','An�nimo','2021-08-13T13:04:21',8);

