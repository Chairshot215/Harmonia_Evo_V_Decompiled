.class public Lcom/sqn/dcc/swmFcd;
.super Ljava/lang/Object;
.source "swmFcd.java"


# instance fields
.field public bandwidth:J

.field public count:I

.field public frameDuration:I

.field public gRatio:Lcom/sqn/dcc/swmChannelGRatio;

.field public phy:Lcom/sqn/dcc/swmFcdPhy;

.field public started:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmChannelGRatio;

    invoke-direct {v0}, Lcom/sqn/dcc/swmChannelGRatio;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmFcd;->gRatio:Lcom/sqn/dcc/swmChannelGRatio;

    new-instance v0, Lcom/sqn/dcc/swmFcdPhy;

    invoke-direct {v0}, Lcom/sqn/dcc/swmFcdPhy;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmFcd;->phy:Lcom/sqn/dcc/swmFcdPhy;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmFcd;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmFcd;",
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

    add-int/lit8 v1, v1, 0x14

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget v1, p1, Lcom/sqn/dcc/swmFcd;->count:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-boolean v1, p1, Lcom/sqn/dcc/swmFcd;->started:Z

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmFcd;->gRatio:Lcom/sqn/dcc/swmChannelGRatio;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmChannelGRatio;->marshall([BLcom/sqn/dcc/swmChannelGRatio;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-wide v1, p1, Lcom/sqn/dcc/swmFcd;->bandwidth:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/swmFcd;->frameDuration:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmFcd;->phy:Lcom/sqn/dcc/swmFcdPhy;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmFcdPhy;->marshall([BLcom/sqn/dcc/swmFcdPhy;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmFcd;Lcom/sqn/dcc/OutValue;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmFcd;",
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

    add-int/lit8 v1, v1, 0x14

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sqn/dcc/swmFcd;->count:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p1, Lcom/sqn/dcc/swmFcd;->started:Z

    iget-object v1, p1, Lcom/sqn/dcc/swmFcd;->gRatio:Lcom/sqn/dcc/swmChannelGRatio;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmChannelGRatio;->unmarshall([BLcom/sqn/dcc/swmChannelGRatio;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/swmFcd;->bandwidth:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sqn/dcc/swmFcd;->frameDuration:I

    iget-object v1, p1, Lcom/sqn/dcc/swmFcd;->phy:Lcom/sqn/dcc/swmFcdPhy;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmFcdPhy;->unmarshall([BLcom/sqn/dcc/swmFcdPhy;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_0
.end method
