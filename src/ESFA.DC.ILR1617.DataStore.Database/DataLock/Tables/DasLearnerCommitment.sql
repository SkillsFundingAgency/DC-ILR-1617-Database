CREATE TABLE [DataLock].[DasLearnerCommitment] (
	[ID]			 INT IDENTITY (1,1) NOT NULL,
    [Ukprn]          BIGINT        NOT NULL,
    [LearnRefNumber] VARCHAR (100) NOT NULL,
    [AimSeqNumber]   BIGINT        NOT NULL,
    [CommitmentId]   VARCHAR (50)  NOT NULL, 
    CONSTRAINT [PK_DasLearnerCommitment] PRIMARY KEY ([ID])
);

