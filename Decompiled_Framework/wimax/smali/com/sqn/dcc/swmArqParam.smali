.class public Lcom/sqn/dcc/swmArqParam;
.super Ljava/lang/Object;
.source "swmArqParam.java"


# instance fields
.field public blockLifetime:I

.field public blockSize:Lcom/sqn/dcc/swmArqBlockSize;

.field public deliverInOrder:Z

.field public enable:Z

.field public retryTimeout:Lcom/sqn/dcc/swmArqRetryTimeout;

.field public rxPurgeTimeout:I

.field public syncLossTimeout:I

.field public windowSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmArqBlockSize;

    invoke-direct {v0}, Lcom/sqn/dcc/swmArqBlockSize;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmArqParam;->blockSize:Lcom/sqn/dcc/swmArqBlockSize;

    new-instance v0, Lcom/sqn/dcc/swmArqRetryTimeout;

    invoke-direct {v0}, Lcom/sqn/dcc/swmArqRetryTimeout;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmArqParam;->retryTimeout:Lcom/sqn/dcc/swmArqRetryTimeout;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmArqParam;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmArqParam;",
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

    add-int/lit8 v1, v1, 0x16

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p1, Lcom/sqn/dcc/swmArqParam;->enable:Z

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/swmArqParam;->windowSize:I

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmArqParam;->blockSize:Lcom/sqn/dcc/swmArqBlockSize;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmArqBlockSize;->marshall([BLcom/sqn/dcc/swmArqBlockSize;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/sqn/dcc/swmArqParam;->retryTimeout:Lcom/sqn/dcc/swmArqRetryTimeout;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmArqRetryTimeout;->marshall([BLcom/sqn/dcc/swmArqRetryTimeout;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    iget v1, p1, Lcom/sqn/dcc/swmArqParam;->blockLifetime:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/swmArqParam;->syncLossTimeout:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-boolean v1, p1, Lcom/sqn/dcc/swmArqParam;->deliverInOrder:Z

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/swmArqParam;->rxPurgeTimeout:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    move v1, v0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmArqParam;Lcom/sqn/dcc/OutValue;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmArqParam;",
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

    add-int/lit8 v1, v1, 0x16

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
    iput-boolean v1, p1, Lcom/sqn/dcc/swmArqParam;->enable:Z

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v1

    iput v1, p1, Lcom/sqn/dcc/swmArqParam;->windowSize:I

    iget-object v1, p1, Lcom/sqn/dcc/swmArqParam;->blockSize:Lcom/sqn/dcc/swmArqBlockSize;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmArqBlockSize;->unmarshall([BLcom/sqn/dcc/swmArqBlockSize;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/sqn/dcc/swmArqParam;->retryTimeout:Lcom/sqn/dcc/swmArqRetryTimeout;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmArqRetryTimeout;->unmarshall([BLcom/sqn/dcc/swmArqRetryTimeout;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, p1, Lcom/sqn/dcc/swmArqParam;->blockLifetime:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, p1, Lcom/sqn/dcc/swmArqParam;->syncLossTimeout:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    :goto_2
    iput-boolean v2, p1, Lcom/sqn/dcc/swmArqParam;->deliverInOrder:Z

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sqn/dcc/swmArqParam;->rxPurgeTimeout:I

    move v1, v0

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2
.end method
