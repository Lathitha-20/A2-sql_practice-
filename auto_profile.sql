-- Adjust name of profile table and foreign key column on profile table
-- before adding this trigger. (Here profile and user_id).

CREATE TRIGGER _new_profile_on_create__user
AFTER INSERT ON _user
BEGIN
    INSERT INTO profile (user_id) VALUES (new.id);
END;
