CREATE table my_user(
    user_name VARCHAR(50),
    email VARCHAR(100)
)

INSERT INTO my_user VALUES('mehedi', 'mehedi@gmail.com'), ('hasan', 'hasan@gmail.com')

CREATE Table delete_users(
    deleted_user_name VARCHAR(50), 
    deleted_user_email VARCHAR(100)
);

SELECT * FROM my_user

CREATE Function save_deleted_user()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
BEGIN
    INSERT INTO delete_users VALUES(OLD.user_name, OLD.email);
    RAISE NOTICE 'Saved Deleted User!';
    RETURN OLD;
END
$$

CREATE Trigger save_deleted_user_trigger
BEFORE DELETE
on my_user
for each row
EXECUTE FUNCTION save_deleted_user();




DELETE FROM my_user WHERE user_name = 'hasan';
