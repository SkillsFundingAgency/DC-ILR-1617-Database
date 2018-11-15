CREATE TABLE [Invalid].[LearnerContact] (
    [LearnerContact_Id] INT            NULL,
    [Learner_Id]        INT            NOT NULL,
    [UKPRN]             INT            NOT NULL,
    [LearnRefNumber]    VARCHAR (100)  NULL,
    [LocType]           BIGINT         NULL,
    [ContType]          BIGINT         NULL,
    [PostCode]          VARCHAR (1000) NULL,
    [TelNumber]         VARCHAR (1000) NULL,
    [Email]             VARCHAR (1000) NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Parent_Invalid_LearnerContact]
    ON [Invalid].[LearnerContact]([Learner_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Invalid_LearnerContact]
    ON [Invalid].[LearnerContact]([UKPRN] ASC, [LearnRefNumber] ASC, [ContType] ASC, [LocType] ASC);

