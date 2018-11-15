CREATE TABLE [Invalid].[DPOutcome] (
    [DPOutcome_Id]                        INT           NULL,
    [LearnerDestinationandProgression_Id] INT           NOT NULL,
    [UKPRN]                               INT           NOT NULL,
    [LearnRefNumber]                      VARCHAR (100) NULL,
    [OutType]                             VARCHAR (100) NULL,
    [OutCode]                             BIGINT        NULL,
    [OutStartDate]                        DATE          NULL,
    [OutEndDate]                          DATE          NULL,
    [OutCollDate]                         DATE          NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Parent_Invalid_DPOutcome]
    ON [Invalid].[DPOutcome]([LearnerDestinationandProgression_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Invalid_DPOutcome]
    ON [Invalid].[DPOutcome]([UKPRN] ASC, [LearnRefNumber] ASC, [OutType] ASC, [OutCode] ASC, [OutStartDate] ASC);

