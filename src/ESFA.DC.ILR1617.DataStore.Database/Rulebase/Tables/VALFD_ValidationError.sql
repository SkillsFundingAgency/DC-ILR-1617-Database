CREATE TABLE [Rulebase].[VALFD_ValidationError] (
    [UKPRN]          INT            NOT NULL,
    [AimSeqNumber]   BIGINT         NULL,
    [ErrorString]    VARCHAR (2000) NULL,
    [FieldValues]    VARCHAR (2000) NULL,
    [LearnRefNumber] VARCHAR (100)  NULL,
    [RuleId]         VARCHAR (50)   NULL
);

