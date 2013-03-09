.class public Lcom/sqn/dcc/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    iget-object v1, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v2, v1, 0x8

    iget-object v1, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int v0, v2, v1

    iget-object v1, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    return v0
.end method

.method public static Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    iget-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    iget-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    return-void
.end method

.method public static Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v7, 0xff

    iget-object v2, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v7

    const/16 v4, 0x18

    shl-long v3, v2, v4

    iget-object v2, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v5, v2

    and-long/2addr v5, v7

    const/16 v2, 0x10

    shl-long/2addr v5, v2

    or-long/2addr v3, v5

    iget-object v2, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p0, v2

    int-to-long v5, v2

    and-long/2addr v5, v7

    const/16 v2, 0x8

    shl-long/2addr v5, v2

    or-long/2addr v3, v5

    iget-object v2, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, p0, v2

    int-to-long v5, v2

    and-long/2addr v5, v7

    or-long v0, v3, v5

    iget-object v2, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    return-wide v0
.end method

.method public static Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v3, 0xff

    iget-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    const/16 v1, 0x18

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    iget-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    iget-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x8

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    iget-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    and-long v1, p1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    iget-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    return-void
.end method

.method public static Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BZ",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {p0, v0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v7, 0xff

    iget-object v2, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v7

    const/16 v4, 0x38

    shl-long v3, v2, v4

    iget-object v2, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v5, v2

    and-long/2addr v5, v7

    const/16 v2, 0x30

    shl-long/2addr v5, v2

    or-long/2addr v3, v5

    iget-object v2, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p0, v2

    int-to-long v5, v2

    and-long/2addr v5, v7

    const/16 v2, 0x28

    shl-long/2addr v5, v2

    or-long/2addr v3, v5

    iget-object v2, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, p0, v2

    int-to-long v5, v2

    and-long/2addr v5, v7

    const/16 v2, 0x20

    shl-long/2addr v5, v2

    or-long/2addr v3, v5

    iget-object v2, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    aget-byte v2, p0, v2

    int-to-long v5, v2

    and-long/2addr v5, v7

    const/16 v2, 0x18

    shl-long/2addr v5, v2

    or-long/2addr v3, v5

    iget-object v2, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    aget-byte v2, p0, v2

    int-to-long v5, v2

    and-long/2addr v5, v7

    const/16 v2, 0x10

    shl-long/2addr v5, v2

    or-long/2addr v3, v5

    iget-object v2, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    aget-byte v2, p0, v2

    int-to-long v5, v2

    and-long/2addr v5, v7

    const/16 v2, 0x8

    shl-long/2addr v5, v2

    or-long/2addr v3, v5

    iget-object v2, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    aget-byte v2, p0, v2

    int-to-long v5, v2

    and-long/2addr v5, v7

    or-long v0, v3, v5

    iget-object v2, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    return-wide v0
.end method

.method public static Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v3, 0xff

    iget-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    const/16 v1, 0x38

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    iget-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x30

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    iget-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x28

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    iget-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/16 v1, 0x20

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    iget-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    const/16 v1, 0x18

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    iget-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    const/16 v1, 0x10

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    iget-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    const/16 v1, 0x8

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    iget-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    and-long v1, p1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    iget-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    return-void
.end method

.method public static Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)S"
        }
    .end annotation

    iget-object v1, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-byte v1, p0, v1

    int-to-short v0, v1

    iget-object v1, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    return v0
.end method

.method public static Copy8ToBuffer([BCLcom/sqn/dcc/OutValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BC",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    int-to-short v0, p1

    invoke-static {p0, v0, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    return-void
.end method

.method public static Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BS",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-byte v1, p1

    aput-byte v1, p0, v0

    iget-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    return-void
.end method
