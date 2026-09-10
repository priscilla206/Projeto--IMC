INSERT INTO usuarios (nome, email) VALUES ('Priscilla', 'priscilla@teste.com');
INSERT INTO calculos_imc (usuario_id, peso, altura, imc, classificacao) VALUES (1, 70.5, 1.65, 25.9, 'Sobrepeso');
INSERT INTO metas (usuario_id, peso_meta) VALUES (1, 65.0);
INSERT INTO historico_peso (usuario_id, peso, data_registro) VALUES (1, 70.5, '2026-09-09');