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
-- Cursos de BACKEND
INSERT INTO cursos (titulo, area_conhecimento, foto_url, favorito) VALUES
('API REST com Spring Boot', 'BACKEND', 'https://images.unsplash.com/photo-1566496818-e890b31e4872', false),
('Java Avançado', 'BACKEND', 'https://images.unsplash.com/photo-1504674900247-0877df9cc7d6', false),
('Node.js e Express', 'BACKEND', 'https://images.unsplash.com/photo-1521747116042-5f9c6e0a31d4', false),
('Microsserviços com Spring Cloud', 'BACKEND', 'https://images.unsplash.com/photo-1501594907357-d31e0c944b39', false),
('Kotlin para Back-end', 'BACKEND', 'https://images.unsplash.com/photo-1589407454978-133eb7e3a520', false),
('Segurança em APIs REST', 'BACKEND', 'https://images.unsplash.com/photo-1579281073807-11cb6ab2e3fa', false),
('Banco de Dados PostgreSQL', 'BACKEND', 'https://images.unsplash.com/photo-1526944582312-8b7e317e1fba', false);

-- Cursos de FRONTEND
INSERT INTO cursos (titulo, area_conhecimento, foto_url, favorito) VALUES
('HTML e CSS Moderno', 'FRONTEND', 'https://images.unsplash.com/photo-1541561339-b0f8081335da', false),
('Angular 19 Completo', 'FRONTEND', 'https://images.unsplash.com/photo-1617951525310-346bfa9ff9ea', false),
('React.js Essencial', 'FRONTEND', 'https://images.unsplash.com/photo-1535153991422-071e24dbcfed', false),
('Vue.js para Iniciantes', 'FRONTEND', 'https://images.unsplash.com/photo-1522202176988-0eae0ecd285e', false),
('Design Responsivo com Bootstrap', 'FRONTEND', 'https://images.unsplash.com/photo-1499338872044-74c7e62db157', false),
('CSS Grid e Flexbox', 'FRONTEND', 'https://images.unsplash.com/photo-1529149390420-9f23fbcf5594', false);

-- Cursos de DATA_SCIENCE
INSERT INTO cursos (titulo, area_conhecimento, foto_url, favorito) VALUES
('Python para Data Science', 'DATA_SCIENCE', 'https://images.unsplash.com/photo-1508203591511-1d7294d93e90', false),
('Machine Learning Avançado', 'DATA_SCIENCE', 'https://images.unsplash.com/photo-1532635063-004d2e3ed0e4', false),
('Introdução à IA', 'DATA_SCIENCE', 'https://images.unsplash.com/photo-1519681393-5b4f4bcfb732', false),
('Análise Preditiva com R', 'DATA_SCIENCE', 'https://images.unsplash.com/photo-1581186334676-f6b8658f557f', false),
('Deep Learning com TensorFlow', 'DATA_SCIENCE', 'https://images.unsplash.com/photo-1517265993459-8fcf4d5a0a7b', false);

-- Cursos de SEGURANCA_DA_INFORMACAO
INSERT INTO cursos (titulo, area_conhecimento, foto_url, favorito) VALUES
('Segurança em Redes', 'SEGURANCA_DA_INFORMACAO', 'https://images.unsplash.com/photo-1599423392543-b4b08c0970d7', false),
('Criptografia', 'SEGURANCA_DA_INFORMACAO', 'https://images.unsplash.com/photo-1536754760241-c0c0714d857b', false),
('Auditoria em Sistemas', 'SEGURANCA_DA_INFORMACAO', 'https://images.unsplash.com/photo-1531146170559-98ba1be835e9', false),
('Análise de Vulnerabilidades', 'SEGURANCA_DA_INFORMACAO', 'https://images.unsplash.com/photo-1523584113003-d0367cd590c7', false),
('Firewall e Proteção de Redes', 'SEGURANCA_DA_INFORMACAO', 'https://images.unsplash.com/photo-1518770660439-dce3b8f0cb26', false);













