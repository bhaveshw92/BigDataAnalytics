--1. Create a database “Movies”.
CREATE DATABASE Movies;
GO

USE Movies;
GO

--2. Create a “mov” schema under “Movies”
CREATE SCHEMA mov;
GO

--3. Create a table call “Movie_Director “under mov schema with the following specifications￾a. Movie_Director must have the following attribute
CREATE TABLE [mov].[Movie_Director](
	[Director_ID] [int] ,
	[Director_First_Name] [varchar](50) ,
	[Director_Last_Name] [varchar](50) ,
	[Director_Age_in_Years] [int] ,
	[Director_Gender] [varchar](10) ,
	[CreatedOn] [date] 
	);
GO

/*
b. Add the following constraint.
	i. Director_ID: Auto Increment, Primary Key, Not null, clustered index.
	ii. CreatedOn: Not Null, Default as Server date
*/
DROP TABLE [mov].[Movie_Director];
GO
CREATE TABLE [mov].[Movie_Director](
	[Director_ID] [int] IDENTITY(1,1) NOT NULL,
	[Director_First_Name] [varchar](50) ,
	[Director_Last_Name] [varchar](50) ,
	[Director_Age_in_Years] [int] ,
	[Director_Gender] [varchar](10) ,
	[CreatedOn] [date] NOT NULL
	);
GO

ALTER TABLE [mov].[Movie_Director] ADD CONSTRAINT PK_Director_ID PRIMARY KEY CLUSTERED (Director_ID);
GO
ALTER TABLE [mov].[Movie_Director] ADD CONSTRAINT DF_CreatedOn DEFAULT GetDate() FOR CreatedOn; 
GO

/*
c.	Insert the following records based on the following specifications.
	i.	Director_ID: Director ID must be starts from 100 and incremented by 10.
	ii.	CreatedOn: Created as default date as system date.
*/

DROP TABLE [mov].[Movie_Director];
GO
CREATE TABLE [mov].[Movie_Director](
	[Director_ID] [int] IDENTITY(100,10) NOT NULL,
	[Director_First_Name] [varchar](50) ,
	[Director_Last_Name] [varchar](50) ,
	[Director_Age_in_Years] [int] ,
	[Director_Gender] [varchar](10) ,
	[CreatedOn] [date] NOT NULL
	);
GO

ALTER TABLE [mov].[Movie_Director] ADD CONSTRAINT PK_Director_ID PRIMARY KEY CLUSTERED (Director_ID);
GO
ALTER TABLE [mov].[Movie_Director] ADD CONSTRAINT DF_Director_CreatedOn DEFAULT SYSDATETIME() FOR CreatedOn; 
GO

--d.	Data  Insertion
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Kevin', N'Smith', 52, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Miguel', N'Arteta', 41, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Mark', N'Johnson', 58, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Tom', N'Vaughan', 37, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Francis', N'Lawrence', 52, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Adrienne', N'Shelly', 40, N'Female')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'David', N'Slade', 53, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Mark', N'Palansky', 53, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Jeff', N'Lowell', 49, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Simon', N'Curtis', 37, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Marc', N'Lawrence', 95, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Anand', N'Tucker', 59, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Judd', N'Apatow', 55, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Cary', N'Fukunaga', 45, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Mark', N'Helfrich', 49, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Nanette', N'Burstein', 52, N'Female')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'James', N'McAvoy', 44, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Mark', N'Waters', 58, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Seth', N'Gordon', 46, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Alex', N'Kendrick', 52, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Kevin', N'Lima', 60, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Lasse', N'Hallström', 76, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Ewan', N'McGregor', 52, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Rajkumar', N'Hirani', 60, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Ashutosh', N'Gowariker', 59, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Karan', N'Johar', 50, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'S.S', N'Rajamouli', 49, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Sukumar', NULL, 53, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Aditya', N'Chopra', 51, N'Male')
GO
INSERT [mov].[Movie_Director] ([Director_First_Name], [Director_Last_Name], [Director_Age_in_Years], [Director_Gender]) VALUES (N'Umesh', N'Shukla', 52, N'Male')
GO

/*
4. Create a Movies table under mov schema with the following specifications￾a. 
	a. Movies table must have the following attributes.
*/

CREATE TABLE [mov].[Movies](
	[Movie_ID] [int] NULL,
	[Movie_Name] [varchar](50) NULL,
	[Movie_Released_Year] [int] NULL,
	[Movie_Lead_Studio] [varchar](50) NULL,
	[Movie_Language] [varchar](50) NULL,
	[Movie_Category] [varchar](50) NULL,
	[Movie_Duration_in_Min] [int] NULL,
	[Movie_Worldwide_Earning_in_$M] [decimal](15, 2) NULL,
	[Movie_Type] [varchar](50) NULL,
	[Director_ID] [int] NULL,
	[CreatedOn] [date] NULL
);
GO


