use Projet
go

-- Insert Users
INSERT INTO Users (Username, PasswordHash, Email, DateOfBirth, Country)
VALUES 
('user1', 'hashed_password1', 'user1@example.com', '1990-01-01', 'USA'),
('user2', 'hashed_password2', 'user2@example.com', '1992-02-02', 'UK'),
('user3', 'hashed_password3', 'user3@example.com', '1988-03-03', 'Canada');

-- Insert Artists
INSERT INTO Artists (Name, Genre)
VALUES 
('Artist1', 'Rock'),
('Artist2', 'Pop'),
('Artist3', 'Jazz');

-- Insert Albums
INSERT INTO Albums (Title, ReleaseDate, ArtistID)
VALUES 
('Album1', '2020-01-01', 1),
('Album2', '2021-06-15', 2),
('Album3', '2019-09-30', 3);

-- Insert Songs
INSERT INTO Songs (Title, Duration, AlbumID)
VALUES 
('Song1', 180, 1),
('Song2', 240, 1),
('Song3', 200, 2),
('Song4', 220, 2),
('Song5', 210, 3),
('Song6', 230, 3);

-- Insert SongArtists
INSERT INTO SongArtists (SongID, ArtistID, IsMainArtist)
VALUES 
(1, 1, 1),
(2, 1, 1),
(3, 2, 1),
(4, 2, 1),
(5, 3, 1),
(6, 3, 1);

-- Insert Playlists
INSERT INTO Playlists (Name, UserID)
VALUES 
('Rock Playlist', 1),
('Pop Hits', 2),
('Jazz Collection', 3);

-- Insert PlaylistSongs
INSERT INTO PlaylistSongs (PlaylistID, SongID)
VALUES 
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6);

-- Insert Follows
INSERT INTO Follows (UserID, ArtistID)
VALUES 
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 1),
(3, 3);

-- Insert Listens
INSERT INTO Listens (UserID, SongID, ListenDateTime)
VALUES 
(1, 1, '2023-07-27 10:00:00'),
(1, 2, '2023-07-27 10:05:00'),
(2, 3, '2023-07-27 11:00:00'),
(2, 4, '2023-07-27 11:05:00'),
(3, 5, '2023-07-27 12:00:00'),
(3, 6, '2023-07-27 12:05:00');

select * from Users