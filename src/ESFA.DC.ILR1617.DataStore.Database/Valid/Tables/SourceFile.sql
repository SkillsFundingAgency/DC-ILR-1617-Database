﻿CREATE TABLE [Valid].[SourceFile] (
    [UKPRN]               INT          NOT NULL,
    [SourceFileName]      VARCHAR (50) NOT NULL,
    [FilePreparationDate] DATE         NULL,
    [SoftwareSupplier]    VARCHAR (40) NULL,
    [SoftwarePackage]     VARCHAR (30) NULL,
    [Release]             VARCHAR (20) NULL,
    [SerialNo]            VARCHAR (2)  NULL,
    [DateTime]            DATETIME     NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Valid_SourceFile]
    ON [Valid].[SourceFile]([UKPRN] ASC, [SourceFileName] ASC);