/*
a.	Add the following constraint.
		i.	Movie_ID: Auto Increment, Primary Key, Not null, clustered index.
		ii.	CreatedOn: Not Null, Default as Server date.
*/

DROP TABLE [mov].[Movies];
GO
CREATE TABLE [mov].[Movies](
	[Movie_ID] [int] IDENTITY(1,1) NOT NULL,
	[Movie_Name] [varchar](50) NULL,
	[Movie_Released_Year] [int] NULL,
	[Movie_Lead_Studio] [varchar](50) NULL,
	[Movie_Language] [varchar](50) NULL,
	[Movie_Category] [varchar](50) NULL,
	[Movie_Duration_in_Min] [int] NULL,
	[Movie_Worldwide_Earning_in_$M] [decimal](15, 2) NULL,
	[Movie_Type] [varchar](50) NULL,
	[Director_ID] [int] NULL,
	[CreatedOn] [date] NOT NULL
);
GO

ALTER TABLE [mov].[Movies] ADD CONSTRAINT PK_Movie_ID PRIMARY KEY CLUSTERED (Movie_ID);
GO
ALTER TABLE [mov].[Movies] ADD CONSTRAINT DF__Movie_CreatedOn DEFAULT GetDate() FOR CreatedOn; 
GO

/*
b. Insert the following records based on the following specifications.
	i. Movie_ID: Movie ID must be starts from 1000 and incremented by 1.
	ii. CreatedOn: Created as default date as system date.
	iii. Director_ID: Foreign key from Movie_Director table.
	iv. Movie_Type: Movie Type as Hollywood and Bollywood.
*/

DROP TABLE [mov].[Movies];
GO
CREATE TABLE [mov].[Movies](
	[Movie_ID] [int] IDENTITY(1000,1) NOT NULL,
	[Movie_Name] [varchar](50) NULL,
	[Movie_Released_Year] [int] NULL,
	[Movie_Lead_Studio] [varchar](50) NULL,
	[Movie_Language] [varchar](50) NULL,
	[Movie_Category] [varchar](50) NULL,
	[Movie_Duration_in_Min] [int] NULL,
	[Movie_Worldwide_Earning_in_$M] [decimal](15, 2) NULL,
	[Movie_Type] [varchar](50) NULL,
	[Director_ID] [int] NULL,
	[CreatedOn] [date] NOT NULL
);
GO

ALTER TABLE [mov].[Movies] ADD CONSTRAINT PK_Movie_ID PRIMARY KEY CLUSTERED (Movie_ID);
GO
ALTER TABLE [mov].[Movies] ADD CONSTRAINT DF__Movie_CreatedOn DEFAULT SYSDATETIME() FOR CreatedOn; 
GO
ALTER TABLE [mov].[Movies] ADD CONSTRAINT FK_Director_ID FOREIGN KEY (Director_ID) REFERENCES [mov].[Movie_Director](Director_ID);
GO
ALTER TABLE [mov].[Movies] ADD CONSTRAINT CK_Movie_Type CHECK(Movie_Type='Hollywood' OR Movie_Type='Bollywood');
GO


-- c.	Date Insertion

INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Zack and Miri Make a Porno', 2008, N'The Weinstein Company', N'English', N'Romance', 101, CAST(41.94 AS Decimal(15, 2)), N'Hollywood', 100)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Youth in Revolt', 2010, N'The Weinstein Company', N'English', N'Comedy', 90, CAST(19.62 AS Decimal(15, 2)), N'Hollywood', 110)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'When in Rome', 2010, N'Disney', N'English', N'Comedy', 91, CAST(43.04 AS Decimal(15, 2)), N'Hollywood', 120)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'What Happens in Vegas', 2008, N'Fox', N'English', N'Comedy', 99, CAST(219.37 AS Decimal(15, 2)), N'Hollywood', 130)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Water For Elephants', 2011, N'20th Century Fox', N'English', N'Drama', 120, CAST(117.09 AS Decimal(15, 2)), N'Hollywood', 140)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Waitress', 2007, N'Independent', N'English', N'Romance', 108, CAST(22.18 AS Decimal(15, 2)), N'Hollywood', 150)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Twilight', 2008, N'Summit', N'English', N'Romance', 122, CAST(376.66 AS Decimal(15, 2)), N'Hollywood', 160)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Penelope', 2008, N'Summit', N'English', N'Comedy', 144, CAST(20.74 AS Decimal(15, 2)), N'Hollywood', 170)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Over Her Dead Body', 2008, N'New Line', N'English', N'Comedy', 95, CAST(20.71 AS Decimal(15, 2)), N'Hollywood', 180)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'My Week with Marilyn', 2011, N'The Weinstein Company', N'English', N'Drama', 99, CAST(8.26 AS Decimal(15, 2)), N'Hollywood', 190)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Music and Lyrics', 2007, N'Warner Bros.', N'English', N'Romance', 104, CAST(145.90 AS Decimal(15, 2)), N'Hollywood', 200)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Leap Year', 2010, N'Universal', N'English', N'Comedy', 100, CAST(32.59 AS Decimal(15, 2)), N'Hollywood', 210)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Knocked Up', 2007, N'Universal', N'English', N'Comedy', 129, CAST(219.00 AS Decimal(15, 2)), N'Hollywood', 220)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Jane Eyre', 2011, N'Universal', N'English', N'Romance', 120, CAST(30.15 AS Decimal(15, 2)), N'Hollywood', 230)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Good Luck Chuck', 2007, N'Lionsgate', N'English', N'Comedy', 101, CAST(59.19 AS Decimal(15, 2)), N'Hollywood', 240)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Going the Distance', 2010, N'Warner Bros.', N'English', N'Comedy', 103, CAST(42.05 AS Decimal(15, 2)), N'Hollywood', 250)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Gnomeo and Juliet', 2011, N'Disney', N'English', N'Animation', 84, CAST(193.97 AS Decimal(15, 2)), N'Hollywood', 260)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Ghosts of Girlfriends Past', 2009, N'Warner Bros.', N'English', N'Comedy', 100, CAST(102.22 AS Decimal(15, 2)), N'Hollywood', 270)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Four Christmases', 2008, N'Warner Bros.', N'English', N'Comedy', 88, CAST(161.83 AS Decimal(15, 2)), N'Hollywood', 280)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Fireproof', 2008, N'Independent', N'English', N'Drama', 122, CAST(33.47 AS Decimal(15, 2)), N'Hollywood', 290)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Enchanted', 2007, N'Disney', N'English', N'Comedy', 107, CAST(340.49 AS Decimal(15, 2)), N'Hollywood', 300)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Dear John', 2010, N'Sony', N'English', N'Drama', 108, CAST(114.97 AS Decimal(15, 2)), N'Hollywood', 310)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Beginners', 2011, N'Independent', N'English', N'Comedy', 105, CAST(14.31 AS Decimal(15, 2)), N'Hollywood', 320)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'3 Idiots', 2009, N'Vinod Chopra Films', N'Hindi', N'Comedy', 171, CAST(4000.00 AS Decimal(15, 2)), N'Bollywood', 330)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Lagaan', 2001, N'Aamir Khan Productions', N'Hindi', N'Romance ', 224, CAST(659.00 AS Decimal(15, 2)), N'Bollywood', 340)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'My Name Is Khan', 2010, N'Dharma Productions', N'Hindi', N'Drama', 165, CAST(48.77 AS Decimal(15, 2)), N'Bollywood', 350)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Baahubali', 2015, N'Arka Media Works', N'Telugu', N'Thriller', 159, CAST(6500.00 AS Decimal(15, 2)), N'Bollywood', 360)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Dilwale Dulhania Le Jayenge', 1995, N'Yash Chopra', N'Hindi', N'Romance', 189, CAST(2000.00 AS Decimal(15, 2)), N'Bollywood', 380)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Oh My God', 2012, N'', N'Hindi', N'Comedy', 165, CAST(1200.00 AS Decimal(15, 2)), N'Bollywood', 390)
GO
INSERT [mov].[Movies] ([Movie_Name], [Movie_Released_Year], [Movie_Lead_Studio], [Movie_Language], [Movie_Category], [Movie_Duration_in_Min], [Movie_Worldwide_Earning_in_$M], [Movie_Type], [Director_ID]) VALUES (N'Pushpa', 2021, N'Mythri Movie Makers', N'Telugu', N'Drama', 179, CAST(3730.00 AS Decimal(15, 2)), N'Bollywood', 370)
GO

/*
5.	Create a Movie_Actor table under mov schema with the following specifications-
	a.	Movie_Actor table must have the following attributes
*/


CREATE TABLE [mov].[Movie_Actor](
	[Actor_ID] [int] NULL,
	[Actor_First_Name] [varchar](50) NULL,
	[Actor_Last_Name] [varchar](50) NULL,
	[Actor_Age_in_Years] [int] NULL,
	[Actor_Location] [varchar](50) NULL,
	[Movie_ID] [int] NULL,
	[CreatedOn] [date] NULL
);
GO

/*
b.	Add the following constraint.
	i.	Actor_ID: Auto Increment, Primary Key, Not null, clustered index.
	ii.	CreatedOn: Not Null, Default as Server date.
*/

DROP TABLE [mov].[Movie_Actor];
GO
CREATE TABLE [mov].[Movie_Actor](
	[Actor_ID] [int] IDENTITY(1,1) NOT NULL,
	[Actor_First_Name] [varchar](50) NULL,
	[Actor_Last_Name] [varchar](50) NULL,
	[Actor_Age_in_Years] [int] NULL,
	[Actor_Location] [varchar](50) NULL,
	[Movie_ID] [int] NULL,
	[CreatedOn] [date] NOT NULL
); 
GO

