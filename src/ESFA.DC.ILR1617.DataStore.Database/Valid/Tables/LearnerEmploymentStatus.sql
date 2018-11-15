CREATE TABLE [Valid].[LearnerEmploymentStatus] (
    [UKPRN]          INT          NOT NULL,
    [LearnRefNumber] VARCHAR (12) NOT NULL,
    [EmpStat]        INT          NULL,
    [DateEmpStatApp] DATE         NOT NULL,
    [EmpId]          INT          NULL,
    [EmpStatMon_BSI] INT          NULL,
    [EmpStatMon_EII] INT          NULL,
    [EmpStatMon_LOE] INT          NULL,
    [EmpStatMon_LOU] INT          NULL,
    [EmpStatMon_PEI] INT          NULL,
    [EmpStatMon_SEI] INT          NULL,
    [EmpStatMon_SEM] INT          NULL,
    PRIMARY KEY CLUSTERED ([UKPRN] ASC, [LearnRefNumber] ASC, [DateEmpStatApp] ASC)
);

