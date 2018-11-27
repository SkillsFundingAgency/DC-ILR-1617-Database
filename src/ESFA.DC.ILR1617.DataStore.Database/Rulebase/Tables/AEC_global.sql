CREATE TABLE [Rulebase].[AEC_global] (
	[Id]			  INT			IDENTITY (1, 1) NOT NULL,
    [UKPRN]           INT           NULL,
    [LARSVersion]     VARCHAR (100) NULL,
    [RulebaseVersion] VARCHAR (10)  NULL,
    [Year]            VARCHAR (4)   NULL,
	CONSTRAINT [PK_AEC_global] PRIMARY KEY ([ID])
);

