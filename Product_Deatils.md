# Project Name ➖ Product Dissection for Instagram

## Project Created by Hariom Gupta 
### Top Features of Instagram:

**User Profiles:** Instagram allows users to create personal profiles, offering insights into their lives through features such as usernames, full names, bios, and profile pictures. This creates a personalised online presence that reflects each user's identity.

**Posts** A core feature of Instagram is the ability to share photos and videos as posts. Users can add captions, tag locations, and enhance their content using filters, stickers, and other creative tools.

**Interactions:** Engagement lies at the heart of Instagram. Users can express appreciation by liking posts and sharing their thoughts through comments. The "Save" feature enables users to bookmark content for later viewing.

**Followers and Following:** The platform fosters connections through the "Follow" functionality. Users can follow other accounts to see their posts in their feed, creating a network of connections. Users can also view who is following them, enhancing transparency.

**Explore:** The "Explore" feature propels discovery by suggesting content based on user preferences and interactions. Users can explore posts, videos, and stories from accounts they don't follow, fostering a diverse online experience.

**Hashtags:** Instagram pioneered the use of hashtags, which categorise posts and enhance discoverability. Users can add relevant hashtags to their posts, making them accessible to a broader audience.

### Schema Description: 

*The schema for Instagram involves multiple entities that represent different aspects of the platform. These entities include Users, Posts, Comments, Likes, Followers, Hashtags, and more. Each entity has specific attributes that describe its properties and relationships with other entities.*

**User Entity:**
    Users are at the core of Instagram. The user entity contains information about each user:

- UserID (Primary Key): A unique identifier for each user.
- Username: The chosen username for the user's account.
- Email: The user's email address for account-related communication.
- Full_Name: The user's full name as displayed on their profile.
- Bio: A brief description that users can use to express themselves.
- Registration_Date: The date when the user joined Instagram.

### Post Entity:
    Posts capture the visual content shared on the platform:

- PostID (Primary Key): A unique identifier for each post.
- UserID (Foreign Key referencing User Entity): The user who created the post.
- Caption: Text accompanying the post, providing context.
- Image_URL: The URL of the image or video content.
- Location: The tagged location associated with the post.
- Post_Date: The date when the post was created.

### Comment Entity:
    Comments enable users to engage in conversations around posts:

- CommentID (Primary Key): A unique identifier for each comment.
- PostID (Foreign Key referencing Post Entity): The post being commented on.
- UserID (Foreign Key referencing User Entity): The user who posted the comment.
- Text: The text of the comment.
- Comment_Date: The date when the comment was posted.
### Like Entity:
    Likes represent user appreciation for posts:

- LikeID (Primary Key): A unique identifier for each like.
- PostID (Foreign Key referencing Post Entity): The post being liked.
- UserID (Foreign Key referencing User Entity): The user who liked the post.
- Like_Date: The date when the like was registered.
### Follower Entity:
    Followers establish connections between users:

- FollowerID (Primary Key): A unique identifier for each follower relationship.
- FollowingUserID (Foreign Key referencing User Entity): The user who is being followed.
- FollowerUserID (Foreign Key referencing User Entity): The user who is following.
- Follow_Date: The date when the following relationship was initiated.


### Hashtag Entity:
    Hashtags categorise and group content:

- HashtagID (Primary Key): A unique identifier for each hashtag.
- Tag: The actual text of the hashtag.


### PostHashtag Entity:
    Associates posts with hashtags:

- PostHashtagID (Primary Key): A unique identifier for each association.
- PostID (Foreign Key referencing Post Entity): The post associated with the hashtag.
- HashtagID (Foreign Key referencing Hashtag Entity): The hashtag associated with the post.


### Relationships are:

- Users post Posts – Each user can post multiple posts.
- Users comment on Posts – Users can comment on multiple posts, and each post can have multiple comments.
- Users like Posts – Users can like multiple posts, and each post can have multiple likes.
- Users follow other Users – Users can follow multiple users and be followed by multiple users.
- Posts have Hashtags – Posts can have multiple hashtags, and each hashtag can be associated with multiple posts.


## ER Diagram: 

    Let's construct an ER diagram that vividly portrays the relationships and attributes of the entities within the Instagram schema. This ER diagram will serve as a visual representation, shedding light on the pivotal components of Instagram's data model. By employing this diagram, you'll gain a clearer grasp of the intricate interactions and connections that define the platform's dynamics.

