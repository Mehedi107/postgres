CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) not NULL
)

CREATE TABLE posts(
    id SERIAL PRIMARY KEY,
    title TEXT not null,
    user_id INTEGER REFERENCES users(id) on delete CASCADE
)

INSERT INTO users(username) 
    VALUES('Akash'),
    ('Bappy'),
    ('Arman'),
    ('Mahadi')

INSERT INTO posts(title, user_id) 
    VALUES('This title 1', 1), 
        ('This title 2', 2),
        ('This title 3', 3),
        ('This title 4', 4)

INSERT INTO posts(title, user_id) VALUES('This title 5', 4)

drop table posts

DELETE FROM users
    WHERE id = 4