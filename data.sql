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

INSERT INTO tblUsuario VALUES ('Gabriel', '2023-11-22 14:33:20', 'gabriel123');
INSERT INTO tblUsuario VALUES ('Bruno', '2023-10-23 10:20:40', 'bruno123');
INSERT INTO tblUsuario VALUES ('Mateus', '2023-04-25 16:05:23', 'mateus123');
INSERT INTO tblUsuario VALUES ('Fedro', '2023-05-26 07:53:45', 'fedro123');
INSERT INTO tblUsuario VALUES ('Calíope', '2023-11-05 01:07:32', 'caliope123');

INSERT INTO tblUsuarioComum VALUES (2, 2);
INSERT INTO tblUsuarioComum VALUES (3, 3);
INSERT INTO tblUsuarioComum VALUES (4, 4);
INSERT INTO tblUsuarioComum VALUES (5, 5);

INSERT INTO tblAdministrador VALUES (1);

INSERT INTO tblAcao VALUES ('Banir');
INSERT INTO tblAcao VALUES ('Notificar');
INSERT INTO tblAcao VALUES ('Suspender Conta');

INSERT INTO tblUsuarioAdministrador VALUES (2, 1, 1);
INSERT INTO tblUsuarioAdministrador VALUES (3, 1, 2);
INSERT INTO tblUsuarioAdministrador VALUES (4, 1, 3);
INSERT INTO tblUsuarioAdministrador VALUES (5, 1, 1);

INSERT INTO tblPublicacao VALUES ('2023-11-23 14:33:20', 'Prováveis Enchentes', 1, 1);
INSERT INTO tblPublicacao VALUES ('2023-10-24 10:20:40', 'Enchentes', 2, 2);
INSERT INTO tblPublicacao VALUES ('2023-04-26 16:05:23', 'Chuvas Fortes', 3, 3);
INSERT INTO tblPublicacao VALUES ('2023-05-27 07:53:45', 'Pancadas de Chuva', 4, 4);
INSERT INTO tblPublicacao VALUES ('2023-11-06 01:07:32', 'Grandes Chances de Alagamento', 5, 5);

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
