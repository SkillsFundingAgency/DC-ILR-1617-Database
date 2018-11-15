CREATE TABLE [Invalid].[Source] (
    [Source_Id]           INT           NULL,
    [ProtectiveMarking]   VARCHAR (30)  NOT NULL,
    [UKPRN]               INT           NOT NULL,
    [SoftwareSupplier]    VARCHAR (40)  NULL,
    [SoftwarePackage]     VARCHAR (30)  NULL,
    [Release]             VARCHAR (20)  NULL,
    [SerialNo]            VARCHAR (2)   NOT NULL,
    [DateTime]            DATETIME      NOT NULL,
    [ReferenceData]       VARCHAR (100) NULL,
    [ComponentSetVersion] VARCHAR (20)  NULL
);

