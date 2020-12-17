CREATE TABLE friends(
  id INTEGER,
  name TEXT,
  birthday DATE
);
INSERT INTO friends (id, name, birthday)
VALUES (1, "Jane Doe", '1990-05-30');

INSERT INTO friends(id, name, birthday)
VALUES (2, "Sumanth", '1997-09-05');

INSERT INTO friends(id, name, birthday)
VALUES (3, "Meghs", '1998-10-29');

UPDATE friends
SET name = 'Jane Smith'
WHERE id = 1;

ALTER TABLE friends
ADD COLUMN email TEXT;

UPDATE friends
SET email = "jane@codecademy.com"
WHERE id = 1;

DELETE FROM friends
WHERE id = 1;

UPDATE friends
SET email = "sems@sem.com"
WHERE id = 2;

SELECT * FROM friends;
