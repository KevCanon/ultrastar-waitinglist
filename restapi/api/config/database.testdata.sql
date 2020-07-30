DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS user;

CREATE TABLE person
(
    id               INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name             VARCHAR(255),
    firstname        VARCHAR(255),
    CONSTRAINT UC_Person UNIQUE (name, firstname)
);

CREATE TABLE user
(
    id        INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    username  VARCHAR(55)     NOT NULL,
    lastname  VARCHAR(100)    NOT NULL,
    firstname VARCHAR(100)    NOT NULL,
    email     VARCHAR(100)    NOT NULL,
    phone     VARCHAR(100),
    address   VARCHAR(100),
    zip_code  VARCHAR(10),
    state     VARCHAR(55),
    password  BLOB            NOT NULL,
    CONSTRAINT UC_user UNIQUE (username, email)
);

-- testdata
-- password for testuser lbaum is pass123
INSERT INTO user (id, username, lastname, firstname, email, password)
VALUES (1, 'lbaum', 'Baum', 'Lukas', 'lbaum@example.com', '$2b$10$Ee/TELQs8QqR87OlkYcNu.7jalBbVjYmn0BpIgL0Jlesf8oaRhI.S');

INSERT INTO person (id, name, firstname) VALUES (1, 'Meister', 'Max');
INSERT INTO person (id, name, firstname) VALUES (2, 'Bios', 'Bernhard');