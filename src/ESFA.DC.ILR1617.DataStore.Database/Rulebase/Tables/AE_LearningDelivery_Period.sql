CREATE TABLE [Rulebase].[AE_LearningDelivery_Period] (
    [Ukprn]                         BIGINT          NOT NULL,
    [LearnRefNumber]                VARCHAR (12)    NOT NULL,
    [AimSeqNumber]                  INT             NOT NULL,
    [Period]                        INT             NOT NULL,
    [ProgrammeAimOnProgPayment]     DECIMAL (15, 5) DEFAULT ((0)) NULL,
    [ProgrammeAimCompletionPayment] DECIMAL (15, 5) DEFAULT ((0)) NULL,
    [ProgrammeAimBalPayment]        DECIMAL (15, 5) DEFAULT ((0)) NULL,
    CONSTRAINT [PK_AE_LearningDelivery_Period] PRIMARY KEY CLUSTERED ([Ukprn] ASC, [LearnRefNumber] ASC, [AimSeqNumber] ASC, [Period] ASC)
);

