﻿CREATE TABLE [Invalid].[LearningDeliveryWorkPlacement] (
    [LearningDeliveryWorkPlacement_Id] INT           NULL,
    [LearningDelivery_Id]              INT           NOT NULL,
    [UKPRN]                            INT           NOT NULL,
    [LearnRefNumber]                   VARCHAR (100) NULL,
    [AimSeqNumber]                     BIGINT        NULL,
    [WorkPlaceStartDate]               DATE          NULL,
    [WorkPlaceEndDate]                 DATE          NULL,
    [WorkPlaceMode]                    BIGINT        NULL,
    [WorkPlaceEmpId]                   BIGINT        NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Parent_Invalid_LearningDeliveryWorkPlacement]
    ON [Invalid].[LearningDeliveryWorkPlacement]([LearningDelivery_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Invalid_LearningDeliveryWorkPlacement]
    ON [Invalid].[LearningDeliveryWorkPlacement]([UKPRN] ASC, [LearnRefNumber] ASC, [AimSeqNumber] ASC, [WorkPlaceStartDate] ASC, [WorkPlaceMode] ASC, [WorkPlaceEmpId] ASC);

