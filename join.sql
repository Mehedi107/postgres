SELECT title, username FROM posts as p
    JOIN users as u ON p.user_id = u.id

INSERT INTO posts(title, user_id) VALUES('This title 7', NULL)


SELECT * FROM posts
    LEFT JOIN users ON posts.user_id = users.id

SELECT * FROM users
    RIGHT JOIN posts ON users.id = posts.user_id