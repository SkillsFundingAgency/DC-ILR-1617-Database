CREATE TABLE [Invalid].[LearningProvider] (
    [LearningProvider_Id] INT NULL,
    [UKPRN]               INT NOT NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Invalid_LearningProvider]
    ON [Invalid].[LearningProvider]([UKPRN] ASC);

