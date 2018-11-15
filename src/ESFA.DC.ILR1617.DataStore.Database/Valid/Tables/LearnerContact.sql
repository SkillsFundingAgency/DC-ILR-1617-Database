CREATE TABLE [Valid].[LearnerContact] (
    [UKPRN]           INT           NOT NULL,
    [LearnRefNumber]  VARCHAR (12)  NOT NULL,
    [HomePostcode]    VARCHAR (8)   NULL,
    [CurrentPostcode] VARCHAR (8)   NULL,
    [TelNumber]       VARCHAR (18)  NULL,
    [Email]           VARCHAR (100) NULL,
    [AddLine1]        VARCHAR (50)  NULL,
    [AddLine2]        VARCHAR (50)  NULL,
    [AddLine3]        VARCHAR (50)  NULL,
    [AddLine4]        VARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([UKPRN] ASC, [LearnRefNumber] ASC)
);

