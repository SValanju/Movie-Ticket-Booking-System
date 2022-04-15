-- Create database for the project.
create database OMTBS;

use OMTBS;

-- Create table for user registration and login.
create table UserRegister(
LoginID int primary key not null identity,
FullName varchar(50) not null,
EmailID varchar(50) not null,
Password varchar(50) not null,
MobileNo numeric(18,0) not null);

select * from UserRegister;

-- Create table for movies.
create table Movies(
MoviesID int primary key identity not null,
MovieName varchar(50) not null,
Language varchar(50) not null,
MPoster nvarchar(max) not null,
Price money not null,
Description varchar(max) not null);


-- Insert few sample movies.
insert into Movies(MovieName, Language, MPoster, Price, Description)
values('Avatar', 'English', '/Content/Images/avatar.jpg', '300', 'Avatar (also marketed as James Cameron''s Avatar) is a 2009 American epic science fiction film directed, written, produced, and co-edited by James Cameron and starring Sam Worthington, Zoe Saldana, Stephen Lang, Michelle Rodriguez, and Sigourney Weaver. The film is set in the mid-22nd century when humans are colonizing Pandora, a lush habitable moon of a gas giant in the Alpha Centauri star system, in order to mine the valuable mineral unobtanium. The expansion of the mining colony threatens the continued existence of a local tribe of Na''vi – a humanoid species indigenous to Pandora. The film''s title refers to a genetically engineered Na''vi body operated from the brain of a remotely located human that is used to interact with the natives of Pandora.'),
('Farzand', 'Marathi', '/Content/Images/farjand.jpg', '350', 'Farzand (English: Son) (Marathi:फर्जंद)is an Indian Marathi epic, historical drama-War film directed by Digpal Lanjekar and produced by Anirban Sarkar under the banner of Swami Samarth Creations LLP. The film was co-produced by Sandip Jadhav, Mahesh Jaurkar and Swapnil Potdar. The film stars Prasad Oak, Ankit Mohan, Chinmay Mandlekar, Mrinal Kulkarni, Mrunmayee Deshpande, Neha Joshi and Sameer Dharmadhikari.'),
('Iron Man 3', 'English', '/Content/Images/im3.jpg', '450', 'Iron Man 3 is a 2013 American superhero film based on the Marvel Comics character Iron Man, produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures. It is the sequel to Iron Man (2008) and Iron Man 2 (2010), and the seventh film in the Marvel Cinematic Universe (MCU). The film was directed by Shane Black from a screenplay he co-wrote with Drew Pearce, and stars Robert Downey Jr. as Tony Stark / Iron Man alongside Gwyneth Paltrow, Don Cheadle, Guy Pearce, Rebecca Hall, Stéphanie Szostak, James Badge Dale, Jon Favreau, and Ben Kingsley. In Iron Man 3, Tony Stark wrestles with the ramifications of the events of The Avengers during a national terrorism campaign on the United States led by the mysterious Mandarin.'),
('Men In Black', 'English', '/Content/Images/mib.jpg', '300', 'Men in Black (stylized as MIB: Men in Black) is a 1997 American science fiction action comedy film directed by Barry Sonnenfeld, produced by Walter F. Parkes and Laurie MacDonald and written by Ed Solomon. Loosely based on the Men in Black comic book series created by Lowell Cunningham and Sandy Carruthers, the film stars Tommy Lee Jones and Will Smith as two agents of a secret organization called the Men in Black, who supervise extraterrestrial lifeforms who live on Earth and hide their existence from ordinary humans. The film featured the creature effects and makeup of Rick Baker and visual effects by Industrial Light & Magic.'),
('Tanhaji', 'Marathi', '/Content/Images/tanaji.jfif', '400', 'Tanhaji: The Unsung Warrior is a 2020 Indian Hindi-language historical action film, co-written and directed by Om Raut and produced by Bhushan Kumar, Krishan Kumar and Ajay Devgn under T-Series Films and Ajay Devgn FFilms. Tracing the life of Maratha warrior Tanaji Malusare, it stars Ajay Devgn in titular role, in addition to Saif Ali Khan and Kajol in important supporting roles, it also features Neha Sharma, Sharad Kelkar and Luke Kenny in other supporting roles. Set in the 17th century, it revolves around Tanaji''s attempts to recapture the Kondhana fortress once it passes on to Mughal emperor Aurangzeb who transfers its control to his trusted guard Udaybhan Singh Rathore.The film was originally named Taanaji: The Unsung Warrior but the name was later changed to Tanhaji; The Unsung Warrior for numerological reasons.'),
('Cars', 'English', '/Content/Images/cars.jpg', '300', 'Cars is a 2006 American computer-animated sports comedy film produced by Pixar Animation Studios and released by Walt Disney Pictures. The film was directed by John Lasseter from a screenplay by Dan Fogelman, Lasseter, Joe Ranft, Kiel Murray, Phil Lorin, and Jorgen Klubien and a story by Lasseter, Ranft, and Klubien, and was the final film independently produced by Pixar after its purchase by Disney in January 2006. Set in a world populated entirely by anthropomorphic talking cars and other vehicles, the film stars the voices of Owen Wilson, Paul Newman (in his final acting role), Bonnie Hunt, Larry the Cable Guy, Tony Shalhoub, Cheech Marin, Michael Wallis, George Carlin, Paul Dooley, Jenifer Lewis, Guido Quaroni, Michael Keaton, Katherine Helmond, John Ratzenberger and Richard Petty, while race car drivers Dale Earnhardt Jr. (as "Junior"), Mario Andretti, Michael Schumacher and car enthusiast Jay Leno (as "Jay Limo") voice themselves.'),
('Cars 2', 'English', '/Content/Images/cars2.jpg', '350', 'Cars 2 is a 2011 American computer-animated spy comedy film produced by Pixar Animation Studios for Walt Disney Pictures. It is a sequel to 2006''s Cars and the second film in the Cars franchise. This was the final Pixar film animated with their old software system, Marionette, before officially replaced with Presto in 2012. It was directed by John Lasseter, written by Ben Queen, and produced by Denise Ream. In the film''s ensemble voice cast, Owen Wilson, Larry the Cable Guy, Tony Shalhoub, Guido Quaroni, Bonnie Hunt, and John Ratzenberger reprise their roles from the first film. Paul Newman, who voiced Doc Hudson in the previous film, died in September 2008, so his character was written out of the film; George Carlin, who previously voiced Fillmore, died during the same year, and his role was passed to Lloyd Sherr. The returning cast is joined by Michael Caine, Emily Mortimer, John Turturro, Eddie Izzard, and Thomas Kretschmann, who voice the new characters introduced in this film.'),
('Cars 3', 'English', '/Content/Images/cars3.jpg', '350', 'Cars 3 is a 2017 American computer-animated comedy-adventure film produced by Pixar Animation Studios and released by Walt Disney Pictures. Directed by Brian Fee in his directorial debut and written by Kiel Murray, Bob Peterson, and Mike Rich, it is the third installment of the Cars film series and the stand-alone sequel to Cars 2 (2011). It was executive-produced by John Lasseter, who directed the first two Cars films. The returning voices of Owen Wilson, Bonnie Hunt and Larry the Cable Guy are joined by Cristela Alonzo, Chris Cooper, Armie Hammer, Nathan Fillion, Kerry Washington, and Lea DeLaria, in addition to a dozen NASCAR personalities. In the film, Lightning McQueen sets out to prove to a new generation of high tech race cars that he is still the best racing car in the world, with the help of Cruz Ramirez and inspiration of the Fabulous Hudson Hornet.'),
('Do Little', 'English', '/Content/Images/dolit.png', '400', 'Dolittle (also referred to as The Voyage of Doctor Dolittle) is a 2020 American fantasy adventure film directed by Stephen Gaghan from a screenplay by Gaghan, Dan Gregor, and Doug Mand, based on a story by Thomas Shepherd. Dolittle is based on the title character created by Hugh Lofting and is primarily inspired by the author''s second Doctor Dolittle book, The Voyages of Doctor Dolittle (1922). Robert Downey Jr. stars as the title character, alongside Antonio Banderas and Michael Sheen in live-action roles, with Emma Thompson, Rami Malek, John Cena, Kumail Nanjiani, Octavia Spencer, Tom Holland, Craig Robinson, Ralph Fiennes, Selena Gomez, and Marion Cotillard voicing an array of creatures.'),
('Max', 'English', '/Content/Images/max.jpg', '500', 'A military dog that helped American Marines in Afghanistan returns to the United States and is adopted by his handler''s family after suffering a traumatic experience.'),
('Titanic', 'English', '/Content/Images/titanic.jpg', '340', 'Titanic is a 1997 American epic romance and disaster film directed, written, co-produced, and co-edited by James Cameron. Incorporating both historical and fictionalized aspects, the film is based on accounts of the sinking of the RMS Titanic, and stars Leonardo DiCaprio and Kate Winslet as members of different social classes who fall in love aboard the ship during its ill-fated maiden voyage.'),
('Max 2', 'English', '/Content/Images/max2.jpg', '300', 'Max 2: White House Hero is a 2017 American adventure film produced by Warner Bros. and Sunswept Entertainment. The film was released by Orion Pictures and Warner Bros. Pictures on May 5, 2017. It is a sequel to the 2015 film Max. The movie was filmed on location in and around Vancouver, British Columbia. Principal photography on the film began in June 2016 and wrapped on July 13, 2016. Max is assigned to the White House while Charlie, the secret service dog, is on maternity leave. He meets TJ, a 12 year old boy, who is the President's son. Due to his father's high profile, he is trying hard to fit in and lead a normal life. During a state visit by the Russian President and his daughter, Alexandra (Alex), TJ is asked to accompany her, during their stay. TJ be friends Alex, but when they get into trouble, Max comes to the rescue!');

