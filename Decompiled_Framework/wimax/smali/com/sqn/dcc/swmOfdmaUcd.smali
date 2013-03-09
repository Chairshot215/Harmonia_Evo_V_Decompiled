.class public Lcom/sqn/dcc/swmOfdmaUcd;
.super Ljava/lang/Object;
.source "swmOfdmaUcd.java"


# instance fields
.field public allowAasBeamSelectMessages:S

.field public bandAmcAllocationThreshold:I

.field public bandAmcAllocationTimer:S

.field public bandAmcEntryAverageCinr:S

.field public bandAmcReleaseThreshold:I

.field public bandAmcReleaseTimer:S

.field public bandAmcRetryTimer:S

.field public bandStatusReportingMaxPeriod:S

.field public bandwidthRequestCodes:S

.field public binStatusReportingMaxPeriod:S

.field public cqichBandAmcTransitionDelay:S

.field public cqichFieldSize:S

.field public downPowerOffsetAdjustementStep:S

.field public ffbkRegion:Lcom/sqn/dcc/swmPeriodicUlAllocation;

.field public ffbkRegionIncluded:Z

.field public handoverRangingCodes:S

.field public harqAckDelayDl:S

.field public harqRegion:Lcom/sqn/dcc/swmPeriodicUlAllocation;

.field public harqRegionIncluded:Z

.field public hoRangingEnd:S

.field public hoRangingStart:S

.field public initRangingInterval:S

.field public initialRangingCodes:S

.field public lowerBoundAasPreamble:S

.field public maxPowerOffsetAdjustement:S

.field public maximumRetransmission:S

.field public minPowerOffsetAdjustement:S

.field public msTransmitPowerLimitationLevel:S

.field public normalizedCnrChannelSounding:S

