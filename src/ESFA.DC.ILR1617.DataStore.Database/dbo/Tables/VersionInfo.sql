CREATE TABLE [dbo].[VersionInfo] (
	[Id]      INT			IDENTITY (1, 1) NOT NULL,
    [Version] INT			DEFAULT ((0)) NOT NULL,
    [Date]    DATE			NOT NULL,
	CONSTRAINT [PK_VersionInfo] PRIMARY KEY ([ID])
);