ALTER TABLE [mov].[Movie_Actor] ADD CONSTRAINT PK_Actor_ID PRIMARY KEY CLUSTERED (Actor_ID);
GO
ALTER TABLE [mov].[Movie_Actor] ADD CONSTRAINT DF__Actor_CreatedOn DEFAULT GetDate() FOR CreatedOn; 
GO


/*
c.	Insert the following records based on the following specifications.
	i.	Actor_ID: Actor ID must be starts from 10 and incremented by 1.
	ii.	CreatedOn: Created as default date as system date.
	iii. Movie_ID: Foreign key from Movies table.
*/

DROP TABLE [mov].[Movie_Actor];
GO
CREATE TABLE [mov].[Movie_Actor](
	[Actor_ID] [int] IDENTITY(10,1) NOT NULL,
	[Actor_First_Name] [varchar](50) NULL,
	[Actor_Last_Name] [varchar](50) NULL,
	[Actor_Age_in_Years] [int] NULL,
	[Actor_Location] [varchar](50) NULL,
	[Movie_ID] [int] NULL,
	[CreatedOn] [date] NOT NULL
); 
GO

ALTER TABLE [mov].[Movie_Actor] ADD CONSTRAINT PK_Actor_ID PRIMARY KEY CLUSTERED (Actor_ID);
GO
ALTER TABLE [mov].[Movie_Actor] ADD CONSTRAINT DF__Actor_CreatedOn DEFAULT SYSDATETIME() FOR CreatedOn; 
GO
ALTER TABLE [mov].[Movie_Actor] ADD CONSTRAINT FK_Movie_Actor_Movie_ID FOREIGN KEY (Movie_ID) REFERENCES [mov].[Movies](Movie_ID);
GO

--d.	Data Insertion

INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Seth', N'Rogen', 53, N'Los Angeles', 1000)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Michael', N'Cera', 49, N'New York', 1001)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Josh', N'Duhamel', 37, N'North Dakota', 1002)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Jason', N'Sudeikis', 60, N'Kansas', 1003)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Robert', N'Pattinson', 45, N'Los Angeles', 1004)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Nathan', N'Fillion', 55, N'Canada', 1005)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Robert', N'Pattinson', 45, N'Los Angeles', 1006)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'James', N'McAvoy', 49, N'Scotland', 1007)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Paul', N'Rudd', 52, N'New York', 1008)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Kenneth', N'Branagh', 44, N'Northern Ireland', 1009)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Hugh', N'Grant', 58, N'London', 1010)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Matthew', N'Goode', 46, N'England', 1011)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Judd', N'Apatow', 58, N'Los Angeles', 1012)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Michael', N'Fassbender', 46, N'Germany', 1013)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Dane', N'Cook', 52, N'United States', 1014)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Jason', N'Sudeikis', 60, N'Kansas', 1015)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Kelly', N'Asbury', 76, N'United States', 1016)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Matthew', N'McConaughey', 52, N'Los Angeles', 1017)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Vince', N'Vaughn', 60, N'Minnesota', 1018)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Kirk', N'Cameron', 59, N'United States', 1019)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'James', N'Marsden', 50, N'Columbia', 1020)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Channing', N'Tatum', 58, N'Alabama', 1021)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Mike', N'Mills', 37, N'New York', 1022)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Aamir', N'Khan', 52, N'India', 1023)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Aamir', N'Khan', 52, N'India', 1024)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Shah Rukh', N'Khan', 53, N'India', 1025)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Prabhas', NULL, 53, N'India', 1026)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Allu', N'Arjun', 49, N'India', 1027)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Shah Rukh', N'Khan', 53, N'India', 1028)
GO
INSERT [mov].[Movie_Actor] ( [Actor_First_Name], [Actor_Last_Name], [Actor_Age_in_Years], [Actor_Location], [Movie_ID]) VALUES (N'Akshay', N'Kumar', 50, N'India', 1029)
GO

/*
6.	Create a Movie_Rating table under mov schema with the following specifications-
	a.	Movie_Rating table must have the following attributes.
*/

CREATE TABLE [mov].[Movie_Rating](
	[Movie_Rating_ID] [int] NULL,
	[Rating_Audience_Score] [varchar](50) NULL,
	[Rating_Rotten_Tomatoes] [varchar](50) NULL,
	[Movie_ID] [int] NULL,
	[CreatedOn] [date] NULL
);

/*
b.	Add the following constraint.
	i.	Movie_Rating_ID: Auto Increment, Primary Key, Not null, clustered index.
	ii.	CreatedOn: Not Null, Default as Server date.
*/

