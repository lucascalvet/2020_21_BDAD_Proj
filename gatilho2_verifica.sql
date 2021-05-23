PRAGMA foreign_keys=ON;

DELETE FROM Friends WHERE user1='lucascs' AND user2='melmel';
SELECT * FROM Friends;
INSERT INTO Friends VALUES('lucascs', 'melmel'); -- valid
INSERT INTO Friends VALUES('lucascs', 'zeppf'); -- invalid because pair already exists (switched)
INSERT INTO Friends VALUES('jfred24', 'jfred24'); -- invalid because a user cannot be friends with itself
SELECT * FROM Friends;
