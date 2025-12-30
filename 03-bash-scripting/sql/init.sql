CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email TEXT
);

INSERT INTO users (email)
VALUES
 ('a@test.com'),
 ('b@test.com'),
 ('c@test.com');
