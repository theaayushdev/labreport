use labsheet;

-- movie table

create table movies(
movieid int primary key ,
moviename varchar(20),
releasedate date,
ticketprice int not null,
buyprice varchar(20)
);

-- viewer table

create table viewers(
viewerid int primary key ,
viewername varchar(20),
email varchar(50),
phone bigint not null,
age int
);

-- ticket table

create table tickets(
ticketid int primary key ,
showdatetime datetime,
screennumber varchar(50),
seatnumber varchar(20) not null,
viewerid int,
movieid int,
age int,
foreign key (viewerid) references viewers(viewerid),
foreign key (movieid) references movies(movieid)
);

-- inserting values on movies

use labsheet;

insert into movies 
values (1,'avatar','2018-01-15',412,'rs500'),
	   (2,'avengers','2018-01-20',300,'rs400'),
       (3,'xyz','2020-02-15',322,'rs100'),
       (4,'animal','2023-03-19',654,'rs700'),
       (5,'aquaman','2021-01-08',855,'rs900');


-- inserting into viewers 

insert into viewers 
values (1,'Mr. prakash','prak@gmail.com',9876543210,'20'),
	   (2,'prakash rai','prakrai@gmail.com',9874125630,'25'),
       (3,'raj stha','raj21@gmail.com',9874563210,'35'),
       (4,'komal limbu','komal@hotmail.com',985230147,'24'),
       (5,'hari chhetri','haribro@nec.edu.np',1230456789,'50');

-- insert into tickets

insert into tickets 
values  (1,'2021-01-15','1A','1G',4,1,20),
        (2,'2022-02-13','5B','2G',1,3,28),
        (3,'2024-01-17','2A','45P',2,4,32),
        (4,'2019-07-22','1B','12M',3,5,48);


       