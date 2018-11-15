CREATE TABLE [Invalid].[TrailblazerApprenticeshipFinancialRecord] (
    [TrailblazerApprenticeshipFinancialRecord_Id] INT           NULL,
    [LearningDelivery_Id]                         INT           NOT NULL,
    [UKPRN]                                       INT           NOT NULL,
    [LearnRefNumber]                              VARCHAR (100) NULL,
    [AimSeqNumber]                                BIGINT        NULL,
    [TBFinType]                                   VARCHAR (100) NULL,
    [TBFinCode]                                   BIGINT        NULL,
    [TBFinDate]                                   DATE          NULL,
    [TBFinAmount]                                 BIGINT        NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Parent_Invalid_TrailblazerApprenticeshipFinancialRecord]
    ON [Invalid].[TrailblazerApprenticeshipFinancialRecord]([LearningDelivery_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Invalid_TrailblazerApprenticeshipFinancialRecord]
    ON [Invalid].[TrailblazerApprenticeshipFinancialRecord]([UKPRN] ASC, [LearnRefNumber] ASC, [AimSeqNumber] ASC, [TBFinType] ASC);