select * from Movies;


-- Create table for Date & Time.
DROP TABLE [dbo].[DateTime]
create table DateTime (
ID int primary key identity,
Date date not null,
Time varchar(50) not null,
Theatres varchar(50) not null,
MoviesID int not null,
LoginID int not null,
foreign key (MoviesID) references Movies(MoviesID),
foreign key (LoginID) references UserRegister(LoginID)
);

-- DateTime stored Procedure.
use OMTBS
go
create proc Sample_Proc
@Date varchar(20),
@Time varchar(50),
@Theatres varchar(50),
@MoviesID int,
@LoginID int,
@ID int output
as
begin
insert into DateTime(Date, Time, Theatres, MoviesID, LoginID) values(@Date,@Time,@Theatres,@MoviesID,@LoginID)
set @ID=@@IDENTITY
return @ID
end

-- Create table for Seating arrangement.
create table Seating (
SeatNo int primary key,
Status varchar(50) not null,
DateTimeID int,
foreign key (DateTimeID) references DateTime(ID)
);

--Insert seats data.
insert into Seating(SeatNo, Status) values(1, 'A'), (2, 'A'), (3, 'A'), (4, 'A'), (5, 'A'), (6, 'A'), (7, 'A'), (8, 'A'), (9, 'A'), (10, 'A'),
(11, 'A'), (12, 'A'), (13, 'A'), (14, 'A'), (15, 'A'), (16, 'A'), (17, 'A'), (18, 'A'), (19, 'A'), (20, 'A'),
(21, 'A'), (22, 'A'), (23, 'A'), (24, 'A'), (25, 'A'), (26, 'A'), (27, 'A'), (28, 'A'), (29, 'A'), (30, 'A'),
(31, 'A'), (32, 'A'), (33, 'A'), (34, 'A'), (35, 'A'), (36, 'A'), (37, 'A'), (38, 'A'), (39, 'A'), (40, 'A'),
(41, 'A'), (42, 'A'), (43, 'A'), (44, 'A'), (45, 'A'), (46, 'A'), (47, 'A'), (48, 'A'), (49, 'A'), (50, 'A'),
(51, 'A'), (52, 'A'), (53, 'A'), (54, 'A'), (55, 'A'), (56, 'A');

