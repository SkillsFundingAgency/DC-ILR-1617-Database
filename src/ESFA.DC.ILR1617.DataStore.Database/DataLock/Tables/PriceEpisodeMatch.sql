CREATE TABLE [DataLock].[PriceEpisodeMatch] (
	[ID]					 INT IDENTITY (1,1) NOT NULL,
    [Ukprn]                  BIGINT        NOT NULL,
    [PriceEpisodeIdentifier] VARCHAR (25)  NOT NULL,
    [LearnRefNumber]         VARCHAR (100) NOT NULL,
    [AimSeqNumber]           BIGINT        NOT NULL,
    [CommitmentId]           VARCHAR (50)  NOT NULL,
    [CollectionPeriodName]   VARCHAR (8)   NOT NULL,
    [CollectionPeriodMonth]  INT           NOT NULL,
    [CollectionPeriodYear]   INT           NOT NULL,
    [IsSuccess]              BIT           NOT NULL,
	CONSTRAINT [PK_PriceEpisodeMatch] PRIMARY KEY ([ID])
);

