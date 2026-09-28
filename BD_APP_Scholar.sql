-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04/09/2026 às 03:59
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco_escola`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno/respon`
--

CREATE TABLE `aluno/respon` (
  `id_alunos` int(11) NOT NULL,
  `id_responsaveis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `id_alunos` int(11) NOT NULL,
  `Nome` varchar(40) NOT NULL,
  `DatadNacimento` date NOT NULL,
  `CPF` varchar(14) NOT NULL,
  `Telefone` varchar(12) NOT NULL,
  `e-mail` varchar(225) NOT NULL,
  `endereço` varchar(100) NOT NULL,
  `Status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `boletins`
--

CREATE TABLE `boletins` (
  `id_boletins` int(11) NOT NULL,
  `notas` decimal(10,0) NOT NULL,
  `mediafinal` decimal(10,0) NOT NULL,
  `situacaofinal` varchar(30) NOT NULL,
  `frequencia` time NOT NULL,
  `Status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `coordenadores`
--

CREATE TABLE `coordenadores` (
  `id_coordenadores` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `CPF` varchar(14) NOT NULL,
  `formacao` varchar(150) NOT NULL,
  `e-mail` varchar(254) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `id_cursos` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `carga horaria` varchar(20) NOT NULL,
  `duracao` varchar(50) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `Status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos/disciplinas`
--

CREATE TABLE `cursos/disciplinas` (
  `id_cursos` int(11) NOT NULL,
  `id_disciplinas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `id_disciplinas` int(11) NOT NULL,
  `curso` varchar(100) NOT NULL,
  `cargahoraria` time NOT NULL,
  `professor` varchar(150) NOT NULL,
  `status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas/professores`
--

CREATE TABLE `disciplinas/professores` (
  `id_disciplinas` int(11) NOT NULL,
  `id_professores` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas/provas`
--

CREATE TABLE `disciplinas/provas` (
  `id_disciplinas` int(11) NOT NULL,
  `id_provas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `matriculas`
--

CREATE TABLE `matriculas` (
  `id_matriculas` int(11) NOT NULL,
  `data` date NOT NULL,
  `situacao` varchar(100) NOT NULL,
  `status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `matriculas/cursos`
--

CREATE TABLE `matriculas/cursos` (
  `id_matriculas` int(11) NOT NULL,
  `id_cursos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `professores`
--

CREATE TABLE `professores` (
  `id_professores` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `CPF` varchar(14) NOT NULL,
  `formacao` varchar(150) NOT NULL,
  `e-mail` int(254) NOT NULL,
  `telefone` int(20) NOT NULL,
  `status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `provas`
--

CREATE TABLE `provas` (
  `id_provas` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `data` date NOT NULL,
  `valor` decimal(10,0) NOT NULL,
  `status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `responsaveis`
--

CREATE TABLE `responsaveis` (
  `id_responsaveis` int(11) NOT NULL,
  `Nome` varchar(40) NOT NULL,
  `CPF` varchar(14) NOT NULL,
  `e-mail` varchar(225) NOT NULL,
  `Telefone` varchar(12) NOT NULL,
  `Status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `turmas`
--

CREATE TABLE `turmas` (
  `id_turmas` int(11) NOT NULL,
  `anoletivo` date NOT NULL,
  `turno` varchar(20) NOT NULL,
  `sala` varchar(50) NOT NULL,
  `status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `turmas/matriculas`
--

CREATE TABLE `turmas/matriculas` (
  `id_turmas` int(11) NOT NULL,
  `id_matriculas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluno/respon`
--
ALTER TABLE `aluno/respon`
  ADD KEY `fk_respon_aluno` (`id_alunos`);

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id_alunos`);

--
-- Índices de tabela `boletins`
--
ALTER TABLE `boletins`
  ADD PRIMARY KEY (`id_boletins`);

--
-- Índices de tabela `coordenadores`
--
ALTER TABLE `coordenadores`
  ADD PRIMARY KEY (`id_coordenadores`);

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_cursos`);

--
-- Índices de tabela `cursos/disciplinas`
--
ALTER TABLE `cursos/disciplinas`
  ADD KEY `fx_cursos_disciplinas` (`id_cursos`);

--
-- Índices de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id_disciplinas`);

--
-- Índices de tabela `disciplinas/professores`
--
ALTER TABLE `disciplinas/professores`
  ADD KEY `fx_disciplinas_professores` (`id_disciplinas`);

--
-- Índices de tabela `disciplinas/provas`
--
ALTER TABLE `disciplinas/provas`
  ADD KEY `fx_disciplinas_provas` (`id_disciplinas`);

--
-- Índices de tabela `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`id_matriculas`);

--
-- Índices de tabela `matriculas/cursos`
--
ALTER TABLE `matriculas/cursos`
  ADD KEY `fx_matriculas_cursos` (`id_matriculas`);

--
-- Índices de tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id_professores`);

--
-- Índices de tabela `provas`
--
ALTER TABLE `provas`
  ADD PRIMARY KEY (`id_provas`);

--
-- Índices de tabela `responsaveis`
--
ALTER TABLE `responsaveis`
  ADD PRIMARY KEY (`id_responsaveis`);

--
-- Índices de tabela `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`id_turmas`);

--
-- Índices de tabela `turmas/matriculas`
--
ALTER TABLE `turmas/matriculas`
  ADD KEY `fk_turmas_matriculas` (`id_turmas`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id_alunos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `boletins`
--
ALTER TABLE `boletins`
  MODIFY `id_boletins` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `coordenadores`
--
ALTER TABLE `coordenadores`
  MODIFY `id_coordenadores` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_cursos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `id_disciplinas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `id_matriculas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `professores`
--
ALTER TABLE `professores`
  MODIFY `id_professores` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `provas`
--
ALTER TABLE `provas`
  MODIFY `id_provas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `responsaveis`
--
ALTER TABLE `responsaveis`
  MODIFY `id_responsaveis` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `turmas`
--
ALTER TABLE `turmas`
  MODIFY `id_turmas` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `aluno/respon`
--
ALTER TABLE `aluno/respon`
  ADD CONSTRAINT `fk_respon_aluno` FOREIGN KEY (`id_alunos`) REFERENCES `alunos` (`id_alunos`);

--
-- Restrições para tabelas `cursos/disciplinas`
--
ALTER TABLE `cursos/disciplinas`
  ADD CONSTRAINT `fx_cursos_disciplinas` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`);

--
-- Restrições para tabelas `disciplinas/professores`
--
ALTER TABLE `disciplinas/professores`
  ADD CONSTRAINT `fx_disciplinas_professores` FOREIGN KEY (`id_disciplinas`) REFERENCES `disciplinas` (`id_disciplinas`);

--
-- Restrições para tabelas `disciplinas/provas`
--
ALTER TABLE `disciplinas/provas`
  ADD CONSTRAINT `fx_disciplinas_provas` FOREIGN KEY (`id_disciplinas`) REFERENCES `disciplinas` (`id_disciplinas`);

--
-- Restrições para tabelas `matriculas/cursos`
--
ALTER TABLE `matriculas/cursos`
  ADD CONSTRAINT `fx_matriculas_cursos` FOREIGN KEY (`id_matriculas`) REFERENCES `matriculas` (`id_matriculas`);

--
-- Restrições para tabelas `turmas/matriculas`
--
ALTER TABLE `turmas/matriculas`
  ADD CONSTRAINT `fk_turmas_matriculas` FOREIGN KEY (`id_turmas`) REFERENCES `turmas` (`id_turmas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