select * from Seating;

--Create table for Payment details.
create table Payment (
id int primary key identity,
CardNo bigint not null,
ExpiryDate varchar(50) not null,
CVV varchar(50) not null,
CardHolder varchar(50) not null,
DateTimeID int not null,
foreign key (DateTimeID) references DateTime(ID));

-- Payment stored procedure
use OMTBS
go
create proc Sp_Payment
@CardNo bigint,
@ExpiryDate varchar(50),
@CVV varchar(50),
@CardHolder varchar(50),
@DateTimeID int,
@id int output
as
begin
insert into Payment(CardNo, ExpiryDate, CVV, CardHolder, DateTimeID) values(@CardNo,@ExpiryDate,@CVV,@CardHolder,@DateTimeID)
set @id=@@IDENTITY
return @id
end

-- Create table for Summary details.
create table Summary (
ID int primary key,
PayID int not null,
foreign key (PayID) references Payment(ID));

-- Summary stored procedure
use OMTBS;
go
create proc SP_Summary
@ID int
as begin
select ur.FullName, m.MPoster, m.MovieName, dt.Theatres, dt.Time, p.CardHolder,  m.Price
from UserRegister ur inner join DateTime dt on dt.LoginID=ur.LoginID
inner join Movies m on dt.MoviesID=m.MoviesID
inner join Payment p on p.DateTimeID=dt.ID
where p.id=@ID
end
