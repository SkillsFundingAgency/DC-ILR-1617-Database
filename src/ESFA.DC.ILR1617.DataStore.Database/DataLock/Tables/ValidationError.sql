CREATE TABLE [DataLock].[ValidationError] (
	[ID]					 INT IDENTITY (1,1) NOT NULL,
    [Ukprn]                  BIGINT        NULL,
    [LearnRefNumber]         VARCHAR (100) NULL,
    [AimSeqNumber]           BIGINT        NULL,
    [RuleId]                 VARCHAR (50)  NULL,
    [PriceEpisodeIdentifier] VARCHAR (25)  NOT NULL,
    [CollectionPeriodName]   VARCHAR (8)   NOT NULL,
    [CollectionPeriodMonth]  INT           NOT NULL,
    [CollectionPeriodYear]   INT           NOT NULL,
	CONSTRAINT [PK_ValidationError] PRIMARY KEY ([ID])
);

