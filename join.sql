SELECT title, username FROM posts as p
    JOIN users as u ON p.user_id = u.id