.class public Lcom/sqn/dcc/SniffFilterRule;
.super Ljava/lang/Object;
.source "SniffFilterRule.java"


# instance fields
.field public cid:I

.field public doTestCid:Z

.field public id:J

.field public sniffMac:[Z

.field public sniffRx:Z

.field public sniffTx:Z

.field public type:Lcom/sqn/dcc/swmSniffLoggedType;

.field public withError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sqn/dcc/SniffFilterRule;->sniffMac:[Z

    new-instance v0, Lcom/sqn/dcc/swmSniffLoggedType;

    invoke-direct {v0}, Lcom/sqn/dcc/swmSniffLoggedType;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/SniffFilterRule;->type:Lcom/sqn/dcc/swmSniffLoggedType;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/SniffFilterRule;Lcom/sqn/dcc/OutValue;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/SniffFilterRule;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    array-length v3, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1a

    if-ge v3, v2, :cond_0

    const v2, -0xfffb

    :goto_0
    return v2

    :cond_0
    iget-wide v2, p1, Lcom/sqn/dcc/SniffFilterRule;->id:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-boolean v2, p1, Lcom/sqn/dcc/SniffFilterRule;->doTestCid:Z

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget v2, p1, Lcom/sqn/dcc/SniffFilterRule;->cid:I

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    iget-boolean v2, p1, Lcom/sqn/dcc/SniffFilterRule;->sniffRx:Z

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-boolean v2, p1, Lcom/sqn/dcc/SniffFilterRule;->sniffTx:Z

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/SniffFilterRule;->type:Lcom/sqn/dcc/swmSniffLoggedType;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmSniffLoggedType;->marshall([BLcom/sqn/dcc/swmSniffLoggedType;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x100

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Lcom/sqn/dcc/SniffFilterRule;->sniffMac:[Z

    aget-boolean v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-boolean v2, p1, Lcom/sqn/dcc/SniffFilterRule;->withError:Z

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    move v2, v1

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/SniffFilterRule;Lcom/sqn/dcc/OutValue;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/SniffFilterRule;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    array-length v5, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1a

    if-ge v5, v2, :cond_0

    const v2, -0xfffb

    :goto_0
    return v2

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/sqn/dcc/SniffFilterRule;->id:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v5

    cmp-long v2, v5, v8

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p1, Lcom/sqn/dcc/SniffFilterRule;->doTestCid:Z

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v2

    iput v2, p1, Lcom/sqn/dcc/SniffFilterRule;->cid:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v5

    cmp-long v2, v5, v8

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    iput-boolean v2, p1, Lcom/sqn/dcc/SniffFilterRule;->sniffRx:Z

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v5

    cmp-long v2, v5, v8

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    iput-boolean v2, p1, Lcom/sqn/dcc/SniffFilterRule;->sniffTx:Z

    iget-object v2, p1, Lcom/sqn/dcc/SniffFilterRule;->type:Lcom/sqn/dcc/swmSniffLoggedType;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmSniffLoggedType;->unmarshall([BLcom/sqn/dcc/swmSniffLoggedType;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_4

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_4
    const/16 v2, 0x100

    if-ge v0, v2, :cond_6

    iget-object v5, p1, Lcom/sqn/dcc/SniffFilterRule;->sniffMac:[Z

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v6

    cmp-long v2, v6, v8

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    aput-boolean v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move v2, v4

    goto :goto_5

    :cond_6
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v5

    cmp-long v2, v5, v8

    if-nez v2, :cond_7

    :goto_6
    iput-boolean v3, p1, Lcom/sqn/dcc/SniffFilterRule;->withError:Z

    move v2, v1

    goto :goto_0

    :cond_7
    move v3, v4

    goto :goto_6
.end method
