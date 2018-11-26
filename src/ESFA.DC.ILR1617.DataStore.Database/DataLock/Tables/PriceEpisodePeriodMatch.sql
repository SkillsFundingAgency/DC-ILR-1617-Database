CREATE TABLE [DataLock].[PriceEpisodePeriodMatch] (
	[ID]					 INT IDENTITY (1,1) NOT NULL,
    [Ukprn]                  BIGINT        NOT NULL,
    [PriceEpisodeIdentifier] VARCHAR (25)  NOT NULL,
    [LearnRefNumber]         VARCHAR (100) NOT NULL,
    [AimSeqNumber]           BIGINT        NOT NULL,
    [CommitmentId]           BIGINT        NOT NULL,
    [VersionId]              BIGINT        NOT NULL,
    [Period]                 INT           NOT NULL,
    [Payable]                BIT           NOT NULL,
    [TransactionType]        INT           NOT NULL,
    [CollectionPeriodName]   VARCHAR (8)   NOT NULL,
    [CollectionPeriodMonth]  INT           NOT NULL,
    [CollectionPeriodYear]   INT           NOT NULL,
	CONSTRAINT [PK_PriceEpisodePeriodMatch] PRIMARY KEY ([ID])
);

