CREATE TABLE [Categoria] (
	id bigint NOT NULL,
	Alimentos boolean NOT NULL,
	Roupas boolean NOT NULL,
  CONSTRAINT [PK_CATEGORIA] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Produto] (
	id bigint NOT NULL,
	Nome varchar(255) NOT NULL,
	Descricao varchar(500) NOT NULL,
	Quantidade int NOT NULL,
	OpcaoDoacao varchar(500) NOT NULL,
	CategoriaId bigint NOT NULL,
	UsuarioId bigint NOT NULL,
  CONSTRAINT [PK_PRODUTO] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Usuario] (
	id bigint NOT NULL,
	Nome varchar(255) NOT NULL,
	Usuario varchar(255) NOT NULL,
	Senha varchar(255) NOT NULL,
	Foto varchar(5000) NOT NULL,
  CONSTRAINT [PK_USUARIO] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Categorias] (
	id bigint NOT NULL,
	Tipo varchar(255) NOT NULL,
  CONSTRAINT [PK_CATEGORIAS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO

ALTER TABLE [Produto] WITH CHECK ADD CONSTRAINT [Produto_fk0] FOREIGN KEY ([CategoriaId]) REFERENCES [Categoria]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [Produto] CHECK CONSTRAINT [Produto_fk0]
GO
ALTER TABLE [Produto] WITH CHECK ADD CONSTRAINT [Produto_fk1] FOREIGN KEY ([UsuarioId]) REFERENCES [Usuario]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [Produto] CHECK CONSTRAINT [Produto_fk1]
GO



