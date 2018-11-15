CREATE TABLE [Invalid].[PostAdd] (
    [PostAdd_Id]        INT            NULL,
    [LearnerContact_Id] INT            NOT NULL,
    [UKPRN]             INT            NOT NULL,
    [LearnRefNumber]    VARCHAR (100)  NULL,
    [ContType]          BIGINT         NULL,
    [LocType]           BIGINT         NULL,
    [AddLine1]          VARCHAR (1000) NULL,
    [AddLine2]          VARCHAR (1000) NULL,
    [AddLine3]          VARCHAR (1000) NULL,
    [AddLine4]          VARCHAR (1000) NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Parent_Invalid_PostAdd]
    ON [Invalid].[PostAdd]([LearnerContact_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Invalid_PostAdd]
    ON [Invalid].[PostAdd]([UKPRN] ASC, [LearnRefNumber] ASC, [ContType] ASC, [LocType] ASC);

