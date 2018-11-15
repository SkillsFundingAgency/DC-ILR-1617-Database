CREATE TABLE [Valid].[ContactPreference] (
    [UKPRN]          INT          NOT NULL,
    [LearnRefNumber] VARCHAR (12) NOT NULL,
    [ContPrefType]   VARCHAR (3)  NOT NULL,
    [ContPrefCode]   INT          NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Valid_ContactPreference]
    ON [Valid].[ContactPreference]([UKPRN] ASC, [LearnRefNumber] ASC);

