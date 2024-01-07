--Code In SQL

import sqlite3
conn = sqlite3.connect('instagram.db')
c = conn.cursor()
    --Create Users table
c.execute('''
          CREATE TABLE Users
          (UserID integer PRIMARY KEY,
           Username text,
           Email text,
           FullName text,
           Bio text,
           JoinedDate text)
          ''')

--The Instagram schema defines relationships through the use of foreign keys, which connect distinct tables. Let's go over each relationship using the SQLite schema that was provided:
--Users make posts:

--Relationship:
--Each user can make several entries.
--Foreign Key:
--The UserID column in the posts table is a foreign key that references the UserID column in the users table.
--Meaning: This relationship ensures that each post is associated with a genuine user. Users, defined by their UserID, can create multiple posts.

 Create Posts table
c.execute('''
          CREATE TABLE Posts
          (PostID integer PRIMARY KEY,
           UserID integer,
           ImageURL text,
           Caption text,
           PostedDate text,
           FOREIGN KEY(UserID) REFERENCES Users(UserID))
          ''')
 --Users leave comments on posts:

--Relationship:
--Users can comment on many posts, and each post can have multiple comments.
--Foreign Keys:
--The PostID column in the comments table is a foreign key that references the PostID column in the posts table.


--The UserID column in the comments table is a foreign key that refers to the UserID column in the users table.


--Meaning: This relationship ensures that each remark is associated with a genuine post and a valid user. Users can comment on numerous posts, and each post can have several comments.


    --Create Comments table
c.execute('''
          CREATE TABLE Comments
          (CommentID integer PRIMARY KEY,
           PostID integer,
           UserID integer,
           Text text,
           CommentDate text,
           FOREIGN KEY(PostID) REFERENCES Posts(PostID),
           FOREIGN KEY(UserID) REFERENCES Users(UserID))
          ''')

--Posts that users like:

--Relationship:
--Users can like numerous posts, and each post can have several likes.
--Foreign Keys:
--The PostID column in the likes table is a foreign key that references the PostID column in the posts table.

--The UserID column in the likes table is a foreign key that refers to the UserID column in the users table.

--Meaning:
--This relationship ensures that every like is associated with a valid post and a valid user.
--Users can like numerous posts, and each post can have multiple likes.



    --Create Likes table
c.execute('''
          CREATE TABLE Likes
          (LikeID integer PRIMARY KEY,
           PostID integer,
           UserID integer,
           LikedDate text,
           FOREIGN KEY(PostID) REFERENCES Posts(PostID),
           FOREIGN KEY(UserID) REFERENCES Users(UserID))
          ''')
--Users who follow others:

--Users can follow and be followed by multiple people.
--Keys from other countries:
--The ForeignKey column in the followers table refers to the UserID column in the users table.

--The FollowerUserID column in the followers table is a foreign key to the UserID column in the users table.

--This relationship assures that both the following and following users are valid users.

--Users can follow numerous people, and each person can follow multiple people.


    --Create Follows table
c.execute('''
          CREATE TABLE Follows
          (FollowID integer PRIMARY KEY,
           FollowingUserID integer,
           FollowerUserID integer,
           FollowDate text,
           FOREIGN KEY(FollowingUserID) REFERENCES Users(UserID),
           FOREIGN KEY(FollowerUserID) REFERENCES Users(UserID))
         ''')

--Hashtags are used in posts:

--Relationship:
--Each hashtag can be associated with many posts, and each post can have several hashtags.
--Keys from Other Countries:

--The PostID column in the post_hashtags table is a foreign key that refers to the PostID column in the posts table.

--The post_hashtags table's HashtagID column is a foreign key that refers to the hashtags table's HashtagID column.
--Meaning:
--This relationship maintains the validity of all post-hashtag associations.
--many hashtags can be associated with a single post, and each hashtag can be associated with many posts.

--These foreign key relationships provide data integrity and enforce linkages between various entities in the Instagram database model.

    --Create Hashtags table
c.execute('''
         CREATE TABLE Hashtags
         (HashtagID integer PRIMARY KEY,
          Tag text)
         ''')

 Create PostHashtags table
c.execute('''
         CREATE TABLE PostHashtags
         (PostHashtagID integer PRIMARY KEY,
          PostID integer,
          HashtagID integer,
          FOREIGN KEY(PostID) REFERENCES Posts(PostID),
          FOREIGN KEY(HashtagID) REFERENCES Hashtags(HashtagID))
         ''')

conn.commit()
conn.close()
