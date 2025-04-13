-- Inserindo 10 usuários no banco de dados com senha criptografada
-- Use o BCrypt para gerar senhas reais criptografadas ou use o exemplo abaixo

INSERT INTO usuario (email, senha) VALUES 
  ('usuario1@exemplo.com', '$2a$10$U5dT..F6Cpd8uOk5jmLgQe/nJvXK8J5t9Qzy.bhslw0lgsWlX1F7K'),  -- senha: senha123
  ('usuario2@exemplo.com', '$2a$10$U5dT..F6Cpd8uOk5jmLgQe/nJvXK8J5t9Qzy.bhslw0lgsWlX1F7K'),  -- senha: senha123
  ('usuario3@exemplo.com', '$2a$10$U5dT..F6Cpd8uOk5jmLgQe/nJvXK8J5t9Qzy.bhslw0lgsWlX1F7K'),  -- senha: senha123
  ('usuario4@exemplo.com', '$2a$10$U5dT..F6Cpd8uOk5jmLgQe/nJvXK8J5t9Qzy.bhslw0lgsWlX1F7K'),  -- senha: senha123
  ('usuario5@exemplo.com', '$2a$10$U5dT..F6Cpd8uOk5jmLgQe/nJvXK8J5t9Qzy.bhslw0lgsWlX1F7K'),  -- senha: senha123
  ('usuario6@exemplo.com', '$2a$10$U5dT..F6Cpd8uOk5jmLgQe/nJvXK8J5t9Qzy.bhslw0lgsWlX1F7K'),  -- senha: senha123
  ('usuario7@exemplo.com', '$2a$10$U5dT..F6Cpd8uOk5jmLgQe/nJvXK8J5t9Qzy.bhslw0lgsWlX1F7K'),  -- senha: senha123
  ('usuario8@exemplo.com', '$2a$10$U5dT..F6Cpd8uOk5jmLgQe/nJvXK8J5t9Qzy.bhslw0lgsWlX1F7K'),  -- senha: senha123
  ('usuario9@exemplo.com', '$2a$10$U5dT..F6Cpd8uOk5jmLgQe/nJvXK8J5t9Qzy.bhslw0lgsWlX1F7K'),  -- senha: senha123
  ('usuario10@exemplo.com', '$2a$10$U5dT..F6Cpd8uOk5jmLgQe/nJvXK8J5t9Qzy.bhslw0lgsWlX1F7K'); -- senha: senha123

-- Inserindo 10 espaços
INSERT INTO espaco (nome, capacidade, descricao) VALUES 
  ('Sala de Reuniões 1', 10, 'Espaço para reuniões pequenas'),
  ('Sala de Reuniões 2', 15, 'Espaço para reuniões médias'),
  ('Auditório Principal', 200, 'Espaço para grandes eventos'),
  ('Sala de Treinamento 1', 20, 'Espaço para treinamentos e workshops'),
  ('Sala de Treinamento 2', 25, 'Espaço para treinamentos e workshops'),
  ('Sala VIP', 5, 'Espaço exclusivo para convidados'),
  ('Espaço Aberto', 50, 'Espaço ao ar livre para eventos corporativos'),
  ('Sala de Conferência', 30, 'Espaço para conferências e seminários'),
  ('Sala de Reuniões 3', 8, 'Espaço para reuniões pequenas e brainstorming'),
  ('Espaço Multimídia', 40, 'Espaço equipado com tecnologia para apresentações');

-- Inserindo 10 reservas
INSERT INTO reserva (data, espaco_id, usuario_id) VALUES 
  ('2025-04-20', 1, 1),
  ('2025-04-21', 2, 2),
  ('2025-04-22', 3, 3),
  ('2025-04-23', 4, 4),
  ('2025-04-24', 5, 5),
  ('2025-04-25', 6, 6),
  ('2025-04-26', 7, 7),
  ('2025-04-27', 8, 8),
  ('2025-04-28', 9, 9),
  ('2025-04-29', 10, 10);
