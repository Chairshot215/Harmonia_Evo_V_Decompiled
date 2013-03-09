.class public Lcom/sqn/dcc/swmOfdmaDcd;
.super Ljava/lang/Object;
.source "swmOfdmaDcd.java"


# instance fields
.field public asrSlotLengthAndSwitchingPeriod:S

.field public bsId:J

.field public channelNbr:S

.field public channelSwitchFrameNbr:J

.field public defaultRssiAndCinrAveragingParameter:S

.field public dlAmcAllocatedBandBitmap:J

.field public downlinkBurstProfileForMultipleFecTypes:S

.field public hAddThreshold:S

.field public hDeleteThreshold:S

.field public harqAckDelayUl:S

.field public hoAveragingParams:I

.field public hoTypeSupport:S

.field public maximumRetransmission:S

.field public neighborBsTriggerQty:S

.field public neighborBsTriggers:[Lcom/sqn/dcc/swmOfdmaTrigger;

.field public pagingGroupQty:S

.field public pagingGroups:[I

.field public pagingIntervalLength:J

.field public permutationTypeForBroadcastRegionInHarqZone:Lcom/sqn/dcc/swmOfdmaPermutationType;

.field public rtg:J

.field public ttg:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x10

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v2, [I

    iput-object v1, p0, Lcom/sqn/dcc/swmOfdmaDcd;->pagingGroups:[I

    new-array v1, v2, [Lcom/sqn/dcc/swmOfdmaTrigger;

    iput-object v1, p0, Lcom/sqn/dcc/swmOfdmaDcd;->neighborBsTriggers:[Lcom/sqn/dcc/swmOfdmaTrigger;

    new-instance v1, Lcom/sqn/dcc/swmOfdmaPermutationType;

    invoke-direct {v1}, Lcom/sqn/dcc/swmOfdmaPermutationType;-><init>()V

    iput-object v1, p0, Lcom/sqn/dcc/swmOfdmaDcd;->permutationTypeForBroadcastRegionInHarqZone:Lcom/sqn/dcc/swmOfdmaPermutationType;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sqn/dcc/swmOfdmaDcd;->neighborBsTriggers:[Lcom/sqn/dcc/swmOfdmaTrigger;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sqn/dcc/swmOfdmaDcd;->neighborBsTriggers:[Lcom/sqn/dcc/swmOfdmaTrigger;

    new-instance v2, Lcom/sqn/dcc/swmOfdmaTrigger;

    invoke-direct {v2}, Lcom/sqn/dcc/swmOfdmaTrigger;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmOfdmaDcd;Lcom/sqn/dcc/OutValue;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmOfdmaDcd;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/16 v4, 0x10

    const/4 v1, 0x0

    array-length v3, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x31

    if-ge v3, v2, :cond_0

    const v2, -0xfffb

    :goto_0
    return v2

    :cond_0
    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->channelNbr:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-wide v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->channelSwitchFrameNbr:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->bsId:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->ttg:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->rtg:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->harqAckDelayUl:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->permutationTypeForBroadcastRegionInHarqZone:Lcom/sqn/dcc/swmOfdmaPermutationType;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmOfdmaPermutationType;->marshall([BLcom/sqn/dcc/swmOfdmaPermutationType;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->maximumRetransmission:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->defaultRssiAndCinrAveragingParameter:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-wide v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->dlAmcAllocatedBandBitmap:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->hAddThreshold:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->hDeleteThreshold:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->asrSlotLengthAndSwitchingPeriod:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->hoTypeSupport:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->downlinkBurstProfileForMultipleFecTypes:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->pagingGroupQty:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_2

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->pagingGroups:[I

    aget v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->neighborBsTriggerQty:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_4

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->neighborBsTriggers:[Lcom/sqn/dcc/swmOfdmaTrigger;

    aget-object v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmOfdmaTrigger;->marshall([BLcom/sqn/dcc/swmOfdmaTrigger;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-wide v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->pagingIntervalLength:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->hoAveragingParams:I

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    move v2, v1

    goto/16 :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmOfdmaDcd;Lcom/sqn/dcc/OutValue;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmOfdmaDcd;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/16 v4, 0x10

    const/4 v1, 0x0

    array-length v3, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x31

    if-ge v3, v2, :cond_0

    const v2, -0xfffb

    :goto_0
    return v2

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->channelNbr:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->channelSwitchFrameNbr:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->bsId:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->ttg:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->rtg:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->harqAckDelayUl:S

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->permutationTypeForBroadcastRegionInHarqZone:Lcom/sqn/dcc/swmOfdmaPermutationType;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmOfdmaPermutationType;->unmarshall([BLcom/sqn/dcc/swmOfdmaPermutationType;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->maximumRetransmission:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->defaultRssiAndCinrAveragingParameter:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->dlAmcAllocatedBandBitmap:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->hAddThreshold:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->hDeleteThreshold:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->asrSlotLengthAndSwitchingPeriod:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->hoTypeSupport:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->downlinkBurstProfileForMultipleFecTypes:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->pagingGroupQty:S

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_2

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->pagingGroups:[I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->neighborBsTriggerQty:S

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_4

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->neighborBsTriggers:[Lcom/sqn/dcc/swmOfdmaTrigger;

    aget-object v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmOfdmaTrigger;->unmarshall([BLcom/sqn/dcc/swmOfdmaTrigger;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_3

    move v2, v1

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->pagingIntervalLength:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v2

    iput v2, p1, Lcom/sqn/dcc/swmOfdmaDcd;->hoAveragingParams:I

    move v2, v1

    goto/16 :goto_0
.end method
