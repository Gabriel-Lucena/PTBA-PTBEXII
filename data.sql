USE Floodguard;

INSERT INTO tblUf VALUES ('SP', 'São Paulo');
INSERT INTO tblUf VALUES ('RJ', 'Rio de Janeiro');
INSERT INTO tblUf VALUES ('SC', 'Santa Catarina');
INSERT INTO tblUf VALUES ('PE', 'Pernambuco');
INSERT INTO tblUf VALUES ('AM', 'Amazonas');

INSERT INTO tblCidade VALUES ('São Paulo');
INSERT INTO tblCidade VALUES ('Rio de Janeiro');
INSERT INTO tblCidade VALUES ('Florianópolis');
INSERT INTO tblCidade VALUES ('Recife');
INSERT INTO tblCidade VALUES ('Manaus');

INSERT INTO tblBairro VALUES ('Itaim Bibi', 1, 1);
INSERT INTO tblBairro VALUES ('Humaitá', 2, 2);
INSERT INTO tblBairro VALUES ('Trindade', 3, 3);
INSERT INTO tblBairro VALUES ('Espinheiro', 4, 4);
INSERT INTO tblBairro VALUES ('Adrianópolis', 5, 5);

INSERT INTO tblUsuario VALUES ('Gabriel', '20231122 14:33:20 PM', 'gabriel123');
INSERT INTO tblUsuario VALUES ('Bruno', '20231023 10:20:40 AM', 'bruno123');
INSERT INTO tblUsuario VALUES ('Mateus', '20230425 16:05:23 PM', 'mateus123');
INSERT INTO tblUsuario VALUES ('Fedro', '20230526 07:53:45 AM', 'fedro123');
INSERT INTO tblUsuario VALUES ('Calíope', '20231105 01:07:32 AM', 'caliope123');

SELECT * FROM tblUsuario;
SELECT * FROM tblBairro;

INSERT INTO tblUsuarioComum VALUES (1, 2);
INSERT INTO tblUsuarioComum VALUES (2, 3);
INSERT INTO tblUsuarioComum VALUES (3, 4);
INSERT INTO tblUsuarioComum VALUES (4, 5);

SELECT * FROM tblUsuarioComum;

INSERT INTO tblAdministrador VALUES (1);

INSERT INTO tblAcao VALUES ('Banir');
INSERT INTO tblAcao VALUES ('Notificar');
INSERT INTO tblAcao VALUES ('Suspender Conta');

INSERT INTO tblUsuarioAdministrador VALUES (2, 1, 1);
INSERT INTO tblUsuarioAdministrador VALUES (3, 1, 2);
INSERT INTO tblUsuarioAdministrador VALUES (4, 1, 3);
INSERT INTO tblUsuarioAdministrador VALUES (5, 1, 1);

SELECT * FROM tblUsuarioAdministrador;

INSERT INTO tblPublicacao VALUES ('20231123 14:33:20 PM', 'Prováveis Enchentes', 1, 1);
INSERT INTO tblPublicacao VALUES ('20231024 10:20:40 AM', 'Enchentes', 2, 2);
INSERT INTO tblPublicacao VALUES ('20230426 16:05:23 PM', 'Chuvas Fortes', 3, 3);
INSERT INTO tblPublicacao VALUES ('20230527 07:53:45 AM', 'Pancadas de Chuva', 4, 4);
INSERT INTO tblPublicacao VALUES ('20231106 01:07:32 AM', 'Grandes Chances de Alagamento', 5, 5);

SELECT * FROM tblPublicacao;

INSERT INTO tblComentario VALUES ('20231123 15:33:20 PM', 'Parece que está começando a chover!', 1, 1);
INSERT INTO tblComentario VALUES ('20231024 11:20:40 AM', 'Enchentes na proximidades', 2, 2);
INSERT INTO tblComentario VALUES ('20230426 17:05:23 PM', 'Está chovendo muito forte!', 3, 3);
INSERT INTO tblComentario VALUES ('20230527 08:53:45 AM', 'Nuvens carregadas', 4, 4);
INSERT INTO tblComentario VALUES ('20231106 02:07:32 AM', 'A água está muito forte', 5, 5);

SELECT * FROM tblComentario;

INSERT INTO tblComentarioResposta VALUES (1, '20231123 16:33:20 PM', 'Aqui também!', 1);
INSERT INTO tblComentarioResposta VALUES (2, '20231024 12:20:40 PM', 'Já começou a temporada das enchentes', 2);
INSERT INTO tblComentarioResposta VALUES (3, '20230426 19:05:23 PM', 'Está escuro, a previsão do tempo disse que iria chover hoje.', 3);

SELECT * FROM tblComentarioResposta;

INSERT INTO tblNivel VALUES ('Baixo');
INSERT INTO tblNivel VALUES ('Médio');
INSERT INTO tblNivel VALUES ('Alto');

INSERT INTO tblAlerta VALUES ('20231123 16:33:20 PM', 'Chance média de chuva', 1);
INSERT INTO tblAlerta VALUES ('20230426 18:05:23 PM', 'Chuvas torrenciais', 2);
INSERT INTO tblAlerta VALUES ('20231024 12:20:40 PM', 'Chuvas fortes', 3);

SELECT * FROM tblAlerta;

INSERT INTO tblUsuarioAlerta VALUES (2, 1);
INSERT INTO tblUsuarioAlerta VALUES (3, 2);
INSERT INTO tblUsuarioAlerta VALUES (4, 3);

SELECT * FROM tblUsuarioAlerta;

--

SELECT nome, dataCriacao FROM tblUsuario;

SELECT texto FROM tblPublicacao WHERE idBairro = 2;

SELECT texto FROM tblPublicacao WHERE idBairro = 2;

SELECT texto FROM tblComentario WHERE dataComentario BETWEEN '20230101 00:00:00 AM' AND '20231231 23:59:59 PM';

SELECT texto from tblPublicacao Where texto like 'Enchentes';

SELECT nome from tblBairro ORDER BY nome;

SELECT nome from tblUsuario ORDER BY nome;