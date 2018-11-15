CREATE TABLE [Valid].[TrailblazerApprenticeshipFinancialRecord] (
    [UKPRN]          INT          NOT NULL,
    [LearnRefNumber] VARCHAR (12) NOT NULL,
    [AimSeqNumber]   INT          NOT NULL,
    [TBFinType]      VARCHAR (3)  NOT NULL,
    [TBFinCode]      INT          NULL,
    [TBFinDate]      DATE         NULL,
    [TBFinAmount]    INT          NOT NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Valid_TrailblazerApprenticeshipFinancialRecord]
    ON [Valid].[TrailblazerApprenticeshipFinancialRecord]([UKPRN] ASC, [LearnRefNumber] ASC, [AimSeqNumber] ASC, [TBFinType] ASC);

