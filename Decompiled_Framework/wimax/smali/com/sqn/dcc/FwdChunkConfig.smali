.class public Lcom/sqn/dcc/FwdChunkConfig;
.super Ljava/lang/Object;
.source "FwdChunkConfig.java"


# instance fields
.field public enable:Z

.field public mask:[S

.field public offset:I

.field public range:I

.field public result:[S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/FwdChunkConfig;Lcom/sqn/dcc/OutValue;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/FwdChunkConfig;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    array-length v3, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    if-ge v3, v2, :cond_1

    const v1, -0xfffb

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v2, p1, Lcom/sqn/dcc/FwdChunkConfig;->enable:Z

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget v2, p1, Lcom/sqn/dcc/FwdChunkConfig;->offset:I

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    iget v2, p1, Lcom/sqn/dcc/FwdChunkConfig;->range:I

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/FwdChunkConfig;->mask:[S

    if-nez v2, :cond_3

    invoke-static {p0, v4, v5, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    :cond_2
    iget-object v2, p1, Lcom/sqn/dcc/FwdChunkConfig;->result:[S

    if-nez v2, :cond_4

    invoke-static {p0, v4, v5, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/sqn/dcc/FwdChunkConfig;->mask:[S

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p1, Lcom/sqn/dcc/FwdChunkConfig;->mask:[S

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Lcom/sqn/dcc/FwdChunkConfig;->mask:[S

    aget-short v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/sqn/dcc/FwdChunkConfig;->result:[S

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p1, Lcom/sqn/dcc/FwdChunkConfig;->result:[S

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lcom/sqn/dcc/FwdChunkConfig;->result:[S

    aget-short v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static unmarshall([BLcom/sqn/dcc/FwdChunkConfig;Lcom/sqn/dcc/OutValue;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/FwdChunkConfig;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    array-length v4, p0

    iget-object v3, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    if-ge v4, v3, :cond_1

    const v2, -0xfffb

    :cond_0
    return v2

    :cond_1
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p1, Lcom/sqn/dcc/FwdChunkConfig;->enable:Z

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v3

    iput v3, p1, Lcom/sqn/dcc/FwdChunkConfig;->offset:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v3

    iput v3, p1, Lcom/sqn/dcc/FwdChunkConfig;->range:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    long-to-int v0, v3

    new-array v3, v0, [S

    iput-object v3, p1, Lcom/sqn/dcc/FwdChunkConfig;->mask:[S

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p1, Lcom/sqn/dcc/FwdChunkConfig;->mask:[S

    array-length v3, v3

    if-ge v1, v3, :cond_3

    iget-object v3, p1, Lcom/sqn/dcc/FwdChunkConfig;->mask:[S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v4

    aput-short v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    long-to-int v0, v3

    new-array v3, v0, [S

    iput-object v3, p1, Lcom/sqn/dcc/FwdChunkConfig;->result:[S

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lcom/sqn/dcc/FwdChunkConfig;->result:[S

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, p1, Lcom/sqn/dcc/FwdChunkConfig;->result:[S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v4

    aput-short v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
