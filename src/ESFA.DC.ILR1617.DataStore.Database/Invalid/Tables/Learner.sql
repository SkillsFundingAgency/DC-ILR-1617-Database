CREATE TABLE [Invalid].[Learner] (
    [Learner_Id]         INT            NULL,
    [UKPRN]              INT            NOT NULL,
    [LearnRefNumber]     VARCHAR (100)  NULL,
    [PrevLearnRefNumber] VARCHAR (1000) NULL,
    [PrevUKPRN]          BIGINT         NULL,
    [ULN]                BIGINT         NULL,
    [FamilyName]         VARCHAR (1000) NULL,
    [GivenNames]         VARCHAR (1000) NULL,
    [DateOfBirth]        DATE           NULL,
    [Ethnicity]          BIGINT         NULL,
    [Sex]                VARCHAR (1000) NULL,
    [LLDDHealthProb]     BIGINT         NULL,
    [NINumber]           VARCHAR (1000) NULL,
    [PriorAttain]        BIGINT         NULL,
    [Accom]              BIGINT         NULL,
    [ALSCost]            BIGINT         NULL,
    [PlanLearnHours]     BIGINT         NULL,
    [PlanEEPHours]       BIGINT         NULL,
    [MathGrade]          VARCHAR (1000) NULL,
    [EngGrade]           VARCHAR (1000) NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Invalid_Learner]
    ON [Invalid].[Learner]([UKPRN] ASC, [LearnRefNumber] ASC);

