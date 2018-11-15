CREATE TABLE [Invalid].[LearnerHEFinancialSupport] (
    [LearnerHEFinancialSupport_Id] INT           NULL,
    [LearnerHE_Id]                 INT           NOT NULL,
    [UKPRN]                        INT           NOT NULL,
    [LearnRefNumber]               VARCHAR (100) NULL,
    [FINTYPE]                      BIGINT        NULL,
    [FINAMOUNT]                    BIGINT        NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Parent_Invalid_LearnerHEFinancialSupport]
    ON [Invalid].[LearnerHEFinancialSupport]([LearnerHE_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Invalid_LearnerHEFinancialSupport]
    ON [Invalid].[LearnerHEFinancialSupport]([UKPRN] ASC, [LearnRefNumber] ASC, [FINTYPE] ASC);

