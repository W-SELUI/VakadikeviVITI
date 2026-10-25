-- =====================================================================
-- VakadikeviVITI - full database setup (runs on your own computer)
-- This file is run AUTOMATICALLY when the website starts (see Global.asax.vb).
-- It is safe to run many times: it only creates what is missing.
-- =====================================================================

-- ---------- Users ----------
IF OBJECT_ID('dbo.Users', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.Users (
        UserID    INT IDENTITY(1,1) PRIMARY KEY,
        Name      NVARCHAR(100) NOT NULL,
        Username  NVARCHAR(50)  NOT NULL,
        Email     NVARCHAR(100) NOT NULL,
        Password  NVARCHAR(100) NOT NULL,
        Role      NVARCHAR(20)  NOT NULL DEFAULT 'User',
        IsActive  BIT           NOT NULL DEFAULT 1
    );
    CREATE UNIQUE INDEX IX_Users_Username ON dbo.Users(Username);
END
GO

-- ---------- Packages ----------
IF OBJECT_ID('dbo.Packages', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.Packages (
        PackageID   INT IDENTITY(1,1) PRIMARY KEY,
        Name        NVARCHAR(100) NOT NULL,
        Type        NVARCHAR(50),
        Price       DECIMAL(10,2),
        Location    NVARCHAR(100),
        Description NVARCHAR(250)
    );
END
GO

-- ---------- Bookings ----------
IF OBJECT_ID('dbo.Bookings', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.Bookings (
        BookingID       INT IDENTITY(1,1) PRIMARY KEY,
        UserID          INT NOT NULL,
        PackageID       INT NOT NULL,
        BookingDate     DATE NOT NULL,
        NumberOfPeople  INT NOT NULL DEFAULT 1,
        SpecialRequests NVARCHAR(500) NULL,
        CONSTRAINT FK_Bookings_Users    FOREIGN KEY (UserID)    REFERENCES dbo.Users(UserID)       ON DELETE CASCADE,
        CONSTRAINT FK_Bookings_Packages FOREIGN KEY (PackageID) REFERENCES dbo.Packages(PackageID) ON DELETE CASCADE
    );
END
GO

-- ---------- Feedback ----------
IF OBJECT_ID('dbo.Feedback', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.Feedback (
        FeedbackID    INT IDENTITY(1,1) PRIMARY KEY,
        UserID        INT NOT NULL,
        Subject       NVARCHAR(150) NOT NULL,
        Message       NVARCHAR(MAX) NOT NULL,
        SubmittedDate DATETIME NOT NULL DEFAULT GETDATE(),
        IsRead        BIT NOT NULL DEFAULT 0,
        CONSTRAINT FK_Feedback_Users FOREIGN KEY (UserID) REFERENCES dbo.Users(UserID) ON DELETE CASCADE
    );
END
GO

-- ---------- Starting data: packages ----------
-- The PackageID numbers matter: the "Book Now" buttons link to these exact IDs.
IF NOT EXISTS (SELECT 1 FROM dbo.Packages)
BEGIN
    SET IDENTITY_INSERT dbo.Packages ON;
    INSERT INTO dbo.Packages (PackageID, Name, Type, Price, Location, Description) VALUES
    (1,  'Tikos Floating Restaurant',   'Restaurant',     90,  'Suva City',            'Dinner for 2 at Tikos Floating Restaurant'),
    (2,  'AN Phos Restaurant',          'Restaurant',     50,  'Flagstaff Restaurant', 'Lunch at An Phos Restaurant'),
    (3,  'Hiking',                      'Activity',       40,  'Fiji',                 'Guided rainforests hike for 1 at Fiji'),
    (4,  'Snorkelling',                 'Activity',       60,  'Fiji',                 'Snorkelling adventure for 1 at Fiji'),
    (5,  'Kayaking',                    'Activity',       70,  'Fiji',                 'Kayaking adventure for 1 at Fiji'),
    (6,  'Island Hopping',              'Activity',       180, 'Fiji',                 'Island hopping tour for 1 at Fiji'),
    (7,  'Village Hopping',             'Activity',       100, 'Fiji',                 'Cultural tour for 1 at Fiji'),
    (8,  'Grand Pacific Hotel Offer 1', 'Accommodation',  120, 'Suva',                 'Sunset cruise for 2 at Fiji'),
    (9,  'Grand Pacific Hotel Offer 2', 'Accommodation',  30,  'Suva',                 'Beach picnic for 2 at Fiji'),
    (10, 'Outtriger Resort Offer 1',    'Accommodation',  150, 'Coral Coast',          'Scuba diving experience for 1 at Fiji'),
    (11, 'Outtriger Resort Offer 2',    'Accommodation',  150, 'Coral Coast',          'Scuba diving experience for 1 at Fiji'),
    -- 12-14 were linked from the transport pages but never added before. Prices are placeholders - change them if you like.
    (12, 'Fiji Airways Flight',         'Transportation', 250, 'Nadi International Airport', 'Domestic flight booking with Fiji Airways'),
    (13, 'Bus Travel',                  'Transportation', 10,  'Suva / Nadi / Lautoka',      'Bus trip with Pacific Transport'),
    (14, 'Taxi Service',                'Transportation', 30,  'Suva / Nadi / Lautoka',      'Taxi transfer (e.g. airport to hotel)');
    SET IDENTITY_INSERT dbo.Packages OFF;
END
GO

-- ---------- Starting data: admin accounts ----------
-- Log in with the email OR the username.
IF NOT EXISTS (SELECT 1 FROM dbo.Users WHERE Role = 'Admin')
BEGIN
    INSERT INTO dbo.Users (Name, Username, Email, Password, Role, IsActive) VALUES
    ('William Selui',          'wselui',        'wselui@gmail.com',       'Admin000', 'Admin', 1),
    ('Elizabeth Taufa',        'etaufa',        'etaufa@gmail.com',       'Admin001', 'Admin', 1),
    ('Sulieti Nau',            'snau',          'snau@gmail.com',         'Admin002', 'Admin', 1),
    ('Elisapeta Tauheluhelu',  'etauheluhelu',  'etauheluhelu@gmail.com', 'Admin003', 'Admin', 1);
END
GO
