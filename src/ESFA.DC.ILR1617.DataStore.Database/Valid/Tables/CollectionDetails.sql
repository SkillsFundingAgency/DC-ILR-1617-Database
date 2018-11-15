CREATE TABLE [Valid].[CollectionDetails] (
    [UKPRN]               INT         NOT NULL,
    [Collection]          VARCHAR (3) NOT NULL,
    [Year]                VARCHAR (4) NOT NULL,
    [FilePreparationDate] DATE        NULL,
    PRIMARY KEY CLUSTERED ([UKPRN] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Valid_CollectionDetails]
    ON [Valid].[CollectionDetails]([UKPRN] ASC);

