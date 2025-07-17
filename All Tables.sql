-- CREATE DATABASE quiz_system;
USE quiz_system;
CREATE TABLE users(
user_id  INT AUTO_INCREMENT PRIMARY KEY,
user_name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL ,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE questions(
question_id INT AUTO_INCREMENT PRIMARY KEY,
question_text TEXT NOT NULL
);
CREATE TABLE answers(
answer_id INT AUTO_INCREMENT PRIMARY KEY,
question_id INT,
answer_text TEXT NOT NULL,
is_correct BOOLEAN DEFAULT FALSE,
  FOREIGN KEY (question_id) REFERENCES questions(question_id)
);
CREATE TABLE results(
result_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
score INT DEFAULT 0,
attempted_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);