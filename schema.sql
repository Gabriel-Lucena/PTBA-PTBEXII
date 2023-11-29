CREATE DATABASE floodguard;

USE floodguard;

CREATE TABLE tblUf
(
    idUf INT NOT NULL PRIMARY KEY IDENTITY,
    sigla VARCHAR(3) NOT NULL UNIQUE,
    nome VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE tblCidade
(
    idCidade INT NOT NULL PRIMARY KEY IDENTITY,
    nome VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE tblBairro
(
    idBairro INT NOT NULL PRIMARY KEY IDENTITY,
    nome VARCHAR(50) NOT NULL,
    idCidade INT NOT NULL,
    idUf INT NOT NULL,
    FOREIGN KEY(idUf) REFERENCES tblUf(idUf),
    FOREIGN KEY(idCidade) REFERENCES tblCidade(idCidade)
);

CREATE TABLE tblUsuario
(
    idUsuario INT NOT NULL PRIMARY KEY IDENTITY,
    nome VARCHAR(50) NOT NULL UNIQUE,
    dataCriacao DATETIME NOT NULL,
    senha VARCHAR(50) NOT NULL
);

CREATE TABLE tblUsuarioComum
(
    idUsuario INT NOT NULL PRIMARY KEY,
    idBairro INT NOT NULL,
    FOREIGN KEY(idUsuario) REFERENCES tblUsuario(idUsuario),
    FOREIGN KEY(idBairro) REFERENCES tblBairro(idBairro),
);

CREATE TABLE tblAdministrador
(
    idAdministrador INT NOT NULL PRIMARY KEY IDENTITY
);

CREATE TABLE tblAcao
(
    idAcao INT NOT NULL PRIMARY KEY IDENTITY,
    nome VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE tblUsuarioAdministrador
(
    idUsuario INT NOT NULL,
    idAdministrador INT NOT NULL,
    idAcao INT NOT NULL,
    PRIMARY KEY
    (idUsuario, idAdministrador),
    FOREIGN KEY
    (idUsuario) REFERENCES tblUsuario(idUsuario),
    FOREIGN KEY(idAdministrador) REFERENCES tblAdministrador(idAdministrador),
    FOREIGN KEY(idAcao) REFERENCES tblAcao(idAcao)
);

CREATE TABLE tblPublicacao
(
    idPublicacao INT NOT NULL IDENTITY PRIMARY KEY,
    data DATETIME NOT NULL,
    texto TEXT NOT NULL,
    idUsuario INT NOT NULL,
    idBairro INT NOT NULL,
    FOREIGN KEY(idUsuario) REFERENCES tblUsuario(idUsuario),
    FOREIGN KEY(idBairro) REFERENCES tblBairro(idBairro)
);

CREATE TABLE tblComentario
(
    idComentario INT NOT NULL IDENTITY PRIMARY KEY,
    dataComentario DATETIME NOT NULL,
    texto TEXT NOT NULL,
    idPublicacao INT NOT NULL,
    idUsuario INT NOT NULL,
    FOREIGN KEY(idPublicacao) REFERENCES tblPublicacao(idPublicacao),
    FOREIGN KEY(idUsuario) REFERENCES tblUsuario(idUsuario)
);

CREATE TABLE tblComentarioResposta
(
    idComtentarioResposta INT NOT NULL PRIMARY KEY IDENTITY,
    idComentario INT NOT NULL,
    dataComentario DATE NOT NULL,
    texto VARCHAR(100) NOT NULL,
    FOREIGN KEY (idComentario) REFERENCES tblComentario(idComentario)
);

CREATE TABLE tblNivel
(
    idNivel INT NOT NULL PRIMARY KEY IDENTITY,
    descricao VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE tblAlerta
(
    idAlerta INT NOT NULL PRIMARY KEY IDENTITY,
    dataAlerta DATE NOT NULL,
    texto VARCHAR(50) NOT NULL,
    idNivel INT NOT NULL,
    FOREIGN KEY(idNivel) REFERENCES tblNivel(idNivel)
);

CREATE TABLE tblUsuarioAlerta
(
    idUsuario INT NOT NULL,
    idAlerta INT NOT NULL,
    PRIMARY KEY (idUsuario),
    FOREIGN KEY (idUsuario) REFERENCES tblUsuarioComum(idUsuario),
    FOREIGN KEY (idAlerta) REFERENCES tblAlerta(idAlerta)
);