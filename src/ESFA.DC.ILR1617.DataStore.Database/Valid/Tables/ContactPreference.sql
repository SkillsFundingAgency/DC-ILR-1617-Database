CREATE TABLE [Valid].[ContactPreference] (
	[ID]			 INT IDENTITY (1,1) NOT NULL,
    [UKPRN]          INT          NOT NULL,
    [LearnRefNumber] VARCHAR (12) NOT NULL,
    [ContPrefType]   VARCHAR (3)  NOT NULL,
    [ContPrefCode]   INT          NULL,
	CONSTRAINT [PK_ContactPreference] PRIMARY KEY ([ID])
);


GO
CREATE NONCLUSTERED INDEX [IX_Valid_ContactPreference]
    ON [Valid].[ContactPreference]([UKPRN] ASC, [LearnRefNumber] ASC);

