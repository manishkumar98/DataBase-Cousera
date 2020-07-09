create table Team(
TeamID integer primary Key,
TeamName char not  null,
FeesDue decimal(8,2),
SignUpDate date not null
);
create table Player(
PlayerID integer primary Key,
FirstName char(12) not null,
LastName char(40) not null,
Phone char(11),
status char(3) check(status in ('cap','mem','sub') ),
TeamID integer references Team(TeamID)
);
create table Count(
countID char(5) primary Key,
countName char(40) not null

);
create table Schedule(
GameNum integer primary Key,
CourtID char(5) references Court(CountID),
Team1 integer references Team(TeamID),
Team2 integer references Team(TeamID),
GameDate date,
GameTime integer
);