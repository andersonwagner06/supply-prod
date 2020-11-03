-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Nov-2020 às 03:30
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `supply_prod`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `categoria_id` int(11) NOT NULL,
  `categoria_nome` varchar(45) NOT NULL,
  `categoria_ativa` tinyint(1) DEFAULT NULL,
  `categoria_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`categoria_id`, `categoria_nome`, `categoria_ativa`, `categoria_data_alteracao`) VALUES
(1, 'Chocolate', 1, '2020-10-15 23:40:22'),
(3, 'Chips', 1, '2020-10-15 23:40:29'),
(4, 'Cerveja', 1, '2020-10-27 23:38:48'),
(7, 'Batidas', 1, '2020-10-28 00:13:45'),
(8, 'Água', 1, '2020-10-28 00:13:56'),
(9, 'Refrigerante', 1, '2020-10-28 00:14:25'),
(10, 'Caninha', 1, '2020-10-28 00:14:20'),
(11, 'Vinho', 1, '2020-10-28 00:18:30'),
(12, 'Biscoito', 1, '2020-10-28 00:38:00'),
(13, 'Amendoim', 1, '2020-10-28 00:30:34'),
(14, 'Pipoteca', 1, '2020-10-28 00:30:28'),
(15, 'Wafer', 1, '2020-10-28 00:38:14'),
(16, 'Energético', 1, '2020-10-28 01:22:24'),
(17, 'Suco', 1, '2020-10-28 00:42:21'),
(18, 'Patê', 1, '2020-10-28 01:05:25'),
(19, 'Produtos de limpeza', 1, '2020-10-28 01:22:19'),
(20, 'Produtos de higiene pessoal', 1, '2020-10-28 01:22:11'),
(21, 'Utensílios de mercearia', 1, '2020-10-28 01:22:52'),
(22, 'Cigarro', 1, '2020-11-03 00:09:39'),
(23, 'Frios', 1, '2020-11-03 00:31:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `cliente_id` int(11) NOT NULL,
  `cliente_data_cadastro` timestamp NULL DEFAULT current_timestamp(),
  `cliente_tipo` tinyint(1) DEFAULT NULL,
  `cliente_nome` varchar(45) NOT NULL,
  `cliente_sobrenome` varchar(150) NOT NULL,
  `cliente_data_nascimento` date NOT NULL,
  `cliente_cpf_cnpj` varchar(20) NOT NULL,
  `cliente_rg_ie` varchar(20) NOT NULL,
  `cliente_email` varchar(50) NOT NULL,
  `cliente_telefone` varchar(20) NOT NULL,
  `cliente_celular` varchar(20) NOT NULL,
  `cliente_cep` varchar(10) NOT NULL,
  `cliente_endereco` varchar(155) NOT NULL,
  `cliente_numero_endereco` varchar(20) NOT NULL,
  `cliente_bairro` varchar(45) NOT NULL,
  `cliente_complemento` varchar(145) NOT NULL,
  `cliente_cidade` varchar(105) NOT NULL,
  `cliente_estado` varchar(2) NOT NULL,
  `cliente_ativo` tinyint(1) NOT NULL,
  `cliente_obs` tinytext DEFAULT NULL,
  `cliente_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`cliente_id`, `cliente_data_cadastro`, `cliente_tipo`, `cliente_nome`, `cliente_sobrenome`, `cliente_data_nascimento`, `cliente_cpf_cnpj`, `cliente_rg_ie`, `cliente_email`, `cliente_telefone`, `cliente_celular`, `cliente_cep`, `cliente_endereco`, `cliente_numero_endereco`, `cliente_bairro`, `cliente_complemento`, `cliente_cidade`, `cliente_estado`, `cliente_ativo`, `cliente_obs`, `cliente_data_alteracao`) VALUES
