create table dbo.DifficultyLevel(
	
	DiffID int identity primary key not null,
	DiffTitle nvarchar(25) not null

);

create table dbo.Track(

	TrackID int identity primary key not null, 
	TrackDomain nvarchar(100) not null,
	NumberOfClasses int,

);

create table dbo.Roles(
	
	RoleID int identity primary key not null,
	RoleName nvarchar(50) not null

);

create table dbo.People(
	PersonID int identity primary key not null,
	FirstName nvarchar(50),
	LastName nvarchar(50),
	PersonAddress nvarchar(100),
	City nvarchar(50),
	ZipCode int,
	PersonState nvarchar(50),
	Email nvarchar(50),
	PersonRole int foreign key references Roles(RoleID),
	PersonRole2 int foreign key references Roles(RoleID),
	PersonRole3 int foreign key references Roles(RoleID),
	
);

create table dbo.Room(

	RoomID int identity primary key not null,
	RoomNumber int not null,
	RoomSize int not null,
	NumberOfTables int not null,
	/*Venue int foreign key references Venue(VenueID) not null*/
);

create table dbo.Raffle(

	RaffleID int identity primary key not null,
	RaffleSponsor int foreign key references Sponsors(SponsorID),
	RafflePrize nvarchar(25)

);

create table dbo.RaffleEntries(

	EntriesID int identity primary key not null,
	Raffle int foreign key references Raffle(RaffleID),
	Attended int foreign key references People(PersonID),

);

create table Schedule(

	ScheduleID int identity primary key not null,
	SessionName nvarchar(50),
	SessionID int foreign key references Sessions(SessionsID),
	StartTime time,
	EndTime time,
	Presentor varchar(50),
	Room int

);