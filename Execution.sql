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
users.email,
    results.score,
    results.attempted_on
FROM 
    users
INNER JOIN 
    results ON users.user_id = results.user_id;