(1, '2020-03-31 21:19:50', 1, 'Caixa', 'Mercearia', '2008-07-10', '360.827.730-71', '33.563.720-6', 'moises.19.oliveira@gmail.com', '(47) 3426-5766', '(47) 99121-1813', '89205-230', 'Rua Ministro Luiz Galotti', '473', 'Boa vista', '', 'Joinville', 'SC', 1, '', '2020-11-03 01:57:20'),
(2, '2020-03-31 21:21:10', 1, 'Miriam', 'Cruz', '2020-03-31', '794.749.900-42', '47.961.669-3', 'miriam@gmail.com', '(41) 3333-3232', '(41) 98989-8989', '80530-000', 'Rua de Curitiba', '210', 'Centro', '', 'Curitiba', 'PR', 1, '', '2020-03-31 21:21:10'),
(3, '2020-03-31 21:25:15', 2, 'João', 'da Luz', '2020-03-10', '86.155.050/0001-63', '565.37836-81', 'joao@gmail.com', '(41) 3232-3232', '(41) 98888-8888', '80330-000', 'Rua de cima', '101', 'Centro', '', 'Curitiba', 'PR', 1, '', '2020-03-31 21:25:15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contas_pagar`
--

CREATE TABLE `contas_pagar` (
  `conta_pagar_id` int(11) NOT NULL,
  `conta_pagar_fornecedor_id` int(11) DEFAULT NULL,
  `conta_pagar_data_vencimento` date DEFAULT NULL,
  `conta_pagar_data_pagamento` datetime DEFAULT NULL,
  `conta_pagar_valor` varchar(15) DEFAULT NULL,
  `conta_pagar_status` tinyint(1) DEFAULT NULL,
  `conta_pagar_obs` tinytext DEFAULT NULL,
  `conta_pagar_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='		';

--
-- Extraindo dados da tabela `contas_pagar`
--

INSERT INTO `contas_pagar` (`conta_pagar_id`, `conta_pagar_fornecedor_id`, `conta_pagar_data_vencimento`, `conta_pagar_data_pagamento`, `conta_pagar_valor`, `conta_pagar_status`, `conta_pagar_obs`, `conta_pagar_data_alteracao`) VALUES
(2, 1, '2020-04-01', NULL, '1,000.00', 0, '', '2020-04-04 21:32:18'),
(3, 1, '2020-03-31', '2020-04-04 03:38:19', '1,000.00', 1, '', '2020-04-04 06:38:19'),
(4, 1, '2020-04-04', NULL, '100.00', 0, '', '2020-04-04 21:42:15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contas_receber`
--

CREATE TABLE `contas_receber` (
  `conta_receber_id` int(11) NOT NULL,
  `conta_receber_cliente_id` int(11) NOT NULL,
  `conta_receber_data_vencimento` date DEFAULT NULL,
  `conta_receber_data_pagamento` datetime DEFAULT NULL,
  `conta_receber_valor` varchar(20) DEFAULT NULL,
  `conta_receber_status` tinyint(1) DEFAULT NULL,
  `conta_receber_obs` tinytext DEFAULT NULL,
  `conta_receber_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `contas_receber`
--

INSERT INTO `contas_receber` (`conta_receber_id`, `conta_receber_cliente_id`, `conta_receber_data_vencimento`, `conta_receber_data_pagamento`, `conta_receber_valor`, `conta_receber_status`, `conta_receber_obs`, `conta_receber_data_alteracao`) VALUES
(1, 1, '2020-02-28', '2020-03-31 07:23:10', '150,226.22', 1, '', '2020-03-31 22:23:10'),
(2, 2, '2020-02-21', '2020-02-28 18:33:19', '350.00', 1, NULL, '2020-02-28 21:33:19'),
(3, 3, '2020-02-28', '2020-02-28 17:22:47', '56.00', 1, NULL, '2020-02-28 20:22:47'),
(4, 2, '2020-03-31', '2020-04-04 02:37:36', '100.00', 1, '', '2020-04-04 05:37:36'),
(5, 1, '2020-04-28', '2020-04-04 02:49:40', '1,000.00', 1, '', '2020-04-04 05:49:40'),
(6, 3, '2020-04-01', '2020-04-04 02:49:47', '5,000.00', 0, '', '2020-04-04 21:11:38'),
(7, 3, '2020-04-01', NULL, '500.00', 0, '', '2020-04-04 21:49:44');

-- --------------------------------------------------------

--
-- Estrutura da tabela `formas_pagamentos`
--

CREATE TABLE `formas_pagamentos` (
  `forma_pagamento_id` int(11) NOT NULL,
  `forma_pagamento_nome` varchar(45) DEFAULT NULL,
  `forma_pagamento_aceita_parc` tinyint(1) DEFAULT NULL,
  `forma_pagamento_ativa` tinyint(1) DEFAULT NULL,
  `forma_pagamento_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `formas_pagamentos`
--

INSERT INTO `formas_pagamentos` (`forma_pagamento_id`, `forma_pagamento_nome`, `forma_pagamento_aceita_parc`, `forma_pagamento_ativa`, `forma_pagamento_data_alteracao`) VALUES
(1, 'Cartão de crédito', 1, 1, '2020-04-01 00:57:14'),
(2, 'Dinheiro', 0, 1, '2020-01-29 21:43:54'),
(3, 'Boleto bancário', 1, 1, '2020-04-01 00:57:36'),
(4, 'Boleto', 0, 0, '2020-04-01 01:11:06'),
(5, 'Cartão de débito', 0, 1, '2020-04-01 01:11:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `fornecedor_id` int(11) NOT NULL,
  `fornecedor_data_cadastro` timestamp NULL DEFAULT current_timestamp(),
  `fornecedor_razao` varchar(200) DEFAULT NULL,
  `fornecedor_nome_fantasia` varchar(145) DEFAULT NULL,
  `fornecedor_cnpj` varchar(20) DEFAULT NULL,
  `fornecedor_ie` varchar(20) DEFAULT NULL,
  `fornecedor_telefone` varchar(20) DEFAULT NULL,
  `fornecedor_celular` varchar(20) DEFAULT NULL,
  `fornecedor_email` varchar(100) DEFAULT NULL,
  `fornecedor_contato` varchar(45) DEFAULT NULL,
  `fornecedor_cep` varchar(10) DEFAULT NULL,
  `fornecedor_endereco` varchar(145) DEFAULT NULL,
  `fornecedor_numero_endereco` varchar(20) DEFAULT NULL,
  `fornecedor_bairro` varchar(45) DEFAULT NULL,
  `fornecedor_complemento` varchar(45) DEFAULT NULL,
  `fornecedor_cidade` varchar(45) DEFAULT NULL,
  `fornecedor_estado` varchar(2) DEFAULT NULL,
  `fornecedor_ativo` tinyint(1) DEFAULT NULL,
  `fornecedor_obs` tinytext DEFAULT NULL,
  `fornecedor_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`fornecedor_id`, `fornecedor_data_cadastro`, `fornecedor_razao`, `fornecedor_nome_fantasia`, `fornecedor_cnpj`, `fornecedor_ie`, `fornecedor_telefone`, `fornecedor_celular`, `fornecedor_email`, `fornecedor_contato`, `fornecedor_cep`, `fornecedor_endereco`, `fornecedor_numero_endereco`, `fornecedor_bairro`, `fornecedor_complemento`, `fornecedor_cidade`, `fornecedor_estado`, `fornecedor_ativo`, `fornecedor_obs`, `fornecedor_data_alteracao`) VALUES
(1, '2020-03-29 06:18:03', 'VA DISTRIBUIDORA LTDA-ME', 'Venda Merc', '11.697.830/0001-36', '256176531', '(47) 3463-5747', '(47) 99999-9999', 'va@teste.com.br', 'Fulano de tal', '89231-345', 'Rua jose joao barcelos', '55', 'Jarivatuba', '', 'Joinville', 'SC', 1, '', '2020-10-27 01:13:51'),
(2, '2020-10-27 01:18:02', 'VDA MERC', 'Nestlé', '60.409.075/0117-82', '255201052', '(48) 4001-3000', '(47) 99999-9998', 'teste@nestle.com', NULL, '88103-482', 'Rua jaci schlichting de lins', '1800', 'São josé', 'Armz 1 e 2', 'São josé', 'SC', 1, '', '2020-10-27 01:24:12'),
(3, '2020-10-27 01:21:01', 'BROVALLE TABACARIA LTDA', 'BROVALLE TABACARIA LTDA', '05.984.742/0001-12', '254671675', '(47) 3345-1026', '(47) 99935-4588', 'teste@brovalle.com', NULL, '88380-000', 'Rua Santo Antonio da Platina', '211', 'Centro', '', 'Balneario Piçarras', 'SC', 1, '', '2020-10-27 01:24:18'),
(4, '2020-10-27 01:23:44', 'PEPSICO DO BRASIL LTDA', 'PEPSICO', '31.565.104/0120-00', '250633051', '(47) 3236-3100', '(47) 99935-4587', 'teste@pepsico.com', NULL, '89117-006', 'Rid ingo Hering', '4800', 'Arraial Douro', '', 'Gaspar', 'SC', 1, '', '2020-10-27 01:24:21'),
(5, '2020-10-27 01:26:11', 'DIFRISUL', 'Difrisul', '83.690.339/0002-75', '252929110', '(47) 3439-2477', '(47) 99935-4585', 'teste@difrisul.com', NULL, '89214-360', 'Rua vitoria regia', 's/n', 'São Marcos', '', 'Joinville', 'SC', 1, '', '2020-10-27 01:26:11'),
(6, '2020-10-27 01:28:22', 'DISNORTE DISTRIBUIDORA NORTE', 'DISNORTE', '15.300.786/0002-10', '260286044', '(47) 3344-8900', '(47) 9935-4582', 'teste@disnorte.com', NULL, '88307-700', 'Rua joão dalmolim', '901', 'Canhanduba', '', 'Itajai', 'SC', 1, '', '2020-10-27 01:28:22'),
(7, '2020-10-27 23:38:19', 'Bebidas Principe LTDA', 'Bebidas Principe', '85.123.993/0001-29', '252289684', '(47) 3444-4444', '(47) 99609-4097', 'teste@bebidasprincipe.com', NULL, '89217-000', 'Rua Benjamim Constant', '2455', 'Gloria', '', 'Joinville', 'SC', 1, '', '2020-10-27 23:46:14'),
(8, '2020-10-28 00:37:38', 'JGK DISTRIBUIDORA', 'JGK Distribuidora', '29.514.278/0001-69', '1017661953', '(47) 3422-0000', '(47) 99728-2900', 'teste@jgk.com', NULL, '89000-200', 'Rua Antônio Augusto do Livramento', '412', 'Espinheiros', '', 'Joinville', 'SC', 1, '', '2020-10-28 00:37:44'),
(9, '2020-10-28 00:45:21', 'SPAL INDUSTRIA BRASILEIRA DE BEBIDAS', 'SPAL COCA', '61.186.888/0175-92', '258318015', '(47) 3464-4444', '(47) 99935-4578', 'teste@coca.com', NULL, '89206-600', 'Rua noruega', '99', 'Boa vista', '', 'Joinville', 'SC', 1, '', '2020-10-28 00:45:21'),
(10, '2020-10-28 01:04:44', 'JEPRIMAR', 'Jeprimar', '80.969.488/0001-07', '251766314', '(47) 3435-2741', '(47) 99988-8855', 'teste@jeprimar.com', NULL, '89219-370', 'Rua vice prefeito luiz carlos garcia', '795', 'Costa e Silva', '', 'Joinville', 'SC', 1, '', '2020-10-28 01:04:44'),
(11, '2020-10-28 01:18:42', 'JORGE MOTTER &amp; FILHOS LTDA', 'Jorge Motter', '82.576.604/0001-45', '250077663', '(47) 3345-0900', '(47) 98877-5544', 'administracao@atacadomotter.com.br', NULL, '88200-000', 'Rua rudy bayer', '553', 'Centro', '', 'Tijucas', 'SC', 1, '', '2020-10-28 01:18:42');

-- --------------------------------------------------------

--
-- Estrutura da tabela `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'vendedor', 'Vendedor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `marcas`
--

CREATE TABLE `marcas` (
  `marca_id` int(11) NOT NULL,
  `marca_nome` varchar(45) NOT NULL,
  `marca_ativa` tinyint(1) DEFAULT NULL,
  `marca_data_alteracao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `marcas`
--

INSERT INTO `marcas` (`marca_id`, `marca_nome`, `marca_ativa`, `marca_data_alteracao`) VALUES
(1, 'Nestle', 1, '2020-10-15 23:40:00'),
(3, 'Brahma', 1, '2020-10-27 23:43:28'),
(4, 'Skol', 1, '2020-10-27 23:49:00'),
(6, 'Bebidas Joinville', 1, '2020-10-28 00:12:28'),
(7, 'Jamel', 1, '2020-10-28 00:13:06'),
(8, '51', 1, '2020-10-28 00:13:12'),
(9, 'Água da serra', 1, '2020-10-28 00:13:26'),
(10, 'Schin', 1, '2020-10-28 00:27:00'),
(11, 'Accor', 1, '2020-10-28 00:29:56'),
(12, 'Coca Cola', 1, '2020-10-28 00:42:00'),
(13, 'Excelsior', 1, '2020-10-28 01:05:06'),
(14, 'Utensílios de mercearia', 1, '2020-10-28 01:21:06'),
(15, 'Cigarro', 1, '2020-11-03 00:10:02'),
(16, 'Utensílios frios', 1, '2020-11-03 00:32:06'),
(17, 'Utensílios de limpeza', 1, '2020-11-03 00:38:38');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ordem_tem_servicos`
--

CREATE TABLE `ordem_tem_servicos` (
  `ordem_ts_id` int(11) NOT NULL,
  `ordem_ts_id_servico` int(11) DEFAULT NULL,
  `ordem_ts_id_ordem_servico` int(11) DEFAULT NULL,
  `ordem_ts_quantidade` int(11) DEFAULT NULL,
  `ordem_ts_valor_unitario` varchar(45) DEFAULT NULL,
  `ordem_ts_valor_desconto` varchar(45) DEFAULT NULL,
  `ordem_ts_valor_total` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabela de relacionamento entre as tabelas servicos e ordem_servico';

--
-- Extraindo dados da tabela `ordem_tem_servicos`
--

INSERT INTO `ordem_tem_servicos` (`ordem_ts_id`, `ordem_ts_id_servico`, `ordem_ts_id_ordem_servico`, `ordem_ts_quantidade`, `ordem_ts_valor_unitario`, `ordem_ts_valor_desconto`, `ordem_ts_valor_total`) VALUES
(2, 2, 2, 4, '80.00', '0', '320.00'),
(9, 1, 1, 1, ' 80.00', '0 ', ' 80.00'),
(11, 3, 3, 1, ' 120.00', '0 ', ' 120.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ordens_servicos`
--

CREATE TABLE `ordens_servicos` (
  `ordem_servico_id` int(11) NOT NULL,
  `ordem_servico_forma_pagamento_id` int(11) DEFAULT NULL,
  `ordem_servico_cliente_id` int(11) DEFAULT NULL,
  `ordem_servico_data_emissao` timestamp NULL DEFAULT current_timestamp(),
  `ordem_servico_data_conclusao` varchar(100) DEFAULT NULL,
  `ordem_servico_equipamento` varchar(80) DEFAULT NULL,
  `ordem_servico_marca_equipamento` varchar(80) DEFAULT NULL,
  `ordem_servico_modelo_equipamento` varchar(80) DEFAULT NULL,
  `ordem_servico_acessorios` tinytext DEFAULT NULL,
  `ordem_servico_defeito` tinytext DEFAULT NULL,
  `ordem_servico_valor_desconto` varchar(25) DEFAULT NULL,
  `ordem_servico_valor_total` varchar(25) DEFAULT NULL,
  `ordem_servico_status` tinyint(1) DEFAULT NULL,
  `ordem_servico_obs` tinytext DEFAULT NULL,
  `ordem_servico_data_alteracao` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ordens_servicos`
--

INSERT INTO `ordens_servicos` (`ordem_servico_id`, `ordem_servico_forma_pagamento_id`, `ordem_servico_cliente_id`, `ordem_servico_data_emissao`, `ordem_servico_data_conclusao`, `ordem_servico_equipamento`, `ordem_servico_marca_equipamento`, `ordem_servico_modelo_equipamento`, `ordem_servico_acessorios`, `ordem_servico_defeito`, `ordem_servico_valor_desconto`, `ordem_servico_valor_total`, `ordem_servico_status`, `ordem_servico_obs`, `ordem_servico_data_alteracao`) VALUES
(1, 1, 1, '2020-02-14 20:30:35', NULL, 'Fone de ouvido', 'Awell', 'AV1801', 'Mouse e carregador', 'Não sai aúdio no lado esquerdo', 'R$ 0.00', '80.00', 0, '', '2020-04-02 23:49:02'),
(2, 1, 2, '2020-02-14 20:48:53', NULL, 'Notebook gamer', 'Awell', 'FONE01', 'Mouse e carregador', 'Não carrega', 'R$ 0.00', '80.00', 0, '', '2020-02-17 23:51:56'),
(3, 1, 3, '2020-02-17 23:53:26', NULL, 'Notebook Sony', 'Sony', 'FONE01', 'Mouse e carregador', 'Tela trincada', 'R$ 0.00', '120.00', 0, 'Vem buscar pela manhã', '2020-02-28 22:51:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `produto_id` int(11) NOT NULL,
  `produto_codigo` varchar(45) DEFAULT NULL,
  `produto_data_cadastro` datetime DEFAULT NULL,
  `produto_categoria_id` int(11) NOT NULL,
  `produto_marca_id` int(11) NOT NULL,
  `produto_fornecedor_id` int(11) NOT NULL,
  `produto_descricao` varchar(145) DEFAULT NULL,
  `produto_unidade` varchar(25) DEFAULT NULL,
  `produto_preco_custo` varchar(45) DEFAULT NULL,
  `produto_preco_venda` varchar(45) DEFAULT NULL,
  `produto_estoque_minimo` varchar(10) DEFAULT NULL,
  `produto_qtde_estoque` varchar(10) DEFAULT NULL,
  `produto_ativo` tinyint(1) DEFAULT NULL,
  `produto_obs` tinytext DEFAULT NULL,
  `produto_data_alteracao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`produto_id`, `produto_codigo`, `produto_data_cadastro`, `produto_categoria_id`, `produto_marca_id`, `produto_fornecedor_id`, `produto_descricao`, `produto_unidade`, `produto_preco_custo`, `produto_preco_venda`, `produto_estoque_minimo`, `produto_qtde_estoque`, `produto_ativo`, `produto_obs`, `produto_data_alteracao`) VALUES
(1, '72495380', NULL, 1, 1, 1, 'Barra de chocolate', 'UN', '2,00', '5,00', '2', '9', 1, '', '2020-10-15 23:42:38'),
(2, '50412637', NULL, 3, 3, 1, 'Fandangos 90g', 'UN', '1,50', '2,00', '2', '1', 1, '', '2020-10-15 23:41:38'),
(3, '41697502', NULL, 3, 3, 1, 'Ruffles 180g', 'UN', '3,00', '5,00', '2', '10', 1, '', '2020-10-15 23:41:57'),
(4, '46359781', NULL, 4, 3, 7, 'Brahma Duplo Malte 600ML', '24', '5,60', '8,00', '12', '6', 1, '', '2020-10-27 23:55:34'),
(5, '13765294', NULL, 4, 4, 7, 'Skol garrafa 1L', '12', '5,34', '8,00', '6', '8', 1, '', '2020-10-28 00:09:16'),
(6, '89503124', NULL, 4, 3, 7, 'Brahma Chopp 1L', '24', '5,60', '9,00', '12', '3', 1, '', '2020-10-28 00:10:55'),
(7, '28196405', NULL, 7, 6, 1, 'Batida limão Joinville litro', '2L', '9,99', '14,00', '1', '2', 1, '', '2020-10-28 00:16:21'),
(8, '96587410', NULL, 7, 6, 1, 'Batida Maracuja Joinville litro', '1LT', '9,99', '14,00', '1', '0', 1, '', '2020-10-28 00:17:33'),
(9, '18542670', NULL, 11, 6, 1, 'Vinho Garrafão 4L', '4L', '12,60', '17,00', '2', '3', 1, '', '2020-10-28 00:19:34'),
(10, '58340679', NULL, 9, 9, 1, 'Refrigerante Água da Serra', '6L', '4,10', '5,50', '3', '6', 1, '', '2020-10-28 00:21:02'),
(11, '35406918', NULL, 8, 6, 1, 'Água sem Gás 1,5L', '12', '0,80', '2,50', '6', '12', 1, '', '2020-10-28 00:23:15'),
(12, '51427083', NULL, 10, 8, 1, 'Caninha 51', '2L', '7,30', '14,00', '2', '2', 1, '', '2020-10-28 00:24:26'),
(13, '64850793', NULL, 10, 7, 1, 'Caninha Jamel', '2L', '6,75', '14,00', '2', '0', 1, '', '2020-10-28 00:25:08'),
(14, '84362015', NULL, 4, 10, 7, 'Schin 1L', '12', '5,43', '7,50', '6', '3', 1, '', '2020-10-28 00:28:59'),
(15, '76138529', NULL, 12, 11, 8, 'Biscoito Tucs 100g', '12', '1,29', '1,70', '6', '12', 1, '', '2020-10-28 00:39:25'),
(16, '52813764', NULL, 14, 11, 8, 'Pipoteca 110g', '10', '1,39', '2,50', '5', '10', 1, '', '2020-10-28 00:40:38'),
(17, '57162098', NULL, 9, 12, 9, 'Coca cola 2L retornável', '18', '3,50', '8,00', '6', '13', 1, '', '2020-10-28 00:46:52'),
(18, '63924870', NULL, 9, 12, 9, 'Coca cola 200ml', '24', '0,86', '2,00', '6', '24', 1, '', '2020-10-28 00:48:16'),
(19, '64918730', NULL, 9, 12, 9, 'Coca cola 2L', '24', '5,64', '8,00', '12', '24', 1, '', '2020-10-28 00:54:00'),
(20, '90547318', NULL, 1, 1, 1, 'Guaraná Kuat', '8L', '3,27', '6,50', '4', '8', 1, '', '2020-10-28 00:57:28'),
(21, '70186294', NULL, 9, 12, 9, 'Coca cola lata sem açucar', '12', '1,70', '4,00', '4', '12', 1, '', '2020-10-28 01:01:33'),
(22, '43105298', NULL, 9, 12, 9, 'Coca cola 600ML', '12', '2,13', '5,00', '6', '12', 1, '', '2020-10-28 01:02:26'),
(23, '92187543', NULL, 18, 13, 10, 'Pate Excelsior', '14', '2,11', '3,00', '4', '14', 1, '', '2020-10-28 01:07:17'),
(24, '42691578', NULL, 19, 17, 1, 'Água sanitária QBOA 2LT', '6L', '3,99', '5,00', '3', '6', 0, '', '2020-10-28 01:28:54'),
(25, '18356097', NULL, 1, 1, 1, 'Negresco', '10', '1,76', '2,50', '5', '5', 1, '', '2020-11-03 00:01:46'),
(26, '39541687', NULL, 1, 1, 1, 'Neston', '6UN', '3,10', '10,00', '3', '6', 0, '', '2020-11-03 00:02:50'),
(27, '28659473', NULL, 12, 1, 2, 'Passatempo', '15', '1,52', '2,00', '5', '10', 1, '', '2020-11-03 00:04:04'),
(28, '74852093', NULL, 1, 1, 2, 'KIT KAT', '24', '1,97', '3,00', '10', '6', 1, '', '2020-11-03 00:06:03'),
(29, '49865312', NULL, 21, 1, 2, 'Nescau 200ML', '6UN', '1,74', '2,50', '3', '0', 1, '', '2020-11-03 00:07:40'),
(30, '94085123', NULL, 22, 15, 3, 'Cigarro Club One', '40', '4,00', '6,00', '10', '25', 1, '', '2020-11-03 00:21:22'),
(31, '67429138', NULL, 22, 15, 3, 'Cigarro WS AZUL BOX', '20', '4,40', '6,00', '10', '5', 1, '', '2020-11-03 00:22:41'),
(32, '81075629', NULL, 1, 1, 1, 'Doritos Nacho 140g', 'UN', '7,60', '8,00', '2', '3', 0, '', '2020-11-03 00:24:08'),
(33, '42839750', NULL, 3, 14, 4, 'Ruffles 145gr', 'UN', '7,60', '8,00', '2', '3', 1, '', '2020-11-03 00:25:49'),
(34, '26758934', NULL, 3, 14, 4, 'Fandangos Presunto 140gr', 'UN', '5,33', '6,00', '2', '3', 1, '', '2020-11-03 00:26:40'),
(35, '21470895', NULL, 3, 14, 4, 'Fandangos Queijo 140gr', 'UN', '5,33', '6,00', '2', '3', 1, '', '2020-11-03 00:27:49'),
(36, '45830276', NULL, 3, 14, 4, 'Cebolitos 110g', 'UN', '5,33', '6,00', '2', '3', 1, '', '2020-11-03 00:28:52'),
(37, '12487053', NULL, 3, 14, 4, 'Baconzitos 100g', 'UN', '5,33', '6,00', '2', '1', 1, '', '2020-11-03 00:29:27'),
(38, '41208973', NULL, 3, 14, 4, 'Cheetos Onda Requeijão 140g', 'UN', '5,33', '6,00', '2', '3', 1, '', '2020-11-03 00:30:15'),
(39, '87329456', NULL, 3, 14, 4, 'Cheetos Lua 140g', 'UN', '5,33', '6,00', '2', '3', 1, '', '2020-11-03 00:31:13'),
(40, '92346507', NULL, 23, 16, 5, 'Frango a passarinho 1kg', 'UN', '8,33', '11,00', '6', '4', 1, '', '2020-11-03 00:34:26'),
(41, '86190745', NULL, 23, 16, 5, 'Coxa S/Coxa 1k', 'UN', '6,68', '9,00', '9', '7', 1, '', '2020-11-03 00:36:06'),
(42, '19862574', NULL, 19, 17, 1, 'Água sanitária QBOA 1LT', 'UN', '2,11', '4,00', '6', '12', 1, '', '2020-11-03 00:40:09'),
(43, '86753194', NULL, 20, 14, 1, 'Aparelho Prestobarba Azul CHAMP', 'UN', '2,08', '3,50', '6', '24', 1, '', '2020-11-03 00:42:16'),
(44, '93605172', NULL, 20, 14, 1, 'Aparelho Probak 2', 'UN', '2,95', '4,00', '6', '12', 1, '', '2020-11-03 00:43:25'),
(45, '73608592', NULL, 12, 14, 1, 'Biscoito Trakinas Choco/Mor', 'UN', '1,66', '2,50', '3', '9', 1, '', '2020-11-03 00:44:29'),
(46, '60145879', NULL, 12, 1, 1, 'Biscoito Trakinas Choco', 'UN', '1,66', '2,50', '3', '9', 1, '', '2020-11-03 00:45:02'),
(47, '69034182', NULL, 12, 1, 1, 'Biscoito Trakinas Mor', 'UN', '1,66', '2,50', '3', '9', 1, '', '2020-11-03 00:45:29'),
(48, '25649807', NULL, 21, 14, 1, 'Café Mellita Extra Forte 500GR', 'UN', '9,79', '13,00', '5', '5', 1, '', '2020-11-03 00:47:24'),
(49, '14275368', NULL, 19, 17, 1, 'Detergente Liquido Ype Neutro', 'UN', '1,49', '2,00', '12', '24', 1, '', '2020-11-03 00:48:21'),
(50, '13240758', NULL, 19, 17, 1, 'La de Aço Bombril', 'UN', '1,25', '2,50', '7', '11', 1, '', '2020-11-03 00:52:07'),
(51, '94870523', NULL, 23, 14, 1, 'Margarina Doriana C/Sal 250g', 'UN', '2,28', '4,00', '12', '24', 1, '', '2020-11-03 00:53:22'),
(52, '12463750', NULL, 23, 14, 1, 'Margarina Qualy C/Sal 500g', 'UN', '5,96', '7,00', '6', '12', 1, '', '2020-11-03 00:55:04'),
(53, '62859104', NULL, 21, 14, 1, 'Café Pelé 500g', 'UN', '6,45', '8,00', '2', '1', 1, '', '2020-11-03 00:56:15'),
(54, '52316890', NULL, 19, 16, 1, 'Sabão em pó OMO 800g', 'UN', '7,64', '9,00', '5', '9', 1, '', '2020-11-03 00:57:03'),
(55, '52894371', NULL, 19, 17, 1, 'Amaciante Fofo 2LT', 'UN', '6,21', '8,00', '3', '1', 1, '', '2020-11-03 00:57:48'),
(56, '31784206', NULL, 19, 17, 1, 'Amaciante Comfort 500ML', 'UN', '6,36', '8,00', '3', '5', 1, '', '2020-11-03 00:58:33'),
(57, '78402365', NULL, 19, 16, 1, 'Sabão em pó Brilhante 800g', 'UN', '5,39', '7,00', '8', '14', 1, '', '2020-11-03 00:59:17'),
(58, '60971823', NULL, 21, 1, 2, 'Nescafé 50g', 'UN', '2,40', '3,80', '3', '2', 1, '', '2020-11-03 01:19:12'),
(59, '87916235', NULL, 21, 1, 2, 'Nescau 2.0 400g', 'UN', '4,80', '6,70', '2', '3', 1, '', '2020-11-03 01:24:16'),
(60, '24839567', NULL, 1, 1, 2, 'Barra de chocolate Alpino 90g', 'UN', '3,50', '4,90', '5', '5', 1, '', '2020-11-03 01:28:50'),
(61, '19267048', NULL, 21, 14, 11, 'Açucar 1KL', 'UN', '1,70', '2,90', '5', '5', 1, '', '2020-11-03 01:29:31'),
(62, '92483170', NULL, 1, 1, 11, 'Barra de chocolate Galak 90g', 'UN', '3,70', '4,90', '5', '5', 1, '', '2020-11-03 01:30:43');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `servico_id` int(11) NOT NULL,
  `servico_nome` varchar(145) DEFAULT NULL,
  `servico_preco` varchar(15) DEFAULT NULL,
  `servico_descricao` tinytext DEFAULT NULL,
  `servico_ativo` tinyint(1) DEFAULT NULL,
  `servico_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`servico_id`, `servico_nome`, `servico_preco`, `servico_descricao`, `servico_ativo`, `servico_data_alteracao`) VALUES
(1, 'Limpeza geral', '50,00', 'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem', 1, '2020-03-30 04:06:07'),
(2, 'Solda elétrica', '80,00', 'Solda elétrica', 1, '2020-04-02 00:21:57'),
(3, 'Restauração de componentes', '1.200,00', 'Restauração de componentes', 1, '2020-04-02 21:31:51');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sistema`
--

CREATE TABLE `sistema` (
  `sistema_id` int(11) NOT NULL,
  `sistema_razao_social` varchar(145) DEFAULT NULL,
  `sistema_nome_fantasia` varchar(145) DEFAULT NULL,
  `sistema_cnpj` varchar(25) DEFAULT NULL,
  `sistema_ie` varchar(25) DEFAULT NULL,
  `sistema_telefone_fixo` varchar(25) DEFAULT NULL,
  `sistema_telefone_movel` varchar(25) NOT NULL,
  `sistema_email` varchar(100) DEFAULT NULL,
  `sistema_site_url` varchar(100) DEFAULT NULL,
  `sistema_cep` varchar(25) DEFAULT NULL,
  `sistema_endereco` varchar(145) DEFAULT NULL,
  `sistema_numero` varchar(25) DEFAULT NULL,
  `sistema_cidade` varchar(45) DEFAULT NULL,
  `sistema_estado` varchar(2) DEFAULT NULL,
  `sistema_txt_ordem_servico` tinytext DEFAULT NULL,
  `sistema_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sistema`
--

INSERT INTO `sistema` (`sistema_id`, `sistema_razao_social`, `sistema_nome_fantasia`, `sistema_cnpj`, `sistema_ie`, `sistema_telefone_fixo`, `sistema_telefone_movel`, `sistema_email`, `sistema_site_url`, `sistema_cep`, `sistema_endereco`, `sistema_numero`, `sistema_cidade`, `sistema_estado`, `sistema_txt_ordem_servico`, `sistema_data_alteracao`) VALUES
(1, 'Mercado Pan Per Voi LTDA ME', 'Mercearia Alves', '00.176.184/0001-45', '252929110', '(47) 3426-5766', '(47) 99121-1813', 'moises.19.oliveira@gmail.com', 'http://localhost/supply', '89205-230', 'Rua ministro luiz galotti', '437', 'Joinville', 'SC', 'Mercearia', '2020-10-27 01:09:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$/K3QCw2uqSlYxvkh1g3lzeA2P6S4aye105JYlv/Qz3.iXHRCxF4fy', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1604360853, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(3, '::1', 'mercearia_alves', '$2y$12$BAWl4K9ojX1vPeIxNMOY9eRegABGwbAWha4JyL5kPhTzp0iN.xqcu', 'moises.19.oliveira@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1603760638, 1604368566, 1, 'Mercearia', 'Alves', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(10, 1, 1),
(21, 3, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `venda_id` int(11) NOT NULL,
  `venda_cliente_id` int(11) DEFAULT NULL,
  `venda_forma_pagamento_id` int(11) DEFAULT NULL,
  `venda_vendedor_id` int(11) DEFAULT NULL,
  `venda_tipo` tinyint(1) DEFAULT NULL,
  `venda_data_emissao` timestamp NULL DEFAULT current_timestamp(),
  `venda_valor_desconto` varchar(25) DEFAULT NULL,
  `venda_valor_total` varchar(25) DEFAULT NULL,
  `venda_data_alteracao` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`venda_id`, `venda_cliente_id`, `venda_forma_pagamento_id`, `venda_vendedor_id`, `venda_tipo`, `venda_data_emissao`, `venda_valor_desconto`, `venda_valor_total`, `venda_data_alteracao`) VALUES
(6, 1, 2, 1, 1, '2020-11-03 01:26:56', 'R$ 0.00', '94.50', NULL),
(7, 1, 2, 1, 1, '2020-11-03 01:31:33', 'R$ 0.00', '83.10', NULL),
(8, 1, 2, 1, 1, '2020-11-03 01:32:34', 'R$ 0.00', '23.00', NULL),
(9, 1, 2, 1, 1, '2020-11-03 01:33:21', 'R$ 0.00', '138.00', NULL),
(10, 1, 2, 1, 1, '2020-11-03 01:34:34', 'R$ 0.00', '57.50', NULL),
(11, 1, 2, 1, 1, '2020-11-03 01:36:16', 'R$ 0.00', '26.00', NULL),
(12, 1, 2, 1, 1, '2020-11-03 01:43:35', 'R$ 0.00', '66.00', NULL),
(13, 1, 2, 1, 1, '2020-11-03 01:44:37', 'R$ 0.00', '37.00', NULL),
(14, 1, 2, 1, 1, '2020-11-03 01:45:17', 'R$ 0.00', '46.00', NULL),
(15, 1, 2, 1, 1, '2020-11-03 01:46:07', 'R$ 0.00', '49.00', NULL),
(16, 1, 2, 1, 1, '2020-11-03 01:47:31', 'R$ 0.00', '258.00', NULL),
(17, 1, 2, 1, 1, '2020-11-03 01:48:46', 'R$ 0.00', '45.00', NULL),
(18, 1, 2, 1, 1, '2020-11-03 02:00:59', 'R$ 0.00', '90.00', NULL),
(19, 1, 2, 1, 1, '2020-11-03 02:01:32', 'R$ 0.00', '117.00', NULL),
(20, 1, 2, 1, 1, '2020-11-03 02:02:45', 'R$ 0.00', '59.00', NULL),
(21, 2, 2, 1, 1, '2020-11-03 02:03:56', 'R$ 0.00', '94.50', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda_produtos`
--

CREATE TABLE `venda_produtos` (
  `id_venda_produtos` int(11) NOT NULL,
  `venda_produto_id_venda` int(11) DEFAULT NULL,
  `venda_produto_id_produto` int(11) DEFAULT NULL,
  `venda_produto_quantidade` varchar(15) DEFAULT NULL,
  `venda_produto_valor_unitario` varchar(20) DEFAULT NULL,
  `venda_produto_desconto` varchar(10) DEFAULT NULL,
  `venda_produto_valor_total` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `venda_produtos`
--

INSERT INTO `venda_produtos` (`id_venda_produtos`, `venda_produto_id_venda`, `venda_produto_id_produto`, `venda_produto_quantidade`, `venda_produto_valor_unitario`, `venda_produto_desconto`, `venda_produto_valor_total`) VALUES
(92, 6, 58, '2', ' 3.80', '0 ', ' 7.60'),
(93, 6, 27, '5', ' 2.00', '0 ', ' 10.00'),
(94, 6, 59, '2', ' 6.70', '0 ', ' 13.40'),
(95, 6, 25, '5', ' 2.50', '0 ', ' 12.50'),
(96, 6, 28, '12', ' 3.00', '0 ', ' 36.00'),
(97, 6, 29, '6', ' 2.50', '0 ', ' 15.00'),
(98, 7, 60, '7', ' 4.90', '0 ', ' 34.30'),
(99, 7, 62, '7', ' 4.90', '0 ', ' 34.30'),
(100, 7, 61, '5', ' 2.90', '0 ', ' 14.50'),
(101, 8, 57, '2', ' 7.00', '0 ', ' 14.00'),
(102, 8, 54, '1', ' 9.00', '0 ', ' 9.00'),
(103, 9, 40, '6', ' 11.00', '0 ', ' 66.00'),
(104, 9, 41, '8', ' 9.00', '0 ', ' 72.00'),
(105, 10, 48, '3', ' 13.00', '0 ', ' 39.00'),
(106, 10, 50, '1', ' 2.50', '0 ', ' 2.50'),
(107, 10, 55, '2', ' 8.00', '0 ', ' 16.00'),
(108, 11, 2, '1', ' 2.00', '0 ', ' 2.00'),
(109, 11, 37, '1', ' 6.00', '0 ', ' 6.00'),
(110, 11, 28, '6', ' 3.00', '0 ', ' 18.00'),
(111, 12, 37, '1', ' 6.00', '0 ', ' 6.00'),
(112, 12, 30, '5', ' 6.00', '0 ', ' 30.00'),
(113, 12, 31, '5', ' 6.00', '0 ', ' 30.00'),
(114, 13, 55, '3', ' 8.00', '0 ', ' 24.00'),
(115, 13, 56, '1', ' 8.00', '0 ', ' 8.00'),
(116, 13, 50, '2', ' 2.50', '0 ', ' 5.00'),
(117, 14, 53, '4', ' 8.00', '0 ', ' 32.00'),
(118, 14, 13, '1', ' 14.00', '0 ', ' 14.00'),
(119, 15, 40, '2', ' 11.00', '0 ', ' 22.00'),
(120, 15, 41, '3', ' 9.00', '0 ', ' 27.00'),
(121, 16, 30, '10', ' 6.00', '0 ', ' 60.00'),
(122, 16, 31, '10', ' 6.00', '0 ', ' 60.00'),
(123, 16, 4, '10', ' 8.00', '0 ', ' 80.00'),
(124, 16, 17, '5', ' 8.00', '0 ', ' 40.00'),
(125, 16, 6, '2', ' 9.00', '0 ', ' 18.00'),
(126, 17, 9, '1', ' 17.00', '0 ', ' 17.00'),
(127, 17, 8, '1', ' 14.00', '0 ', ' 14.00'),
(128, 17, 13, '1', ' 14.00', '0 ', ' 14.00'),
(129, 18, 4, '4', ' 8.00', '0 ', ' 32.00'),
(130, 18, 5, '4', ' 8.00', '0 ', ' 32.00'),
(131, 18, 48, '2', ' 13.00', '0 ', ' 26.00'),
(132, 19, 6, '8', ' 9.00', '0 ', ' 72.00'),
(133, 19, 14, '6', ' 7.50', '0 ', ' 45.00'),
(134, 20, 4, '4', ' 8.00', '0 ', ' 32.00'),
(135, 20, 6, '3', ' 9.00', '0 ', ' 27.00'),
(136, 21, 14, '3', ' 7.50', '0 ', ' 22.50'),
(137, 21, 6, '8', ' 9.00', '0 ', ' 72.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedores`
--

CREATE TABLE `vendedores` (
  `vendedor_id` int(11) NOT NULL,
  `vendedor_codigo` varchar(10) NOT NULL,
  `vendedor_data_cadastro` timestamp NULL DEFAULT current_timestamp(),
  `vendedor_nome_completo` varchar(145) NOT NULL,
  `vendedor_cpf` varchar(25) NOT NULL,
  `vendedor_rg` varchar(25) NOT NULL,
  `vendedor_telefone` varchar(20) DEFAULT NULL,
  `vendedor_celular` varchar(20) DEFAULT NULL,
  `vendedor_email` varchar(45) DEFAULT NULL,
  `vendedor_cep` varchar(15) DEFAULT NULL,
  `vendedor_endereco` varchar(45) DEFAULT NULL,
  `vendedor_numero_endereco` varchar(25) DEFAULT NULL,
  `vendedor_complemento` varchar(45) DEFAULT NULL,
  `vendedor_bairro` varchar(45) DEFAULT NULL,
  `vendedor_cidade` varchar(45) DEFAULT NULL,
  `vendedor_estado` varchar(2) DEFAULT NULL,
  `vendedor_ativo` tinyint(1) DEFAULT NULL,
  `vendedor_obs` tinytext DEFAULT NULL,
  `vendedor_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vendedores`
--

INSERT INTO `vendedores` (`vendedor_id`, `vendedor_codigo`, `vendedor_data_cadastro`, `vendedor_nome_completo`, `vendedor_cpf`, `vendedor_rg`, `vendedor_telefone`, `vendedor_celular`, `vendedor_email`, `vendedor_cep`, `vendedor_endereco`, `vendedor_numero_endereco`, `vendedor_complemento`, `vendedor_bairro`, `vendedor_cidade`, `vendedor_estado`, `vendedor_ativo`, `vendedor_obs`, `vendedor_data_alteracao`) VALUES
(1, '09842571', '2020-01-28 01:24:17', 'Moises de Oliveira Alves', '056.730.329-27', '36.803.319-3', '(47) 3426-5777', '(41) 99999-9999', 'moises.19.oliveira@gmail.com', '89305-230', 'Rua Ministro Luiz Galotti', '473', '', 'Centro', 'Joinville', 'SC', 1, '', '2020-11-03 01:59:03');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Índices para tabela `contas_pagar`
--
ALTER TABLE `contas_pagar`
  ADD PRIMARY KEY (`conta_pagar_id`),
  ADD KEY `fk_conta_pagar_id_fornecedor` (`conta_pagar_fornecedor_id`);

--
-- Índices para tabela `contas_receber`
--
ALTER TABLE `contas_receber`
  ADD PRIMARY KEY (`conta_receber_id`),
  ADD KEY `fk_conta_receber_id_cliente` (`conta_receber_cliente_id`);

--
-- Índices para tabela `formas_pagamentos`
--
ALTER TABLE `formas_pagamentos`
  ADD PRIMARY KEY (`forma_pagamento_id`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`fornecedor_id`);

--
-- Índices para tabela `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`marca_id`);

--
-- Índices para tabela `ordem_tem_servicos`
--
ALTER TABLE `ordem_tem_servicos`
  ADD PRIMARY KEY (`ordem_ts_id`),
  ADD KEY `fk_ordem_ts_id_servico` (`ordem_ts_id_servico`),
  ADD KEY `fk_ordem_ts_id_ordem_servico` (`ordem_ts_id_ordem_servico`);

--
-- Índices para tabela `ordens_servicos`
--
ALTER TABLE `ordens_servicos`
  ADD PRIMARY KEY (`ordem_servico_id`),
  ADD KEY `fk_ordem_servico_id_cliente` (`ordem_servico_cliente_id`),
  ADD KEY `fk_ordem_servico_id_forma_pagto` (`ordem_servico_forma_pagamento_id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`produto_id`),
  ADD KEY `produto_categoria_id` (`produto_categoria_id`,`produto_marca_id`,`produto_fornecedor_id`),
  ADD KEY `fk_produto_marca_id` (`produto_marca_id`),
  ADD KEY `fk_produto_forncedor_id` (`produto_fornecedor_id`);

--
-- Índices para tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`servico_id`);

--
-- Índices para tabela `sistema`
--
ALTER TABLE `sistema`
  ADD PRIMARY KEY (`sistema_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Índices para tabela `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`venda_id`),
  ADD KEY `fk_venda_cliente_id` (`venda_cliente_id`),
  ADD KEY `fk_venda_forma_pagto_id` (`venda_forma_pagamento_id`),
  ADD KEY `fk_venda_vendedor_id` (`venda_vendedor_id`);

--
-- Índices para tabela `venda_produtos`
--
ALTER TABLE `venda_produtos`
  ADD PRIMARY KEY (`id_venda_produtos`),
  ADD KEY `fk_venda_produtos_id_produto` (`venda_produto_id_produto`),
  ADD KEY `fk_venda_produtos_id_venda` (`venda_produto_id_venda`);

--
-- Índices para tabela `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`vendedor_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `categoria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cliente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `contas_pagar`
--
ALTER TABLE `contas_pagar`
  MODIFY `conta_pagar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `contas_receber`
--
ALTER TABLE `contas_receber`
  MODIFY `conta_receber_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `formas_pagamentos`
--
ALTER TABLE `formas_pagamentos`
  MODIFY `forma_pagamento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `fornecedor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `marcas`
--
ALTER TABLE `marcas`
  MODIFY `marca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `ordem_tem_servicos`
--
ALTER TABLE `ordem_tem_servicos`
  MODIFY `ordem_ts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `ordens_servicos`
--
ALTER TABLE `ordens_servicos`
  MODIFY `ordem_servico_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `produto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `servico_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `sistema`
--
ALTER TABLE `sistema`
  MODIFY `sistema_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `venda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `venda_produtos`
--
ALTER TABLE `venda_produtos`
  MODIFY `id_venda_produtos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT de tabela `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `vendedor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `contas_pagar`
--
ALTER TABLE `contas_pagar`
  ADD CONSTRAINT `fk_conta_pagar_id_fornecedor` FOREIGN KEY (`conta_pagar_fornecedor_id`) REFERENCES `fornecedores` (`fornecedor_id`);

--
-- Limitadores para a tabela `contas_receber`
--
ALTER TABLE `contas_receber`
  ADD CONSTRAINT `fk_conta_receber_id_cliente` FOREIGN KEY (`conta_receber_cliente_id`) REFERENCES `clientes` (`cliente_id`);

--
-- Limitadores para a tabela `ordem_tem_servicos`
--
ALTER TABLE `ordem_tem_servicos`
  ADD CONSTRAINT `fk_ordem_ts_id_ordem_servico` FOREIGN KEY (`ordem_ts_id_ordem_servico`) REFERENCES `ordens_servicos` (`ordem_servico_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ordem_ts_id_servico` FOREIGN KEY (`ordem_ts_id_servico`) REFERENCES `servicos` (`servico_id`);

--
-- Limitadores para a tabela `ordens_servicos`
--
ALTER TABLE `ordens_servicos`
  ADD CONSTRAINT `fk_ordem_servico_id_cliente` FOREIGN KEY (`ordem_servico_cliente_id`) REFERENCES `clientes` (`cliente_id`),
  ADD CONSTRAINT `fk_ordem_servico_id_forma_pagto` FOREIGN KEY (`ordem_servico_forma_pagamento_id`) REFERENCES `formas_pagamentos` (`forma_pagamento_id`);

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `fk_produto_cat_id` FOREIGN KEY (`produto_categoria_id`) REFERENCES `categorias` (`categoria_id`),
  ADD CONSTRAINT `fk_produto_forncedor_id` FOREIGN KEY (`produto_fornecedor_id`) REFERENCES `fornecedores` (`fornecedor_id`),
  ADD CONSTRAINT `fk_produto_marca_id` FOREIGN KEY (`produto_marca_id`) REFERENCES `marcas` (`marca_id`);

--
-- Limitadores para a tabela `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `fk_venda_cliente_id` FOREIGN KEY (`venda_cliente_id`) REFERENCES `clientes` (`cliente_id`),
  ADD CONSTRAINT `fk_venda_forma_pagto_id` FOREIGN KEY (`venda_forma_pagamento_id`) REFERENCES `formas_pagamentos` (`forma_pagamento_id`),
  ADD CONSTRAINT `fk_venda_vendedor_id` FOREIGN KEY (`venda_vendedor_id`) REFERENCES `vendedores` (`vendedor_id`);

--
-- Limitadores para a tabela `venda_produtos`
--
ALTER TABLE `venda_produtos`
  ADD CONSTRAINT `fk_venda_produtos_id_produto` FOREIGN KEY (`venda_produto_id_produto`) REFERENCES `produtos` (`produto_id`),
  ADD CONSTRAINT `fk_venda_produtos_id_venda` FOREIGN KEY (`venda_produto_id_venda`) REFERENCES `vendas` (`venda_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
