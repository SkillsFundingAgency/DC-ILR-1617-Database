CREATE TABLE [dbo].[ProcessingData] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [UKPRN]          INT            NULL,
    [FileDetailsID]  INT            NULL,
    [ProcessingStep] NVARCHAR (100) NULL,
    [ExecutionTime]  NVARCHAR (20)  NULL,
	CONSTRAINT [PK_ProcessingData] PRIMARY KEY ([ID])
);

