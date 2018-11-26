CREATE TABLE [Rulebase].[VALDP_ValidationError] (
	[ID]			 INT IDENTITY (1,1) NOT NULL,
    [UKPRN]          INT            NOT NULL,
    [ErrorString]    VARCHAR (2000) NULL,
    [FieldValues]    VARCHAR (2000) NULL,
    [LearnRefNumber] VARCHAR (100)  NULL,
    [RuleId]         VARCHAR (50)   NULL,
	CONSTRAINT [PK_VALDP_ValidationError] PRIMARY KEY ([ID])
);