DROP TABLE [mov].[Movie_Rating];
GO
CREATE TABLE [mov].[Movie_Rating](
	[Movie_Rating_ID] [int] IDENTITY(1,1) NOT NULL,
	[Rating_Audience_Score] [varchar](50) NULL,
	[Rating_Rotten_Tomatoes] [varchar](50) NULL,
	[Movie_ID] [int] NULL,
	[CreatedOn] [date] NOT NULL
);
GO

ALTER TABLE [mov].[Movie_Rating] ADD CONSTRAINT PK_Movie_Rating_ID PRIMARY KEY CLUSTERED (Movie_Rating_ID);
GO
ALTER TABLE [mov].[Movie_Rating] ADD CONSTRAINT DF__Movie_Rating_CreatedOn DEFAULT GetDate() FOR CreatedOn; 
GO


/*
c.	Insert the following records based on the following specifications.
	iv.	Movie_Rating_ID: Actor ID must be starts from 1 and incremented by 1.
	v.	CreatedOn: Created as default date as system date.
	vi.	Movie_ID: Foreign key from Movies table.
*/

DROP TABLE [mov].[Movie_Rating];
GO
CREATE TABLE [mov].[Movie_Rating](
	[Movie_Rating_ID] [int] IDENTITY(1,1) NOT NULL,
	[Rating_Audience_Score] [varchar](50) NULL,
	[Rating_Rotten_Tomatoes] [varchar](50) NULL,
	[Movie_ID] [int] NULL,
	[CreatedOn] [date] NOT NULL
);
GO

ALTER TABLE [mov].[Movie_Rating] ADD CONSTRAINT PK_Movie_Rating_ID PRIMARY KEY CLUSTERED (Movie_Rating_ID);
GO
ALTER TABLE [mov].[Movie_Rating] ADD CONSTRAINT DF__Movie_Rating_CreatedOn DEFAULT SYSDATETIME() FOR CreatedOn; 
GO
ALTER TABLE [mov].[Movie_Rating] ADD CONSTRAINT FK_Movie_Rating_Movie_ID FOREIGN KEY (Movie_ID) REFERENCES [mov].[Movies](Movie_ID);
GO

--d.	Data Insertion

INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'70', N'64', 1000)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'52', N'68', 1001)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'44', N'15', 1002)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'72', N'28', 1003)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'72', N'60', 1004)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'67', N'89', 1005)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'82', N'49', 1006)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'74', N'52', 1007)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'47', N'15', 1008)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'84', N'83', 1009)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'70', N'63', 1010)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'49', N'21', 1011)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'83', N'91', 1012)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'77', N'85', 1013)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'61', N'3', 1014)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'56', N'53', 1015)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'52', N'56', 1016)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'47', N'27', 1017)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'52', N'26', 1018)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'51', N'40', 1019)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'80', N'93', 1020)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'66', N'29', 1021)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'80', N'84', 1022)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'95', N'100', 1023)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'81', N'95', 1024)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'79', N'83', 1025)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'80', N'90', 1026)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'76', N'82', 1027)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'85', N'100', 1028)
GO
INSERT [mov].[Movie_Rating] ([Rating_Audience_Score], [Rating_Rotten_Tomatoes], [Movie_ID]) VALUES (N'81', N'74', 1029)
GO

------------------------------------------------------------
/*7.	Write the following Query based on the above datasets.
	a.	List all the Movies information from the Movies table.
*/
SELECT [Movie_ID]
      ,[Movie_Name]
      ,[Movie_Released_Year]
      ,[Movie_Lead_Studio]
      ,[Movie_Language]
      ,[Movie_Category]
      ,[Movie_Duration_in_Min]
      ,[Movie_Worldwide_Earning_in_$M]
      ,[Movie_Type]
      ,[Director_ID]
  FROM [Movies].[mov].[Movies];
GO

--b.	List all the Director information from the Director table.
SELECT [Director_ID]
      ,[Director_First_Name]
      ,[Director_Last_Name]
      ,[Director_Age_in_Years]
      ,[Director_Gender]
      ,[CreatedOn]
  FROM [Movies].[mov].[Movie_Director];
GO

--c.	List all the Actor information from the Actor table.
SELECT [Actor_ID]
      ,[Actor_First_Name]
      ,[Actor_Last_Name]
      ,[Actor_Age_in_Years]
      ,[Actor_Location]
      ,[Movie_ID]
  FROM [Movies].[mov].[Movie_Actor];
GO

--d.	List all the Rating information from the Rating table.
SELECT [Movie_Rating_ID]
      ,[Rating_Audience_Score]
      ,[Rating_Rotten_Tomatoes]
      ,[Movie_ID]
  FROM [Movies].[mov].[Movie_Rating];
GO

