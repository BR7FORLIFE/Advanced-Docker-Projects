-- =========================
-- ROLES
-- =========================
INSERT INTO rols (name, description) VALUES
  ('student', 'Usuario que toma cursos'),
  ('instructor', 'Usuario que dicta cursos'),
  ('admin', 'Administrador del sistema');

-- =========================
-- USERS
-- =========================
INSERT INTO users (user_id, name, email) VALUES
  ('11111111-1111-1111-1111-111111111111', 'Juan Perez', 'juan@mail.com'),
  ('22222222-2222-2222-2222-222222222222', 'Ana Lopez', 'ana@mail.com'),
  ('33333333-3333-3333-3333-333333333333', 'Carlos Admin', 'admin@mail.com');

-- =========================
-- USERS ↔ ROLES
-- =========================
INSERT INTO users_rols (user_id, role_id) VALUES
  ('11111111-1111-1111-1111-111111111111', 1), -- student
  ('22222222-2222-2222-2222-222222222222', 2), -- instructor
  ('33333333-3333-3333-3333-333333333333', 3); -- admin

-- =========================
-- COURSES
-- =========================
INSERT INTO courses (course_id, title, descriptcion) VALUES
  (1, 'PostgreSQL', 'Curso de PostgreSQL desde cero'),
  (2, 'Docker', 'Docker y Docker Compose');

-- =========================
-- INSCRIPTIONS
-- =========================
INSERT INTO inscriptions (user_id, course_id) VALUES
  ('11111111-1111-1111-1111-111111111111', 1),
  ('11111111-1111-1111-1111-111111111111', 2);

-- =========================
-- LESSONS
-- =========================
INSERT INTO lessons (lesson_id, title, order_lesson, content, course_id) VALUES
  (1, 'Introducción', 1, 'Bienvenida al curso', 1),
  (2, 'Instalación', 2, 'Instalación de PostgreSQL', 1),
  (3, 'Docker Basics', 1, 'Introducción a Docker', 2);

-- =========================
-- PROGRESS
-- =========================
INSERT INTO progress (user_id, lesson_id) VALUES
  ('11111111-1111-1111-1111-111111111111', 1),
  ('11111111-1111-1111-1111-111111111111', 2);

-- =========================
-- PAYMENTS
-- =========================
INSERT INTO payments (payment_id, amount, currency, status, user_id, course_id) VALUES
  (gen_random_uuid(), 49.99, 'USD', 'paid',
   '11111111-1111-1111-1111-111111111111', 1),
  (gen_random_uuid(), 39.99, 'USD', 'paid',
   '11111111-1111-1111-1111-111111111111', 2);

-- =========================
-- REVIEWS
-- =========================
INSERT INTO reviews (rating, comment, user_id, course_id) VALUES
  (5, 'Excelente curso de PostgreSQL', '11111111-1111-1111-1111-111111111111', 1),
  (4, 'Muy buen curso de Docker', '11111111-1111-1111-1111-111111111111', 2);
