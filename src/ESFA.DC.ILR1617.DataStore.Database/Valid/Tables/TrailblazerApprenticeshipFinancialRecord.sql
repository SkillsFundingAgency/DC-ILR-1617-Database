CREATE TABLE [Valid].[TrailblazerApprenticeshipFinancialRecord] (
	[ID]			 INT IDENTITY (1,1) NOT NULL,
    [UKPRN]          INT          NOT NULL,
    [LearnRefNumber] VARCHAR (12) NOT NULL,
    [AimSeqNumber]   INT          NOT NULL,
    [TBFinType]      VARCHAR (3)  NOT NULL,
    [TBFinCode]      INT          NULL,
    [TBFinDate]      DATE         NULL,
    [TBFinAmount]    INT          NOT NULL,
	CONSTRAINT [PK_TrailblazerApprenticeshipFinancialRecord] PRIMARY KEY ([ID])
);


GO
CREATE NONCLUSTERED INDEX [IX_Valid_TrailblazerApprenticeshipFinancialRecord]
    ON [Valid].[TrailblazerApprenticeshipFinancialRecord]([UKPRN] ASC, [LearnRefNumber] ASC, [AimSeqNumber] ASC, [TBFinType] ASC);

