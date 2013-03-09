.class public Lcom/sqn/dcc/SfStats;
.super Ljava/lang/Object;
.source "SfStats.java"


# instance fields
.field public totalArqBlocks:J

.field public totalArqBlocksRetry:J

.field public totalArqDiscards:J

.field public totalPduBytes:J

.field public totalPduPackets:J

.field public totalPduPacketsDropped:J

.field public totalRetransmitPktSent:J

.field public totalRxBytes:J

.field public totalSduBytes:J

.field public totalSduPackets:J

.field public totalSduPacketsDropped:J

.field public totalSyncLoss:J

.field public uptimeSec:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/SfStats;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/SfStats;",
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

    add-int/lit8 v1, v1, 0x64

    if-ge v2, v1, :cond_0

    const v0, -0xfffb

    :goto_0
    return v0

    :cond_0
    iget-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalRxBytes:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalPduBytes:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalPduPackets:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalPduPacketsDropped:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalSduBytes:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalSduPackets:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalSduPacketsDropped:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalArqBlocks:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalArqBlocksRetry:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalArqDiscards:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalRetransmitPktSent:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalSyncLoss:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/SfStats;->uptimeSec:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/SfStats;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/SfStats;",
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

    add-int/lit8 v1, v1, 0x64

    if-ge v2, v1, :cond_0

    const v0, -0xfffb

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalRxBytes:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalPduBytes:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalPduPackets:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalPduPacketsDropped:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalSduBytes:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalSduPackets:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalSduPacketsDropped:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalArqBlocks:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalArqBlocksRetry:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalArqDiscards:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalRetransmitPktSent:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/SfStats;->totalSyncLoss:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sqn/dcc/SfStats;->uptimeSec:I

    goto :goto_0
.end method
