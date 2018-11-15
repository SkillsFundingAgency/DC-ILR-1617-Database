CREATE TABLE [DataLock].[ValidationError] (
    [Ukprn]                  BIGINT        NULL,
    [LearnRefNumber]         VARCHAR (100) NULL,
    [AimSeqNumber]           BIGINT        NULL,
    [RuleId]                 VARCHAR (50)  NULL,
    [PriceEpisodeIdentifier] VARCHAR (25)  NOT NULL,
    [CollectionPeriodName]   VARCHAR (8)   NOT NULL,
    [CollectionPeriodMonth]  INT           NOT NULL,
    [CollectionPeriodYear]   INT           NOT NULL
);

