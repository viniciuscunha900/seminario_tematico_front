CREATE TABLE `endereco` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `cep` int NOT NULL COMMENT 'Deve ser validado pela API do governo',
  `cidade` varchar(255) NOT NULL,
  `pais` varchar(255) NOT NULL,
  `rua` varchar(255) NOT NULL,
  `logradouro` varchar(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `membro` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `criado_em` TIMESTAMP NOT NULL DEFAULT (now()),
  `endereco_id` int,
  `cpf` varchar(255) UNIQUE NOT NULL COMMENT 'Deve ser validado pela API do governo',
  `senha` varchar(255) NOT NULL,
  FOREIGN KEY (endereco_id) REFERENCES endereco(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `editora` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `autor` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `categoria` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `livro` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `adicionado_em` TIMESTAMP NOT NULL DEFAULT (now()),
  `publicado_em` TIMESTAMP NOT NULL,
  `categoria_id` int NOT NULL,
  `editora_id` int NOT NULL,
  `autor_id` int NOT NULL,
  FOREIGN KEY (categoria_id) REFERENCES categoria(id),
  FOREIGN KEY (editora_id) REFERENCES editora(id),
  FOREIGN KEY (autor_id) REFERENCES autor(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `livro_por_categoria` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `livro_id` int NOT NULL,
  `categoria_id` int NOT NULL,
  FOREIGN KEY (livro_id) REFERENCES livro(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `exemplar` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `livro_id` int,
  `status` ENUM ('ALUGADO', 'PERDIDO', 'DISPONIVEL'),
  `data_emprestimo` TIMESTAMP,
  `data_entrega` TIMESTAMP,
  `prazo` int,
  FOREIGN KEY (livro_id) REFERENCES livro(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `emprestimo` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `exemplar_id` int,
  `livro_id` int,
  `data_emprestimo` TIMESTAMP,
  FOREIGN KEY (livro_id) REFERENCES livro(id),
  FOREIGN KEY (exemplar_id) REFERENCES exemplar(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `emprestimo_por_membro` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `emprestimo_id` int,
  `membro_id` int,
  FOREIGN KEY (emprestimo_id) REFERENCES emprestimo(id),
  FOREIGN KEY (membro_id) REFERENCES membro(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE INDEX `membro_index_0` ON `membro` (`nome`);

CREATE INDEX `livro_por_categoria_index_1` ON `livro_por_categoria` (`livro_id`);

CREATE INDEX `livro_por_categoria_index_2` ON `livro_por_categoria` (`categoria_id`);

CREATE INDEX `emprestimo_index_3` ON `emprestimo` (`exemplar_id`, `livro_id`);

CREATE INDEX `emprestimo_por_membro_index_4` ON `emprestimo_por_membro` (`membro_id`);

CREATE INDEX `emprestimo_por_membro_index_5` ON `emprestimo_por_membro` (`emprestimo_id`);

CREATE INDEX `emprestimo_por_membro_index_6` ON `emprestimo_por_membro` (`membro_id`, `emprestimo_id`);

CREATE INDEX `livro_index_7` ON `livro` (`nome`);

CREATE INDEX `livro_index_8` ON `livro` (`autor_id`);

CREATE INDEX `livro_index_9` ON `livro` (`categoria_id`);

CREATE INDEX `livro_index_10` ON `livro` (`autor_id`, `categoria_id`);

CREATE INDEX `autor_index_11` ON `autor` (`nome`);