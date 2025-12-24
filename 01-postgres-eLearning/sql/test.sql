--DML

--usuarios
INSERT INTO users (name, email)
VALUES
('Ana', 'ana@test.com'),
('Luis', 'luis@test.com');

--cursos
INSERT INTO courses (title, descriptcion)
VALUES
('PostgreSQL', 'Curso de PostgreSQL'),
('SQL Básico', 'Introducción a SQL');

-- lecciones
INSERT INTO lessons (title, order_lesson, content, course_id)
VALUES
('Introducción', '1', 'Contenido intro', 1),
('Joins', '2', 'Contenido joins', 1);

--inscribir usuario a curso

INSERT INTO inscriptions (user_id, course_id)
SELECT user_id, 1
FROM users
WHERE email = 'ana@test.com';

-- registrar progreso

INSERT INTO progress (user_id, lesson_id)
SELECT u.user_id, l.lesson_id
FROM users u
JOIN lessons l ON l.title = 'Introducción'
WHERE u.email = 'ana@test.com';

-- 2 pruebas integridad
INSERT INTO inscriptions (user_id, course_id)
SELECT user_id, 1
FROM users
WHERE email = 'ana@test.com';

INSERT INTO inscriptions (user_id, course_id)
VALUES ('00000000-0000-0000-0000-000000000000', 1);

INSERT INTO progress (user_id, lesson_id)
SELECT user_id, 999
FROM users
LIMIT 1;


INSERT INTO progress (user_id, lesson_id)
SELECT u.user_id, l.lesson_id
FROM users u
JOIN lessons l ON l.title = 'Introducción'
WHERE u.email = 'ana@test.com';

DELETE FROM users WHERE email = 'ana@test.com';

-- 3 pruebas de consultas

SELECT c.title
FROM courses c
JOIN inscriptions i ON i.course_id = c.course_id
JOIN users u ON u.user_id = i.user_id
WHERE u.email = 'ana@test.com';

SELECT title, order_lesson
FROM lessons
WHERE course_id = 1
ORDER BY order_lesson;

SELECT l.title, p.complete_datetime
FROM progress p
JOIN lessons l ON l.lesson_id = p.lesson_id
JOIN users u ON u.user_id = p.user_id
WHERE u.email = 'ana@test.com';