--e.	List all the movie released in year “2010”.
SELECT [Movie_ID]
      ,[Movie_Name]
      ,[Movie_Released_Year]
      ,[Movie_Lead_Studio]
      ,[Movie_Language]
      ,[Movie_Category]
      ,[Movie_Duration_in_Min]
      ,[Movie_Worldwide_Earning_in_$M]
      ,[Movie_Type]
      ,[Director_ID]
  FROM [Movies].[mov].[Movies]
  WHERE [Movie_Released_Year] = '2010';
GO

--f.	List all the movie released by “The Weinstein Company” studio.
SELECT [Movie_ID]
      ,[Movie_Name]
      ,[Movie_Released_Year]
      ,[Movie_Lead_Studio]
      ,[Movie_Language]
      ,[Movie_Category]
      ,[Movie_Duration_in_Min]
      ,[Movie_Worldwide_Earning_in_$M]
      ,[Movie_Type]
      ,[Director_ID]
  FROM [Movies].[mov].[Movies]
  WHERE [Movie_Lead_Studio] = 'The Weinstein Company';
GO

--g.	List all the movie released in “English”.
SELECT [Movie_ID]
      ,[Movie_Name]
      ,[Movie_Released_Year]
      ,[Movie_Lead_Studio]
      ,[Movie_Language]
      ,[Movie_Category]
      ,[Movie_Duration_in_Min]
      ,[Movie_Worldwide_Earning_in_$M]
      ,[Movie_Type]
      ,[Director_ID]
  FROM [Movies].[mov].[Movies]
  WHERE [Movie_Language] = 'English';
GO

--h.	List all the movie whose name starts with ‘G’.
SELECT [Movie_ID]
      ,[Movie_Name]
      ,[Movie_Released_Year]
      ,[Movie_Lead_Studio]
      ,[Movie_Language]
      ,[Movie_Category]
      ,[Movie_Duration_in_Min]
      ,[Movie_Worldwide_Earning_in_$M]
      ,[Movie_Type]
      ,[Director_ID]
  FROM [Movies].[mov].[Movies]
  WHERE [Movie_Name] LIKE 'G%';
GO

--i.	Display all the movie under “Comedy” category.
SELECT [Movie_ID]
      ,[Movie_Name]
      ,[Movie_Released_Year]
      ,[Movie_Lead_Studio]
      ,[Movie_Language]
      ,[Movie_Category]
      ,[Movie_Duration_in_Min]
      ,[Movie_Worldwide_Earning_in_$M]
      ,[Movie_Type]
      ,[Director_ID]
  FROM [Movies].[mov].[Movies]
  WHERE [Movie_Category] = 'Comedy';
GO

--j.	Display all the movie where movie type is “Hollywood”.
SELECT [Movie_ID]
      ,[Movie_Name]
      ,[Movie_Released_Year]
      ,[Movie_Lead_Studio]
      ,[Movie_Language]
      ,[Movie_Category]
      ,[Movie_Duration_in_Min]
      ,[Movie_Worldwide_Earning_in_$M]
      ,[Movie_Type]
      ,[Director_ID]
  FROM [Movies].[mov].[Movies]
  WHERE [Movie_Type] = 'Hollywood';
GO

--k.	Display all the “Female” directors.
SELECT [Director_ID]
      ,[Director_First_Name]
      ,[Director_Last_Name]
      ,[Director_Age_in_Years]
      ,[Director_Gender]
  FROM [Movies].[mov].[Movie_Director]
  WHERE [Director_Gender] = 'Female';
GO

  --l.	Display all the director whose Age is more than 45 years.
SELECT [Director_ID]
      ,[Director_First_Name]
      ,[Director_Last_Name]
      ,[Director_Age_in_Years]
      ,[Director_Gender]
  FROM [Movies].[mov].[Movie_Director]
  WHERE [Director_Age_in_Years] > 45;
GO

--m.	Display all the Actors from “Los Angeles”.
SELECT [Actor_ID]
      ,[Actor_First_Name]
      ,[Actor_Last_Name]
      ,[Actor_Age_in_Years]
      ,[Actor_Location]
      ,[Movie_ID]
  FROM [Movies].[mov].[Movie_Actor]
  WHERE [Actor_Location] = 'Los Angeles';
GO

--n.	Display all the Actor whose Age is less than 50 years.
SELECT [Actor_ID]
      ,[Actor_First_Name]
      ,[Actor_Last_Name]
      ,[Actor_Age_in_Years]
      ,[Actor_Location]
      ,[Movie_ID]
  FROM [Movies].[mov].[Movie_Actor]
  WHERE [Actor_Age_in_Years] < 50;
GO

--o.	Display all the Actor whose name is starts from “J”.
SELECT [Actor_ID]
      ,[Actor_First_Name]
      ,[Actor_Last_Name]
      ,[Actor_Age_in_Years]
      ,[Actor_Location]
      ,[Movie_ID]
  FROM [Movies].[mov].[Movie_Actor]
  WHERE [Actor_First_Name] LIKE 'J%';
