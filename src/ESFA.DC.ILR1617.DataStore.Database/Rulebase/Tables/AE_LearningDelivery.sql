CREATE TABLE [Rulebase].[AE_LearningDelivery] (
    [LearnRefNumber]             VARCHAR (12)    NOT NULL,
    [AimSeqNumber]               INT             NOT NULL,
    [Ukprn]                      BIGINT          NOT NULL,
    [Uln]                        BIGINT          NOT NULL,
    [NiNumber]                   VARCHAR (9)     NULL,
    [StdCode]                    BIGINT          NULL,
    [ProgType]                   INT             NULL,
    [FworkCode]                  INT             NULL,
    [PwayCode]                   INT             NULL,
    [NegotiatedPrice]            INT             NOT NULL,
    [LearnStartDate]             DATE            NOT NULL,
    [OrigLearnStartDate]         DATE            NULL,
    [LearnPlanEndDate]           DATE            NOT NULL,
    [LearnActEndDate]            DATE            NULL,
    [MonthlyInstallment]         DECIMAL (15, 5) NOT NULL,
    [MonthlyInstallmentUncapped] DECIMAL (15, 5) NOT NULL,
    [CompletionPayment]          DECIMAL (15, 5) NOT NULL,
    [CompletionPaymentUncapped]  DECIMAL (15, 5) NOT NULL,
    CONSTRAINT [PK_AE_LearningDelivery] PRIMARY KEY CLUSTERED ([LearnRefNumber] ASC, [AimSeqNumber] ASC, [Ukprn] ASC)
);

