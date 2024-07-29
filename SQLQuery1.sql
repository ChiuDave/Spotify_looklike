create database Projet
go
use Projet
go

-- Create Users table
CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY,
    Username NVARCHAR(50) NOT NULL UNIQUE,
    PasswordHash NVARCHAR(255) NOT NULL,
    Email NVARCHAR(255) NOT NULL UNIQUE,
    DateOfBirth DATE,
    Country NVARCHAR(50)
);

-- Create Artists table
CREATE TABLE Artists (
    ArtistID INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(255) NOT NULL,
    Genre NVARCHAR(50)
);

-- Create Albums table
CREATE TABLE Albums (
    AlbumID INT PRIMARY KEY IDENTITY,
    Title NVARCHAR(255) NOT NULL,
    ReleaseDate DATE,
    ArtistID INT,
    FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID)
);

-- Create Songs table
CREATE TABLE Songs (
    SongID INT PRIMARY KEY IDENTITY,
    Title NVARCHAR(255) NOT NULL,
    Duration INT,
    AlbumID INT,
    FOREIGN KEY (AlbumID) REFERENCES Albums(AlbumID)
);

-- Create SongArtists table to represent the many-to-many relationship between Songs and Artists
CREATE TABLE SongArtists (
    SongID INT,
    ArtistID INT,
    IsMainArtist BIT,
    PRIMARY KEY (SongID, ArtistID),
    FOREIGN KEY (SongID) REFERENCES Songs(SongID),
    FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID)
);

-- Create Playlists table
CREATE TABLE Playlists (
    PlaylistID INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(255) NOT NULL,
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Create PlaylistSongs table to represent the many-to-many relationship between Playlists and Songs
CREATE TABLE PlaylistSongs (
    PlaylistID INT,
    SongID INT,
    PRIMARY KEY (PlaylistID, SongID),
    FOREIGN KEY (PlaylistID) REFERENCES Playlists(PlaylistID),
    FOREIGN KEY (SongID) REFERENCES Songs(SongID)
);

-- Create Follows table to represent the many-to-many relationship between Users and Artists
CREATE TABLE Follows (
    UserID INT,
    ArtistID INT,
    PRIMARY KEY (UserID, ArtistID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID)
);

-- Create Listens table to track the history of songs listened to by users
CREATE TABLE Listens (
    ListenID INT PRIMARY KEY IDENTITY,
    UserID INT,
    SongID INT,
    ListenDateTime DATETIME,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (SongID) REFERENCES Songs(SongID)
);
