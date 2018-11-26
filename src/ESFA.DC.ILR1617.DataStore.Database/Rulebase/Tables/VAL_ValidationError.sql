CREATE TABLE [Rulebase].[VAL_ValidationError] (
	[ID]			 INT IDENTITY (1,1) NOT NULL,
    [UKPRN]          INT            NOT NULL,
    [AimSeqNumber]   BIGINT         NULL,
    [ErrorString]    VARCHAR (2000) NULL,
    [FieldValues]    VARCHAR (2000) NULL,
    [LearnRefNumber] VARCHAR (100)  NULL,
    [RuleId]         VARCHAR (50)   NULL,
	CONSTRAINT [PK_VAL_ValidationError] PRIMARY KEY ([ID])
);

