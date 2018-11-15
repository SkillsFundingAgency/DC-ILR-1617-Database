CREATE TABLE [Invalid].[SourceFile] (
    [SourceFile_Id]       INT          NULL,
    [UKPRN]               INT          NOT NULL,
    [SourceFileName]      VARCHAR (50) NOT NULL,
    [FilePreparationDate] DATE         NOT NULL,
    [SoftwareSupplier]    VARCHAR (40) NULL,
    [SoftwarePackage]     VARCHAR (30) NULL,
    [Release]             VARCHAR (20) NULL,
    [SerialNo]            VARCHAR (2)  NOT NULL,
    [DateTime]            DATETIME     NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Invalid_SourceFile]
    ON [Invalid].[SourceFile]([UKPRN] ASC, [SourceFileName] ASC);

