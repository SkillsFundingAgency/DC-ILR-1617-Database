CREATE TABLE [Invalid].[LearnerEmploymentStatus] (
    [LearnerEmploymentStatus_Id] INT           NULL,
    [Learner_Id]                 INT           NOT NULL,
    [UKPRN]                      INT           NOT NULL,
    [LearnRefNumber]             VARCHAR (100) NULL,
    [EmpStat]                    BIGINT        NULL,
    [DateEmpStatApp]             DATE          NULL,
    [EmpId]                      BIGINT        NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Parent_Invalid_LearnerEmploymentStatus]
    ON [Invalid].[LearnerEmploymentStatus]([Learner_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Invalid_LearnerEmploymentStatus]
    ON [Invalid].[LearnerEmploymentStatus]([UKPRN] ASC, [LearnRefNumber] ASC, [DateEmpStatApp] ASC);

