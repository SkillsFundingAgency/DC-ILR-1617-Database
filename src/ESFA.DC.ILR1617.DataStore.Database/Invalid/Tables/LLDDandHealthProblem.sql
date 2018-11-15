CREATE TABLE [Invalid].[LLDDandHealthProblem] (
    [LLDDandHealthProblem_Id] INT           NULL,
    [Learner_Id]              INT           NOT NULL,
    [UKPRN]                   INT           NOT NULL,
    [LearnRefNumber]          VARCHAR (100) NULL,
    [LLDDCat]                 BIGINT        NULL,
    [PrimaryLLDD]             BIGINT        NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Parent_Invalid_LLDDandHealthProblem]
    ON [Invalid].[LLDDandHealthProblem]([Learner_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Invalid_LLDDandHealthProblem]
    ON [Invalid].[LLDDandHealthProblem]([UKPRN] ASC, [LearnRefNumber] ASC, [LLDDCat] ASC);

