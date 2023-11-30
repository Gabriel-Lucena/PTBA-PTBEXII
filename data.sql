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

INSERT INTO tblUsuarioComum VALUES (5, 2);
INSERT INTO tblUsuarioComum VALUES (7, 3);
INSERT INTO tblUsuarioComum VALUES (8, 4);
INSERT INTO tblUsuarioComum VALUES (9, 5);

SELECT * FROM tblUsuarioComum;

INSERT INTO tblAdministrador VALUES (10);

INSERT INTO tblAcao VALUES ('Banir');
INSERT INTO tblAcao VALUES ('Notificar');
INSERT INTO tblAcao VALUES ('Suspender Conta');

INSERT INTO tblUsuarioAdministrador VALUES (5, 10, 1);
INSERT INTO tblUsuarioAdministrador VALUES (7, 10, 2);
INSERT INTO tblUsuarioAdministrador VALUES (8, 10, 3);
INSERT INTO tblUsuarioAdministrador VALUES (9, 10, 1);

SELECT * FROM tblUsuarioAdministrador;

INSERT INTO tblPublicacao VALUES ('20231123 14:33:20 PM', 'Prováveis Enchentes', 5, 1);
INSERT INTO tblPublicacao VALUES ('20231024 10:20:40 AM', 'Enchentes', 10, 2);
INSERT INTO tblPublicacao VALUES ('20230426 16:05:23 PM', 'Chuvas Fortes', 7, 3);
INSERT INTO tblPublicacao VALUES ('20230527 07:53:45 AM', 'Pancadas de Chuva', 8, 4);
INSERT INTO tblPublicacao VALUES ('20231106 01:07:32 AM', 'Grandes Chances de Alagamento', 9, 5);

SELECT * FROM tblPublicacao;

INSERT INTO tblComentario VALUES ('2023-11-23 15:33:20', 'Parece que está começando a chover!', 1, 1);
INSERT INTO tblComentario VALUES ('2023-10-24 11:20:40', 'Enchentes na proximidades', 2, 2);
INSERT INTO tblComentario VALUES ('2023-04-26 17:05:23', 'Está chovendo muito forte!', 3, 3);
INSERT INTO tblComentario VALUES ('2023-05-27 08:53:45', 'Nuvens carregadas', 4, 4);
INSERT INTO tblComentario VALUES ('2023-11-06 02:07:32', 'A água está muito forte', 5, 5);

INSERT INTO tblComentarioResposta VALUES (1, '2023-11-23 16:33:20', 'Aqui também!', 1);
INSERT INTO tblComentarioResposta VALUES (2, '2023-10-24 12:20:40', '', 2);
INSERT INTO tblComentarioResposta VALUES (3, '2023-04-26 19:05:23', '', 3);

INSERT INTO tblNivel VALUES ('Baixo');
INSERT INTO tblNivel VALUES ('Médio');
INSERT INTO tblNivel VALUES ('Alto');

INSERT INTO tblAlerta VALUES ('2023-11-23 16:33:20', 'Chance média de chuva', 1);
INSERT INTO tblAlerta VALUES ('2023-04-26 18:05:23', 'Chuvas torrenciais', 2);
INSERT INTO tblAlerta VALUES ('2023-10-24 12:20:40', 'Chuvas fortes', 3);

INSERT INTO tblUsuarioAlerta VALUES (2, 2);
INSERT INTO tblUsuarioAlerta VALUES (3, 3);
INSERT INTO tblUsuarioAlerta VALUES (4, 4);
