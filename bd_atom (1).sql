-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 05-Jun-2019 às 01:06
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_atom`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

DROP TABLE IF EXISTS `aluno`;
CREATE TABLE IF NOT EXISTS `aluno` (
  `codAluno` int(5) NOT NULL AUTO_INCREMENT,
  `nomeCompleto` varchar(180) DEFAULT NULL,
  `dataNasc` date DEFAULT NULL,
  `imgAluno` varchar(180) DEFAULT NULL,
  `anoLetivo` int(5) DEFAULT NULL,
  `curso` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`codAluno`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`codAluno`, `nomeCompleto`, `dataNasc`, `imgAluno`, `anoLetivo`, `curso`) VALUES
(1, 'Aline Cardoso Alexandre', NULL, NULL, NULL, NULL),
(2, 'Manuel Cornett', '2003-08-02', NULL, 1, 'Informatica'),
(3, 'Virginia Granillo', '2005-02-02', NULL, 1, 'Agropecuaria'),
(4, 'Virginia Granillo', '2005-02-02', NULL, 1, 'Agropecuaria'),
(5, 'Manuel Cornett', '2002-08-03', NULL, 1, 'Informatica'),
(6, 'Virginia Granillo', '2005-02-02', NULL, 1, 'Agropecuaria'),
(7, 'Rebeca Santos', '2006-02-01', NULL, 1, 'Quimica'),
(8, 'Nicole Oliveira', '2020-03-02', NULL, 1, 'Agropecuaria'),
(9, 'Pedro Castro', '2005-06-01', NULL, 1, 'Informatica'),
(10, 'Luiz Pinto', '2002-07-03', NULL, 1, 'Informatica'),
(11, 'Manuel Cornett', '2002-08-03', NULL, 2, 'Informatica'),
(12, 'Virginia Granillo', '2005-02-02', NULL, 2, 'Agropecuaria'),
(13, 'Rebeca Santos', '2006-02-01', NULL, 2, 'Quimica'),
(14, 'Nicole Oliveira', '2020-03-02', NULL, 2, 'Agropecuaria'),
(15, 'Pedro Castro', '2005-06-01', NULL, 2, 'Informatica'),
(16, 'Luiz Pinto', '2002-07-03', NULL, 2, 'Informatica'),
(17, 'Isabela Silva', '2008-06-02', NULL, 2, 'Quimica'),
(18, 'Laura Melo', '2015-09-01', NULL, 2, 'Agropecuaria'),
(19, 'Luana Ribeiro', '2002-08-01', NULL, 2, 'Agropecuaria'),
(20, 'Marcos Souza', '2006-12-01', NULL, 2, 'Informatica'),
(21, 'Sarah Rocha', '2002-06-03', NULL, 2, 'Informatica'),
(22, 'Luis Santos', '2012-11-02', NULL, 2, 'Quimica'),
(23, 'Mateus Souza', '2022-03-01', NULL, 2, 'Quimica'),
(24, 'Kai Barbosa', '2030-04-03', NULL, 2, 'Agropecuaria'),
(25, 'Eduardo Souza', '2016-02-03', NULL, 2, 'Informatica'),
(26, 'Marisa Rodrigues', '2018-02-03', NULL, 2, 'Agropecuaria'),
(27, 'Guilherme Dias', '2015-02-03', NULL, 2, 'Informatica'),
(28, 'Douglas Barros', '2017-05-02', NULL, 2, 'Informatica'),
(29, 'Isabelle Carvalho', '2005-02-01', NULL, 2, 'Quimica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `artigo`
--

DROP TABLE IF EXISTS `artigo`;
CREATE TABLE IF NOT EXISTS `artigo` (
  `codArtigo` int(5) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(180) DEFAULT NULL,
  `corpo` varchar(240) DEFAULT NULL,
  PRIMARY KEY (`codArtigo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentar`
--

DROP TABLE IF EXISTS `comentar`;
CREATE TABLE IF NOT EXISTS `comentar` (
  `codProfessor` int(5) DEFAULT NULL,
  `codComentario` int(5) DEFAULT NULL,
  KEY `codProfessor` (`codProfessor`),
  KEY `codComentario` (`codComentario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentario`
--

DROP TABLE IF EXISTS `comentario`;
CREATE TABLE IF NOT EXISTS `comentario` (
  `codComentario` int(5) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `comentario` varchar(240) DEFAULT NULL,
  `codVideo` int(5) DEFAULT NULL,
  `codAluno` int(5) DEFAULT NULL,
  PRIMARY KEY (`codComentario`),
  KEY `codVideo` (`codVideo`),
  KEY `codAluno` (`codAluno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
CREATE TABLE IF NOT EXISTS `disciplinas` (
  `codDisciplina` int(5) NOT NULL AUTO_INCREMENT,
  `qtdVideos` int(7) DEFAULT NULL,
  `qtdArtigos` int(7) DEFAULT NULL,
  `nome` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`codDisciplina`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicio`
--

DROP TABLE IF EXISTS `exercicio`;
CREATE TABLE IF NOT EXISTS `exercicio` (
  `cod_exercicio` int(5) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(180) DEFAULT NULL,
  `nome` varchar(180) DEFAULT NULL,
  `arquivo` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`cod_exercicio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lecionar`
--

DROP TABLE IF EXISTS `lecionar`;
CREATE TABLE IF NOT EXISTS `lecionar` (
  `codDisciplina` int(5) DEFAULT NULL,
  `codProfessor` int(5) DEFAULT NULL,
  KEY `codDisciplina` (`codDisciplina`),
  KEY `codProfessor` (`codProfessor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `postar`
--

DROP TABLE IF EXISTS `postar`;
CREATE TABLE IF NOT EXISTS `postar` (
  `codProfessor` int(5) DEFAULT NULL,
  `codVideo` int(5) DEFAULT NULL,
  KEY `codProfessor` (`codProfessor`),
  KEY `codVideo` (`codVideo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

DROP TABLE IF EXISTS `professor`;
CREATE TABLE IF NOT EXISTS `professor` (
  `codProfessor` int(5) NOT NULL AUTO_INCREMENT,
  `imgProfessor` varchar(180) DEFAULT NULL,
  `email` varchar(180) DEFAULT NULL,
  `miniCurrriculo` varchar(240) DEFAULT NULL,
  `institucao` varchar(180) DEFAULT NULL,
  `nomeCompleto` varchar(180) DEFAULT NULL,
  `dataNasc` date DEFAULT NULL,
  `cod_exercicio` int(5) DEFAULT NULL,
  PRIMARY KEY (`codProfessor`),
  KEY `cod_exercicio` (`cod_exercicio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `publicar`
--

DROP TABLE IF EXISTS `publicar`;
CREATE TABLE IF NOT EXISTS `publicar` (
  `codProfessor` int(5) DEFAULT NULL,
  `codArtigo` int(5) DEFAULT NULL,
  KEY `codProfessor` (`codProfessor`),
  KEY `codArtigo` (`codArtigo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video` (
  `codVideo` int(5) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(180) DEFAULT NULL,
  `descricao` varchar(240) DEFAULT NULL,
  `arquivo` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`codVideo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
