-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16-Abr-2018 às 19:45
-- Versão do servidor: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java_pessoafisica`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoafisica`
--

CREATE TABLE `pessoafisica` (
  `nome` varchar(150) NOT NULL,
  `endereco` varchar(150) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `sexo` set('F','M') NOT NULL,
  `cidade` varchar(80) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `telefone` varchar(14) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `rg` varchar(13) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoafisica`
--

INSERT INTO `pessoafisica` (`nome`, `endereco`, `bairro`, `cep`, `sexo`, `cidade`, `estado`, `telefone`, `celular`, `rg`, `cpf`, `id`) VALUES
('Lucas', 'Rua Guaraitá', 'São Miguel Pta', '11111-111', 'M', 'São Paulo', 'SP', '(11)1111-1111', '(11)11111-1111', '11.111.111-1', '111.111.111-11', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pessoafisica`
--
ALTER TABLE `pessoafisica`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pessoafisica`
--
ALTER TABLE `pessoafisica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
