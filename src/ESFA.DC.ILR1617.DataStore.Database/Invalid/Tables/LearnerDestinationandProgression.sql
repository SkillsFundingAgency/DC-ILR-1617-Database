CREATE TABLE [Invalid].[LearnerDestinationandProgression] (
    [LearnerDestinationandProgression_Id] INT           NULL,
    [UKPRN]                               INT           NOT NULL,
    [LearnRefNumber]                      VARCHAR (100) NULL,
    [ULN]                                 BIGINT        NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Invalid_LearnerDestinationandProgression]
    ON [Invalid].[LearnerDestinationandProgression]([UKPRN] ASC, [LearnRefNumber] ASC);

