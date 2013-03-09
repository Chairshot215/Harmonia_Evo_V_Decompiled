.class public Lcom/sqn/dcc/swmSsCapabilities;
.super Ljava/lang/Object;
.source "swmSsCapabilities.java"


# instance fields
.field public arq:Z

.field public arqAckType:S

.field public extendedRtps:Z

.field public macDataPerFrame:Lcom/sqn/dcc/swmMaxMacDataPerFrame;

.field public maxBurstQty:S

.field public maxConcurrentDsxQty:S

.field public maxConcurrentMcaQty:S

.field public maxDlCidQty:I

.field public maxPollingGroupsQty:S

.field public maxUlCidQty:I

.field public packingSupport:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmMaxMacDataPerFrame;

    invoke-direct {v0}, Lcom/sqn/dcc/swmMaxMacDataPerFrame;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSsCapabilities;->macDataPerFrame:Lcom/sqn/dcc/swmMaxMacDataPerFrame;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmSsCapabilities;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmSsCapabilities;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v2, p0

    iget-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p1, Lcom/sqn/dcc/swmSsCapabilities;->arq:Z

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmSsCapabilities;->arqAckType:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/swmSsCapabilities;->maxUlCidQty:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/swmSsCapabilities;->maxDlCidQty:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmSsCapabilities;->maxConcurrentDsxQty:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmSsCapabilities;->maxConcurrentMcaQty:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmSsCapabilities;->maxPollingGroupsQty:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmSsCapabilities;->macDataPerFrame:Lcom/sqn/dcc/swmMaxMacDataPerFrame;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmMaxMacDataPerFrame;->marshall([BLcom/sqn/dcc/swmMaxMacDataPerFrame;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-boolean v1, p1, Lcom/sqn/dcc/swmSsCapabilities;->packingSupport:Z

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-boolean v1, p1, Lcom/sqn/dcc/swmSsCapabilities;->extendedRtps:Z

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmSsCapabilities;->maxBurstQty:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    move v1, v0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmSsCapabilities;Lcom/sqn/dcc/OutValue;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmSsCapabilities;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    array-length v4, p0

    iget-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    if-ge v4, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p1, Lcom/sqn/dcc/swmSsCapabilities;->arq:Z

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsCapabilities;->arqAckType:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, p1, Lcom/sqn/dcc/swmSsCapabilities;->maxUlCidQty:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, p1, Lcom/sqn/dcc/swmSsCapabilities;->maxDlCidQty:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsCapabilities;->maxConcurrentDsxQty:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsCapabilities;->maxConcurrentMcaQty:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsCapabilities;->maxPollingGroupsQty:S

    iget-object v1, p1, Lcom/sqn/dcc/swmSsCapabilities;->macDataPerFrame:Lcom/sqn/dcc/swmMaxMacDataPerFrame;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmMaxMacDataPerFrame;->unmarshall([BLcom/sqn/dcc/swmMaxMacDataPerFrame;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p1, Lcom/sqn/dcc/swmSsCapabilities;->packingSupport:Z

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    :goto_3
    iput-boolean v2, p1, Lcom/sqn/dcc/swmSsCapabilities;->extendedRtps:Z

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsCapabilities;->maxBurstQty:S

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3
.end method
