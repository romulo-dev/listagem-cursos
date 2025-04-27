CREATE DATABASE IF NOT EXISTS cursosdb;
USE cursosdb;

CREATE TABLE IF NOT EXISTS cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    area_conhecimento VARCHAR(50) NOT NULL,
    foto_url TEXT,
    favorito BOOLEAN DEFAULT FALSE
);

-- Inserção de cursos para cada área
INSERT INTO cursos (titulo, area_conhecimento, foto_url, favorito) VALUES
('API REST com Spring Boot', 'BACKEND', 'https://url-imagem-api-rest.com', false),
('Java Avançado', 'BACKEND', 'https://url-imagem-java.com', false),
('Node.js e Express', 'BACKEND', 'https://url-imagem-node.com', false),
('HTML e CSS Moderno', 'FRONTEND', 'https://url-imagem-html-css.com', false),
('Angular 19 Completo', 'FRONTEND', 'https://url-imagem-angular.com', false),
('React.js Essencial', 'FRONTEND', 'https://url-imagem-react.com', false),
('Python para Data Science', 'DATA_SCIENCE', 'https://url-imagem-python-ds.com', false),
('Machine Learning Avançado', 'DATA_SCIENCE', 'https://url-imagem-ml.com', false),
('Introdução à IA', 'DATA_SCIENCE', 'https://url-imagem-ia.com', false),
('Segurança em Redes', 'SEGURANCA_DA_INFORMACAO', 'https://url-imagem-seguranca-redes.com', false),
('Criptografia', 'SEGURANCA_DA_INFORMACAO', 'https://url-imagem-criptografia.com', false),
('Auditoria em Sistemas', 'SEGURANCA_DA_INFORMACAO', 'https://url-imagem-auditoria.com', false);
