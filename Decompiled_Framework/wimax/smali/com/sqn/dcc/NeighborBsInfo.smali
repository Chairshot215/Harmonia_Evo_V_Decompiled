.class public Lcom/sqn/dcc/NeighborBsInfo;
.super Ljava/lang/Object;
.source "NeighborBsInfo.java"


# instance fields
.field public lastCinr:I

.field public lastRssi:I

.field public lastRtd:I

.field public meanCinr:I

.field public meanRssi:I

.field public meanRtd:I

.field public nbrDesc:Lcom/sqn/dcc/swmNbrDesc;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmNbrDesc;

    invoke-direct {v0}, Lcom/sqn/dcc/swmNbrDesc;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/NeighborBsInfo;->nbrDesc:Lcom/sqn/dcc/swmNbrDesc;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/NeighborBsInfo;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/NeighborBsInfo;",
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

    add-int/lit8 v1, v1, 0x18

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-object v1, p1, Lcom/sqn/dcc/NeighborBsInfo;->nbrDesc:Lcom/sqn/dcc/swmNbrDesc;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmNbrDesc;->marshall([BLcom/sqn/dcc/swmNbrDesc;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v1, p1, Lcom/sqn/dcc/NeighborBsInfo;->lastRssi:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/NeighborBsInfo;->lastCinr:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/NeighborBsInfo;->lastRtd:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/NeighborBsInfo;->meanRssi:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/NeighborBsInfo;->meanCinr:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/NeighborBsInfo;->meanRtd:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    move v1, v0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/NeighborBsInfo;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/NeighborBsInfo;",
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

    add-int/lit8 v1, v1, 0x18

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-object v1, p1, Lcom/sqn/dcc/NeighborBsInfo;->nbrDesc:Lcom/sqn/dcc/swmNbrDesc;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmNbrDesc;->unmarshall([BLcom/sqn/dcc/swmNbrDesc;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sqn/dcc/NeighborBsInfo;->lastRssi:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sqn/dcc/NeighborBsInfo;->lastCinr:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sqn/dcc/NeighborBsInfo;->lastRtd:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sqn/dcc/NeighborBsInfo;->meanRssi:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sqn/dcc/NeighborBsInfo;->meanCinr:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sqn/dcc/NeighborBsInfo;->meanRtd:I

    move v1, v0

    goto :goto_0
.end method
