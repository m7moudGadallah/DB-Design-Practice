use MusicCompany
go

-- load data
-- Insert sample data into Musician table
INSERT INTO Musician (name, phone, street, city)
VALUES
    ('John Doe', '123-456-7890', '123 Main St', 'Cityville'),
    ('Jane Smith', '987-654-3210', '456 Elm St', 'Townsville'),
    ('Michael Johnson', '555-123-4568', '789 Oak St', 'Villagetown'),
    ('Sarah Brown', '111-222-3334', '567 Pine Ave', 'Hometown'),
    ('Robert White', '444-555-6667', '890 Maple Rd', 'Suburbia'),
    ('Emily Green', '777-888-9998', '234 Birch Ln', 'Meadowville'),
    ('Daniel Black', '222-333-4444', '345 Cedar Rd', 'Forestville'),
    ('Olivia Blue', '888-999-0000', '456 Ivy Ave', 'Gardentown'),
    ('Sophia Gray', '333-444-5555', '567 Oakwood Dr', 'Woodville'),
    ('Liam Red', '666-777-8888', '678 Elmwood Rd', 'Rivertown'),
    ('Emma Brown', '555-666-7777', '789 Willow Ln', 'Countryside'),
    ('James White', '444-555-6666', '890 Maple Rd', 'Suburbia'),
    ('Ava Smith', '111-222-3333', '567 Pine Ave', 'Hometown'),
    ('Noah Green', '777-888-9999', '234 Birch Ln', 'Meadowville'),
    ('Isabella Johnson', '555-123-4567', '789 Oak St', 'Villagetown');
go

-- Insert sample data into Instrument table
INSERT INTO Instrument (name, musical_key)
VALUES
    ('Guitar', 'E'),
    ('Piano', 'C'),
    ('Drums', 'Percussion'),
    ('Bass Guitar', 'D'),
    ('Violin', 'G'),
    ('Flute', 'C'),
    ('Trumpet', 'Bb'),
    ('Saxophone', 'Eb'),
    ('Clarinet', 'Bb'),
    ('Cello', 'C');
go

-- Insert sample data into Album table
INSERT INTO Album (title, copyright_date)
VALUES
    ('Album 1', '2020-01-01'),
    ('Album 2', '2021-03-15'),
    ('Album 3', '2019-07-10'),
    ('Best Hits', '2022-11-20'),
    ('Acoustic Sessions', '2022-05-05');
go

-- Insert sample data into Song table
INSERT INTO Song (title, author, album_id)
VALUES
    ('Song 1', 'John Doe', 1),
    ('Song 2', 'Jane Smith', 2),
    ('Song 3', 'Michael Johnson', 3),
    ('Song 4', 'Sarah Brown', 4),
    ('Song 5', 'Robert White', 5);
go

-- Insert sample data into produce table
INSERT INTO Produce (album_id, musician_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 1);
go


-- Insert sample data into play table
INSERT INTO Play (musician_id, instrument_name)
VALUES
    (1, 'Guitar'),
    (2, 'Piano'),
    (3, 'Drums'),
    (4, 'Bass Guitar'),
    (5, 'Violin'),
    (6, 'Flute'),
    (7, 'Trumpet'),
    (8, 'Saxophone'),
    (9, 'Clarinet'),
    (10, 'Cello');
go

-- Insert sample data into perform table
INSERT INTO Perform (musician_id, song_title)
VALUES
    (1, 'Song 1'),
    (2, 'Song 2'),
    (3, 'Song 3'),
    (4, 'Song 4'),
    (5, 'Song 5');
go


-- clear tables
delete from Perform
delete from Play
delete from Produce
delete from Song
delete from Album
delete from Instrument
delete from Musician