.field public normalizedCnrOverride:[C

.field public normalizedCnrOverride2:[C

.field public optionalUlAllocatedSubchannelsBitmap:[S

.field public periodicRangingBackoffEnd:S

.field public periodicRangingBackoffStart:S

.field public periodicRangingCodes:S

.field public permutationBase:S

.field public rangingCodeGroupStart:S

.field public rangingRegionQty:S

.field public rngRegion:[Lcom/sqn/dcc/swmPeriodicRangingAllocation;

.field public safetyChannelAllocationThreshold:I

.field public safetyChannelAllocationTimer:S

.field public safetyChannelReleaseThreshold:I

.field public safetyChannelReleaseTimer:S

.field public safetyChannelRetryTimer:S

.field public soundingRegion:[Lcom/sqn/dcc/swmPeriodicSoundingAllocation;

.field public soundingRegionQty:S

.field public txPowerReport:J

.field public ulAllocatedAmcBandBitmap:[S

.field public ulAllocatedSubchannelsBitmap:[S

.field public ulInitTiming:S

.field public ulPwrOffsetBurstWithMacMgt:S

.field public ulPwrOffsetHarqBurst:S

.field public upPowerOffsetAdjustementStep:S

.field public uplinkBurstProfileForMultipleFecTypes:S

.field public uplinkSubChannelRotation:S

.field public upperBoundAasPreamble:S

.field public useCqichIndicationFlag:S


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/sqn/dcc/swmOfdmaUcd;->ulAllocatedSubchannelsBitmap:[S

    const/16 v1, 0xd

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/sqn/dcc/swmOfdmaUcd;->optionalUlAllocatedSubchannelsBitmap:[S

    const/4 v1, 0x6

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/sqn/dcc/swmOfdmaUcd;->ulAllocatedAmcBandBitmap:[S

    new-array v1, v2, [C

    iput-object v1, p0, Lcom/sqn/dcc/swmOfdmaUcd;->normalizedCnrOverride:[C

    new-array v1, v2, [C

    iput-object v1, p0, Lcom/sqn/dcc/swmOfdmaUcd;->normalizedCnrOverride2:[C

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sqn/dcc/swmPeriodicRangingAllocation;

    iput-object v1, p0, Lcom/sqn/dcc/swmOfdmaUcd;->rngRegion:[Lcom/sqn/dcc/swmPeriodicRangingAllocation;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sqn/dcc/swmPeriodicSoundingAllocation;

    iput-object v1, p0, Lcom/sqn/dcc/swmOfdmaUcd;->soundingRegion:[Lcom/sqn/dcc/swmPeriodicSoundingAllocation;

    new-instance v1, Lcom/sqn/dcc/swmPeriodicUlAllocation;

    invoke-direct {v1}, Lcom/sqn/dcc/swmPeriodicUlAllocation;-><init>()V

    iput-object v1, p0, Lcom/sqn/dcc/swmOfdmaUcd;->ffbkRegion:Lcom/sqn/dcc/swmPeriodicUlAllocation;

    new-instance v1, Lcom/sqn/dcc/swmPeriodicUlAllocation;

    invoke-direct {v1}, Lcom/sqn/dcc/swmPeriodicUlAllocation;-><init>()V

    iput-object v1, p0, Lcom/sqn/dcc/swmOfdmaUcd;->harqRegion:Lcom/sqn/dcc/swmPeriodicUlAllocation;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sqn/dcc/swmOfdmaUcd;->rngRegion:[Lcom/sqn/dcc/swmPeriodicRangingAllocation;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sqn/dcc/swmOfdmaUcd;->rngRegion:[Lcom/sqn/dcc/swmPeriodicRangingAllocation;

    new-instance v2, Lcom/sqn/dcc/swmPeriodicRangingAllocation;

    invoke-direct {v2}, Lcom/sqn/dcc/swmPeriodicRangingAllocation;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sqn/dcc/swmOfdmaUcd;->soundingRegion:[Lcom/sqn/dcc/swmPeriodicSoundingAllocation;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sqn/dcc/swmOfdmaUcd;->soundingRegion:[Lcom/sqn/dcc/swmPeriodicSoundingAllocation;

    new-instance v2, Lcom/sqn/dcc/swmPeriodicSoundingAllocation;

    invoke-direct {v2}, Lcom/sqn/dcc/swmPeriodicSoundingAllocation;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmOfdmaUcd;Lcom/sqn/dcc/OutValue;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmOfdmaUcd;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/16 v4, 0x8

    const/4 v1, 0x0

    array-length v3, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x45

    if-ge v3, v2, :cond_0

    const v2, -0xfffb

    :goto_0
    return v2

    :cond_0
    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->initialRangingCodes:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->periodicRangingCodes:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->bandwidthRequestCodes:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->periodicRangingBackoffStart:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->periodicRangingBackoffEnd:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->rangingCodeGroupStart:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->permutationBase:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x9

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->ulAllocatedSubchannelsBitmap:[S

    aget-short v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0xd

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->optionalUlAllocatedSubchannelsBitmap:[S

    aget-short v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    const/4 v2, 0x6

    if-ge v0, v2, :cond_3

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->ulAllocatedAmcBandBitmap:[S

    aget-short v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->bandAmcAllocationThreshold:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->bandAmcReleaseThreshold:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->bandAmcAllocationTimer:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->bandAmcReleaseTimer:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->bandStatusReportingMaxPeriod:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->bandAmcRetryTimer:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->safetyChannelAllocationThreshold:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->safetyChannelReleaseThreshold:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->safetyChannelAllocationTimer:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->safetyChannelReleaseTimer:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->binStatusReportingMaxPeriod:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->safetyChannelRetryTimer:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->harqAckDelayDl:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->cqichBandAmcTransitionDelay:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->maximumRetransmission:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v4, :cond_4

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->normalizedCnrOverride:[C

    aget-char v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BCLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->cqichFieldSize:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->hoRangingStart:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->hoRangingEnd:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v4, :cond_5

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->normalizedCnrOverride2:[C

    aget-char v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BCLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->bandAmcEntryAverageCinr:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->upperBoundAasPreamble:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->lowerBoundAasPreamble:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->allowAasBeamSelectMessages:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->useCqichIndicationFlag:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->upPowerOffsetAdjustementStep:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->downPowerOffsetAdjustementStep:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->minPowerOffsetAdjustement:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->maxPowerOffsetAdjustement:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->handoverRangingCodes:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->initRangingInterval:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-wide v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->txPowerReport:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->normalizedCnrChannelSounding:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->uplinkBurstProfileForMultipleFecTypes:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->uplinkSubChannelRotation:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->ulPwrOffsetHarqBurst:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->ulPwrOffsetBurstWithMacMgt:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-boolean v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->ffbkRegionIncluded:Z

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->ffbkRegion:Lcom/sqn/dcc/swmPeriodicUlAllocation;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmPeriodicUlAllocation;->marshall([BLcom/sqn/dcc/swmPeriodicUlAllocation;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_6

    move v2, v1

    goto/16 :goto_0

    :cond_6
    iget-boolean v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->harqRegionIncluded:Z

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->harqRegion:Lcom/sqn/dcc/swmPeriodicUlAllocation;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmPeriodicUlAllocation;->marshall([BLcom/sqn/dcc/swmPeriodicUlAllocation;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_7

    move v2, v1

    goto/16 :goto_0

    :cond_7
    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->rangingRegionQty:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_6
    const/4 v2, 0x4

    if-ge v0, v2, :cond_9

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->rngRegion:[Lcom/sqn/dcc/swmPeriodicRangingAllocation;

    aget-object v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmPeriodicRangingAllocation;->marshall([BLcom/sqn/dcc/swmPeriodicRangingAllocation;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_8

    move v2, v1

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->soundingRegionQty:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_7
    const/4 v2, 0x2

    if-ge v0, v2, :cond_b

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->soundingRegion:[Lcom/sqn/dcc/swmPeriodicSoundingAllocation;

    aget-object v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmPeriodicSoundingAllocation;->marshall([BLcom/sqn/dcc/swmPeriodicSoundingAllocation;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_a

    move v2, v1

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->ulInitTiming:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->msTransmitPowerLimitationLevel:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    move v2, v1

    goto/16 :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmOfdmaUcd;Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmOfdmaUcd;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-wide/16 v8, 0x0

    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    array-length v5, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x45

    if-ge v5, v2, :cond_0

    const v2, -0xfffb

    :goto_0
    return v2

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->initialRangingCodes:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->periodicRangingCodes:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->bandwidthRequestCodes:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->periodicRangingBackoffStart:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->periodicRangingBackoffEnd:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->rangingCodeGroupStart:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->permutationBase:S

    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x9

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->ulAllocatedSubchannelsBitmap:[S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v5

    aput-short v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0xd

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->optionalUlAllocatedSubchannelsBitmap:[S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v5

    aput-short v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    const/4 v2, 0x6

    if-ge v0, v2, :cond_3

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->ulAllocatedAmcBandBitmap:[S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v5

    aput-short v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v5

    long-to-int v2, v5

    iput v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->bandAmcAllocationThreshold:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v5

    long-to-int v2, v5

    iput v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->bandAmcReleaseThreshold:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->bandAmcAllocationTimer:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->bandAmcReleaseTimer:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->bandStatusReportingMaxPeriod:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->bandAmcRetryTimer:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v5

    long-to-int v2, v5

    iput v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->safetyChannelAllocationThreshold:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v5

    long-to-int v2, v5

    iput v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->safetyChannelReleaseThreshold:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->safetyChannelAllocationTimer:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->safetyChannelReleaseTimer:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->binStatusReportingMaxPeriod:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->safetyChannelRetryTimer:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->harqAckDelayDl:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->cqichBandAmcTransitionDelay:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->maximumRetransmission:S

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v7, :cond_4

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->normalizedCnrOverride:[C

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v5

    int-to-char v5, v5

    aput-char v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->cqichFieldSize:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->hoRangingStart:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->hoRangingEnd:S

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v7, :cond_5

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->normalizedCnrOverride2:[C

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v5

    int-to-char v5, v5

    aput-char v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->bandAmcEntryAverageCinr:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->upperBoundAasPreamble:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->lowerBoundAasPreamble:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->allowAasBeamSelectMessages:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->useCqichIndicationFlag:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->upPowerOffsetAdjustementStep:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->downPowerOffsetAdjustementStep:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->minPowerOffsetAdjustement:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->maxPowerOffsetAdjustement:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->handoverRangingCodes:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->initRangingInterval:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/sqn/dcc/swmOfdmaUcd;->txPowerReport:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->normalizedCnrChannelSounding:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->uplinkBurstProfileForMultipleFecTypes:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->uplinkSubChannelRotation:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->ulPwrOffsetHarqBurst:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->ulPwrOffsetBurstWithMacMgt:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v5

    cmp-long v2, v5, v8

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    iput-boolean v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->ffbkRegionIncluded:Z

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->ffbkRegion:Lcom/sqn/dcc/swmPeriodicUlAllocation;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmPeriodicUlAllocation;->unmarshall([BLcom/sqn/dcc/swmPeriodicUlAllocation;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_7

    move v2, v1

    goto/16 :goto_0

    :cond_6
    move v2, v4

    goto :goto_6

    :cond_7
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v5

    cmp-long v2, v5, v8

    if-nez v2, :cond_8

    :goto_7
    iput-boolean v3, p1, Lcom/sqn/dcc/swmOfdmaUcd;->harqRegionIncluded:Z

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->harqRegion:Lcom/sqn/dcc/swmPeriodicUlAllocation;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmPeriodicUlAllocation;->unmarshall([BLcom/sqn/dcc/swmPeriodicUlAllocation;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_9

    move v2, v1

    goto/16 :goto_0

    :cond_8
    move v3, v4

    goto :goto_7

    :cond_9
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->rangingRegionQty:S

    const/4 v0, 0x0

    :goto_8
    const/4 v2, 0x4

    if-ge v0, v2, :cond_b

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->rngRegion:[Lcom/sqn/dcc/swmPeriodicRangingAllocation;

    aget-object v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmPeriodicRangingAllocation;->unmarshall([BLcom/sqn/dcc/swmPeriodicRangingAllocation;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_a

    move v2, v1

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->soundingRegionQty:S

    const/4 v0, 0x0

    :goto_9
    const/4 v2, 0x2

    if-ge v0, v2, :cond_d

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->soundingRegion:[Lcom/sqn/dcc/swmPeriodicSoundingAllocation;

    aget-object v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmPeriodicSoundingAllocation;->unmarshall([BLcom/sqn/dcc/swmPeriodicSoundingAllocation;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_c

    move v2, v1

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_d
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->ulInitTiming:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaUcd;->msTransmitPowerLimitationLevel:S

    move v2, v1

    goto/16 :goto_0
.end method
