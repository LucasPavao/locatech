CREATE TABLE veiculos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(255),
    modelo VARCHAR(255),
    placa VARCHAR(255),
    ano INT,
    cor VARCHAR(255),
    valor_diaria DECIMAL(10, 2)
);

CREATE TABLE pessoas(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    cpf VARCHAR(255),
    telefone VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE alugueis(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    pessoa_id BIGINT NOT NULL,
    veiculo_id BIGINT NOT NULL,
    data_inicio DATE,
    data_fim DATE,
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (pessoa_id) REFERENCES pessoas(id),
    FOREIGN KEY (veiculo_id) REFERENCES veiculos(id)
);

INSERT INTO veiculos (marca, modelo, placa, ano, cor, valor_diaria) VALUES
('Toyota', 'Corolla', 'ABC-1234', 2020, 'Prata', 150.00),
('Honda', 'Civic', 'DEF-5678', 2019, 'Preto', 140.00),
('Ford', 'Focus', 'GHI-9012', 2021, 'Branco', 160.00),
('Chevrolet', 'Cruze', 'JKL-3456', 2018, 'Vermelho', 130.00),
('Volkswagen', 'Golf', 'MNO-7890', 2022, 'Azul', 170.00);

INSERT INTO pessoas (nome, cpf, telefone, email) VALUES
('João Silva', '123.456.789-00', '(11) 98765-4321', 'joao@email.com'),
('Maria Santos', '987.654.321-11', '(11) 99876-5432', 'maria@email.com'),
('Pedro Oliveira', '456.789.123-22', '(11) 97654-3210', 'pedro@email.com');

INSERT INTO alugueis (pessoa_id, veiculo_id, data_inicio, data_fim, valor_total) VALUES
(1, 1, '2024-07-01', '2024-07-05', 750.00),
(1, 2, '2024-07-10', '2024-07-15', 700.00);