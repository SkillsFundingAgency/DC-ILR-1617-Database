CREATE TABLE [Invalid].[LearningDeliveryFAM] (
    [LearningDeliveryFAM_Id] INT            NULL,
    [LearningDelivery_Id]    INT            NOT NULL,
    [UKPRN]                  INT            NOT NULL,
    [LearnRefNumber]         VARCHAR (100)  NULL,
    [AimSeqNumber]           BIGINT         NULL,
    [LearnDelFAMType]        VARCHAR (100)  NULL,
    [LearnDelFAMCode]        VARCHAR (1000) NULL,
    [LearnDelFAMDateFrom]    DATE           NULL,
    [LearnDelFAMDateTo]      DATE           NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Parent_Invalid_LearningDeliveryFAM]
    ON [Invalid].[LearningDeliveryFAM]([LearningDelivery_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Invalid_LearningDeliveryFAM]
    ON [Invalid].[LearningDeliveryFAM]([UKPRN] ASC, [LearnRefNumber] ASC, [AimSeqNumber] ASC, [LearnDelFAMType] ASC, [LearnDelFAMDateFrom] ASC);

