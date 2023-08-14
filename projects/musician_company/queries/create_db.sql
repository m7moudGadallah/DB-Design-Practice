-- create {MusicCompany} database
use master
go

create database MusicCompany
on (
	name= MusicCompany_data,
	filename= './db/MusicCompany_data.mdf',
	size= 10,
	maxsize= 10,
	filegrowth= 5
)

log on (
	name= MusicCompany_log,
	filename= './db/MusicCompany_log.ldf',
	size= 5MB,
	maxsize= 25MB,
	filegrowth= 5MB
)
go

use MusicCompany
go

-- create {Musician} table
create table Musician (
	id int identity(1,1),
	name varchar(20) not null,
	phone varchar(15) not null,
	street varchar(15) not null,
	city varchar(15) not null,

	constraint musician_pk primary key(id),
	constraint musician_phone_uq unique(phone),
)

go

-- create {Instrument} table
create table Instrument (
	name varchar(15),
	musical_key varchar(10) not null

	constraint instrument_pk primary key(name)
)

go

-- create {Album} table
create table Album (
	id int identity(1, 1),
	title varchar(20) not null,
	copyright_date date

	constraint album_pk primary key(id)
)

go


-- create {Song} table
create table Song (
	title varchar(15),
	author varchar(20) not null,
	album_id int,

	constraint song_pk primary key(title),
	constraint song_album_fk foreign key(album_id) references Album(id)
)

go

-- create {Produce} table
create table Produce (
	album_id int,
	musician_id int not null,

	constraint produce_pk primary key(album_id),
	constraint produce_album_fk foreign key(album_id) references Album(id),
	constraint produce_musician_fk foreign key(musician_id) references Musician(id)
)

go

-- create {Play} table
create table Play (
	musician_id int,
	instrument_name varchar(15),

	constraint play_pk primary key(musician_id, instrument_name),
	constraint play_musician_fk foreign key(musician_id) references Musician(id),
	constraint play_instrument_fk foreign key(instrument_name) references Instrument(name)
)

go

-- create {Perform} table
create table Perform (
	musician_id int,
	song_title varchar(15),

	constraint perform_pk primary key(musician_id, song_title),
	constraint perform_musician_fk foreign key(musician_id) references Musician(id),
	constraint perform_song_fk foreign key(song_title) references Song(title)
)

go


-- drop all tables
drop table Perform
drop table Play
drop table Produce
drop table Song
drop table Album
drop table Instrument
drop table Musician
go