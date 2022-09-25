create database Almaslz;
use almaslz;
CREATE TABLE produtos (
    id_Produto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sku INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    preco_Compra DECIMAL(9 , 2 ) NOT NULL,
    preco_Venda DECIMAL(9 , 2 ) NOT NULL,
    quantidade INT NOT NULL,
    tamanho VARCHAR(2)
);
CREATE TABLE IF NOT EXISTS clientes (
    id_Cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cpf BIGINT NOT NULL,
    nome_Cliente VARCHAR(200) NOT NULL,
    email VARCHAR(200) NOT NULL
);
CREATE TABLE IF NOT EXISTS avaliacao (
    id_Avaliacao INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    nota VARCHAR(50) NOT NULL,
    data_Avaliacao DATE NOT NULL,
    comentario VARCHAR(200),
    id_Produto INT NOT NULL,
    id_Cliente INT NOT NULL,
    FOREIGN KEY (id_Produto)
        REFERENCES produtos (id_Produto),
    FOREIGN KEY (id_Cliente)
        REFERENCES Clientes (id_Cliente)
);
