.class public Lcom/sqn/dcc/swmPhsRule;
.super Ljava/lang/Object;
.source "swmPhsRule.java"


# instance fields
.field public field:[S

.field public index:S

.field public mask:[S

.field public noVerification:Z

.field public size:S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sqn/dcc/swmPhsRule;->field:[S

    const/16 v0, 0x20

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sqn/dcc/swmPhsRule;->mask:[S

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmPhsRule;Lcom/sqn/dcc/OutValue;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmPhsRule;",
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

    add-int/lit8 v2, v2, 0x6

    if-ge v3, v2, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-short v2, p1, Lcom/sqn/dcc/swmPhsRule;->index:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0xff

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Lcom/sqn/dcc/swmPhsRule;->field:[S

    aget-short v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0x20

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Lcom/sqn/dcc/swmPhsRule;->mask:[S

    aget-short v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-short v2, p1, Lcom/sqn/dcc/swmPhsRule;->size:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-boolean v2, p1, Lcom/sqn/dcc/swmPhsRule;->noVerification:Z

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmPhsRule;Lcom/sqn/dcc/OutValue;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmPhsRule;",
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

    add-int/lit8 v2, v2, 0x6

    if-ge v3, v2, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmPhsRule;->index:S

    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0xff

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Lcom/sqn/dcc/swmPhsRule;->field:[S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v3

    aput-short v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0x20

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Lcom/sqn/dcc/swmPhsRule;->mask:[S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v3

    aput-short v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmPhsRule;->size:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p1, Lcom/sqn/dcc/swmPhsRule;->noVerification:Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_3
.end method
