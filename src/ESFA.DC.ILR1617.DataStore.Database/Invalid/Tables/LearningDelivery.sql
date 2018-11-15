CREATE TABLE [Invalid].[LearningDelivery] (
    [LearningDelivery_Id] INT            NULL,
    [Learner_Id]          INT            NOT NULL,
    [UKPRN]               INT            NOT NULL,
    [LearnRefNumber]      VARCHAR (100)  NULL,
    [LearnAimRef]         VARCHAR (1000) NULL,
    [AimType]             BIGINT         NULL,
    [AimSeqNumber]        BIGINT         NULL,
    [LearnStartDate]      DATE           NULL,
    [OrigLearnStartDate]  DATE           NULL,
    [LearnPlanEndDate]    DATE           NULL,
    [FundModel]           BIGINT         NULL,
    [ProgType]            BIGINT         NULL,
    [FworkCode]           BIGINT         NULL,
    [PwayCode]            BIGINT         NULL,
    [StdCode]             BIGINT         NULL,
    [PartnerUKPRN]        BIGINT         NULL,
    [DelLocPostCode]      VARCHAR (1000) NULL,
    [AddHours]            BIGINT         NULL,
    [PriorLearnFundAdj]   BIGINT         NULL,
    [OtherFundAdj]        BIGINT         NULL,
    [ConRefNumber]        VARCHAR (1000) NULL,
    [EmpOutcome]          BIGINT         NULL,
    [CompStatus]          BIGINT         NULL,
    [LearnActEndDate]     DATE           NULL,
    [WithdrawReason]      BIGINT         NULL,
    [Outcome]             BIGINT         NULL,
    [AchDate]             DATE           NULL,
    [OutGrade]            VARCHAR (1000) NULL,
    [SWSupAimId]          VARCHAR (1000) NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Parent_Invalid_LearningDelivery]
    ON [Invalid].[LearningDelivery]([Learner_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Invalid_LearningDelivery]
    ON [Invalid].[LearningDelivery]([UKPRN] ASC, [LearnRefNumber] ASC, [AimSeqNumber] ASC);

