create database BloggDb
use BloggDb

Create table Post(
Id int primary key,
Title nvarchar(250) not null,
Content nvarchar(max) not null,
PublicationDate datetime not null,
Author nvarchar(100) not null)

insert into Post (Id, Title, Content, PublicationDate, Author)
values   (1, 'Sample Post 1', 'This is the content of sample post 1.', '2023-08-28 10:00:00', 'John Doe'),
         (2, 'Sample Post 2', 'This is the content of sample post 2.', '2023-08-29 12:30:00', 'Jane Smith');


create table Comment
(Id int primary key,
Content nvarchar(max) not null,
PublicationDate datetime not null,
PostId int foreign key references Post)

insert into Comment (Id, Content, PublicationDate, PostId)
values
    (1, 'Great post! Thanks for sharing.', '2023-08-28 11:00:00', 1),
    (2, 'I found this really interesting.', '2023-08-29 13:00:00', 1),
    (3, 'Looking forward to more posts.', '2023-08-30 14:30:00', 2);

select * from  Post
select * from Comment