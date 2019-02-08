USE adlister_db;
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username VARCHAR(255) NOT NULL,
  email VARCHAR (100) NOT NULL,
  password VARCHAR (100) NOT NULL,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS ads;

CREATE TABLE IF NOT EXISTS ads (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED NOT NULL,
  title VARCHAR (400),
  description VARCHAR(255) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(id)
    ON DELETE CASCADE
);

INSERT INTO users (username, email, password)
VALUES('chase', 'chaseohm@gmail.com', '123456'),
      ('Rob1Vet', 'imavetyeahthatsright@gmail.com', 'imavetimavetimavet');


INSERT INTO ads (user_id, title, description)
VALUES ('1','Civic For Sale', '2012 Civic $2000');