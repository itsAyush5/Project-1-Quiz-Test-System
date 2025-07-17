-- SAMPLE DATA INSERTION IN users TABLE
INSERT INTO users (user_name, email) VALUES
 ('ayush', 'ayush@example.com'),
 ('rahul', 'rahul@example.com');
SELECT * FROM users;
--  SAMPLE DATA INSERTION IN questions TABLE
INSERT INTO questions (question_text) VALUES
('What is Capital of India ? '),
('How is the current PM of India ? '),
('Which coding Language from the following is used in Web Development ? ');
SELECT * FROM answers;
-- -- SAMPLE  DATA INSERTION IN answers TABLE
 INSERT INTO answers(question_id,answer_text,is_correct) VALUES
 (1,'Mumbai',FALSE),
 (1,'Delhi',TRUE),
 (1,'Kolkata',FALSE),
 (1,'Chennai',FALSE),
 (2,'Narendra Modi',TRUE),
 (2,'Rajiv Gandhi',FALSE),
 (2,'Aditya Thakare',FALSE),
 (2,'Devendra Fadnavis',FALSE)
(3,'C++',FALSE),
(3,'C',FALSE),
(3,'HTML',TRUE),
(3,'Python 🐍',FALSE)
SELECT q.question_id, q.question_text, a.answer_id, a.answer_text, a.is_correct
 FROM questions q
 JOIN answers a ON q.question_id = a.question_id
 ORDER BY q.question_id;
INSERT INTO results (user_id, score)
 VALUES (2, 2);
  SELECT u.user_name, r.score, r.attempted_on
 FROM results r
 JOIN users u ON r.user_id = u.user_id
 ORDER BY r.attempted_on DESC;
SELECT * FROM users;
SELECT * FROM questions;
SELECT * FROM answers;
SELECT * FROM results;
-- To join user_name, user_id from users to score
SELECT 
    users.user_id AS user_id,
    users.user_name,
    results.score
FROM 
    users
INNER JOIN 
    results ON users.user_id = results.user_id;