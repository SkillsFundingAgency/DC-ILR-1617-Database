CREATE TABLE [Invalid].[ContactPreference] (
    [ContactPreference_Id] INT           NULL,
    [Learner_Id]           INT           NOT NULL,
    [UKPRN]                INT           NOT NULL,
    [LearnRefNumber]       VARCHAR (100) NULL,
    [ContPrefType]         VARCHAR (100) NULL,
    [ContPrefCode]         BIGINT        NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Parent_Invalid_ContactPreference]
    ON [Invalid].[ContactPreference]([Learner_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Invalid_ContactPreference]
    ON [Invalid].[ContactPreference]([UKPRN] ASC, [LearnRefNumber] ASC, [ContPrefType] ASC);