GO

--p.	Display all the Actor who is from “Los Angeles” or “New York”.
SELECT [Actor_ID]
      ,[Actor_First_Name]
      ,[Actor_Last_Name]
      ,[Actor_Age_in_Years]
      ,[Actor_Location]
      ,[Movie_ID]
  FROM [Movies].[mov].[Movie_Actor]
  WHERE [Actor_Location] = 'Los Angeles' OR [Actor_Location] = 'New York';
GO

/*
q.	List Director_FullName, Director_Age_in_Years, Director_Gender from Director
	[Director_FullName =Director_First_Name + " " + Director_Last_Name]
*/
SELECT CONCAT([Director_First_Name], + ' ' + [Director_Last_Name]) AS Director_FullName
      ,[Director_Age_in_Years]
      ,[Director_Gender]
  FROM [Movies].[mov].[Movie_Director];
GO

/*
r.	List Director_FullName, Director_Age_in_Years, Director_Gender from Director whose Age is less than 45 years. 
[Director_FullName =Director_First_Name + " " + Director_Last_Name] 
*/
SELECT CONCAT([Director_First_Name], + ' ' + [Director_Last_Name]) AS Director_FullName
      ,[Director_Age_in_Years]
      ,[Director_Gender]
  FROM [Movies].[mov].[Movie_Director]
  WHERE [Director_Age_in_Years] < 45;
GO

/*
8. Write the following Query based on the above datasets.
a. Display all the Movies and their Actors information based on the relationship.
*/
SELECT
    m.[Movie_ID],
    m.[Movie_Name],
    m.[Movie_Released_Year],
    m.[Movie_Lead_Studio],
    m.[Movie_Language],
    m.[Movie_Category],
    m.[Movie_Duration_in_Min],
    m.[Movie_Worldwide_Earning_in_$M],
    m.[Movie_Type],
    ma.[Actor_ID],
    ma.[Actor_First_Name],
    ma.[Actor_Last_Name],
    ma.[Actor_Age_in_Years],
    ma.[Actor_Location]
FROM
    [Movies].[mov].[Movies] AS m
INNER JOIN
    [Movies].[mov].[Movie_Actor] AS ma ON m.[Movie_ID] = ma.[Movie_ID];


--b. Display the Movies name and their Ratings.

SELECT
    m.[Movie_Name],
    mr.[Rating_Audience_Score],
    mr.[Rating_Rotten_Tomatoes]
FROM
    [Movies].[mov].[Movies] AS m
INNER JOIN
    [Movies].[mov].[Movie_Rating] AS mr ON m.[Movie_ID] = mr.[Movie_ID];

--c. Display all the Movies, Actors, and Directors information based on the relationship.

SELECT
    m.[Movie_ID],
    m.[Movie_Name],
    m.[Movie_Released_Year],
    m.[Movie_Lead_Studio],
    m.[Movie_Language],
    m.[Movie_Category],
    m.[Movie_Duration_in_Min],
    m.[Movie_Worldwide_Earning_in_$M],
    m.[Movie_Type],
    ma.[Actor_ID],
    ma.[Actor_First_Name],
    ma.[Actor_Last_Name],
    ma.[Actor_Age_in_Years],
    ma.[Actor_Location],
	md.[Director_ID],
    md.[Director_First_Name],
    md.[Director_Last_Name],
    md.[Director_Age_in_Years],
    md.[Director_Gender]
FROM
    [Movies].[mov].[Movies] AS m
INNER JOIN
    [Movies].[mov].[Movie_Actor] AS ma ON m.[Movie_ID] = ma.[Movie_ID]
INNER JOIN
	[Movies].[mov].[Movie_Director] AS md ON m.[Director_ID] = md.[Director_ID];


--d. Display all the Movies, Actors, Directors, and Movie Rating information based on the relationship
SELECT
    m.[Movie_ID],
    m.[Movie_Name],
    m.[Movie_Released_Year],
    m.[Movie_Lead_Studio],
    m.[Movie_Language],
    m.[Movie_Category],
    m.[Movie_Duration_in_Min],
    m.[Movie_Worldwide_Earning_in_$M],
    m.[Movie_Type],
    ma.[Actor_ID],
    ma.[Actor_First_Name],
    ma.[Actor_Last_Name],
    ma.[Actor_Age_in_Years],
    ma.[Actor_Location],
	md.[Director_ID],
    md.[Director_First_Name],
    md.[Director_Last_Name],
    md.[Director_Age_in_Years],
    md.[Director_Gender],
    mr.[Movie_Rating_ID],
    mr.[Rating_Audience_Score],
    mr.[Rating_Rotten_Tomatoes]
FROM
    [Movies].[mov].[Movies] AS m
INNER JOIN
    [Movies].[mov].[Movie_Actor] AS ma ON m.[Movie_ID] = ma.[Movie_ID]
