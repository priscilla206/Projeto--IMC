CREATE TABLE usuarios (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  senha VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE calculos_imc (
  id INT PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT,
  peso DECIMAL(5,2) NOT NULL,
  altura DECIMAL(3,2) NOT NULL,
  imc DECIMAL(4,2) NOT NULL,
  classificacao VARCHAR(50),
  data_calculo TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

CREATE TABLE metas (
  id INT PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT,
  peso_meta DECIMAL(5,2),
  data_meta DATE,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

CREATE TABLE historico_peso (
  id INT PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT,
  peso DECIMAL(5,2),
  data_registro DATE,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);