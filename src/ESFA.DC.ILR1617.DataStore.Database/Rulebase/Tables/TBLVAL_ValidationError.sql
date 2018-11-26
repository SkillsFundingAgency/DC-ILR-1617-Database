CREATE TABLE [Rulebase].[TBLVAL_ValidationError] (
	[Id]			 INT			IDENTITY (1, 1) NOT NULL,
    [UKPRN]          INT            NOT NULL,
    [AimSeqNumber]   BIGINT         NULL,
    [ErrorString]    VARCHAR (2000) NULL,
    [FieldValues]    VARCHAR (2000) NULL,
    [LearnRefNumber] VARCHAR (100)  NULL,
    [RuleId]         VARCHAR (50)   NULL,
	CONSTRAINT [PK_TBLVAL_ValidationError] PRIMARY KEY ([ID])
);