INNER JOIN
	[Movies].[mov].[Movie_Director] AS md ON m.[Director_ID] = md.[Director_ID]
INNER JOIN
    [Movies].[mov].[Movie_Rating] AS mr ON m.[Movie_ID] = mr.[Movie_ID];


/*
e. Display all the Movies, Actors, Directors, and Movie Rating information whose
Rating_Audience_Score is more than 80% based on the relationship.
*/

SELECT
    m.[Movie_ID],
    m.[Movie_Name],
    m.[Movie_Released_Year],
    m.[Movie_Lead_Studio],
    m.[Movie_Language],
    m.[Movie_Category],
    m.[Movie_Duration_in_Min],
    m.[Movie_Worldwide_Earning_in_$M],
    m.[Movie_Type],
    ma.[Actor_ID],
    ma.[Actor_First_Name],
    ma.[Actor_Last_Name],
    ma.[Actor_Age_in_Years],
    ma.[Actor_Location],
	md.[Director_ID],
    md.[Director_First_Name],
    md.[Director_Last_Name],
    md.[Director_Age_in_Years],
    md.[Director_Gender],
    mr.[Movie_Rating_ID],
    mr.[Rating_Audience_Score],
    mr.[Rating_Rotten_Tomatoes]
FROM
    [Movies].[mov].[Movies] AS m
INNER JOIN
    [Movies].[mov].[Movie_Actor] AS ma ON m.[Movie_ID] = ma.[Movie_ID]
INNER JOIN
	[Movies].[mov].[Movie_Director] AS md ON m.[Director_ID] = md.[Director_ID]
INNER JOIN
    [Movies].[mov].[Movie_Rating] AS mr ON m.[Movie_ID] = mr.[Movie_ID]
WHERE mr.[Rating_Audience_Score] > 80;


--f. Display all the Movies information whose Rating_Rotten_Tomatoes is more than 90%.
SELECT
    m.[Movie_ID],
    m.[Movie_Name],
    m.[Movie_Released_Year],
    m.[Movie_Lead_Studio],
    m.[Movie_Language],
    m.[Movie_Category],
    m.[Movie_Duration_in_Min],
    m.[Movie_Worldwide_Earning_in_$M],
    m.[Movie_Type],
    mr.[Rating_Rotten_Tomatoes]
FROM
    [Movies].[mov].[Movies] AS m
INNER JOIN
    [Movies].[mov].[Movie_Rating] AS mr ON m.[Movie_ID] = mr.[Movie_ID]
WHERE mr.[Rating_Rotten_Tomatoes] > 90;


/*
9. Write the following Query based on the above datasets.
a. Create new table MovieCopy and copy all records of Movie table.
*/

SELECT *
INTO [mov].[MovieCopy]
FROM [mov].[Movies];

--b. Create a new table DirectorCopy and copy only the schema of director table.

SELECT *
INTO [mov].[DirectorCopy]
FROM [mov].[Movie_Director]
WHERE 1 = 0;

--c. Create new table ActorCopy and copy all records of Actor table.

SELECT *
INTO [mov].[ActorCopy]
FROM [mov].[Movie_Actor];

--d. Create new table RatingCopy and copy all records of Rating table.

SELECT *
INTO [mov].[RatingCopy]
FROM [mov].[Movie_Rating];

--e. Create new table RatingCopies and copy only the schema from Rating table.

SELECT *
INTO [mov].[RatingCopies]
FROM [mov].[Movie_Rating]
WHERE 1 = 0;


/*
10. Write the following Query based on the above datasets.
a. Delete all the record from RatingCopy table.
*/

DELETE FROM [mov].[RatingCopy];

--b. Delete all the movie from MovieCopy whose released in year “2010”.

DELETE FROM [mov].[MovieCopy]
WHERE [Movie_Released_Year] = 2010;

--c. Delete all the movie from MovieCopy where language is ‘Hindi.

DELETE FROM [mov].[MovieCopy]
WHERE [Movie_Language] = 'Hindi';


--d. Delete all the movie from MovieCopy where Rating_Audience_Score is less than 80%.

DELETE FROM [mov].[MovieCopy]
WHERE EXISTS (
    SELECT 1
    FROM [Movies].[mov].[Movie_Rating] AS mr
    WHERE [mov].[MovieCopy].[Movie_ID] = mr.[Movie_ID]
    AND mr.[Rating_Audience_Score] < 80
);

--e. Delete all the movie from MovieCopy where Rating_Rotten_Tomatoes is less than 70%.

DELETE FROM [mov].[MovieCopy]
WHERE EXISTS (
    SELECT 1
    FROM [Movies].[mov].[Movie_Rating] AS mr
    WHERE [mov].[MovieCopy].[Movie_ID] = mr.[Movie_ID]
    AND mr.[Rating_Rotten_Tomatoes] < 70
);

























