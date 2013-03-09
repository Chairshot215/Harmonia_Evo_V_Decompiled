.class public Lcom/sqn/dcc/SfRule;
.super Ljava/lang/Object;
.source "SfRule.java"


# instance fields
.field public classifier:Lcom/sqn/dcc/swmClassifierRule;

.field public phs:[Lcom/sqn/dcc/swmPhsRule;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmClassifierRule;

    invoke-direct {v0}, Lcom/sqn/dcc/swmClassifierRule;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/SfRule;->classifier:Lcom/sqn/dcc/swmClassifierRule;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/SfRule;Lcom/sqn/dcc/OutValue;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/SfRule;",
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

    add-int/lit8 v2, v2, 0x4

    if-ge v3, v2, :cond_0

    const v2, -0xfffb

    :goto_0
    return v2

    :cond_0
    iget-object v2, p1, Lcom/sqn/dcc/SfRule;->classifier:Lcom/sqn/dcc/swmClassifierRule;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmClassifierRule;->marshall([BLcom/sqn/dcc/swmClassifierRule;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/sqn/dcc/SfRule;->phs:[Lcom/sqn/dcc/swmPhsRule;

    if-nez v2, :cond_3

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/sqn/dcc/SfRule;->phs:[Lcom/sqn/dcc/swmPhsRule;

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p1, Lcom/sqn/dcc/SfRule;->phs:[Lcom/sqn/dcc/swmPhsRule;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Lcom/sqn/dcc/SfRule;->phs:[Lcom/sqn/dcc/swmPhsRule;

    aget-object v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmPhsRule;->marshall([BLcom/sqn/dcc/swmPhsRule;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static unmarshall([BLcom/sqn/dcc/SfRule;Lcom/sqn/dcc/OutValue;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/SfRule;",
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

    add-int/lit8 v3, v3, 0x4

    if-ge v4, v3, :cond_0

    const v3, -0xfffb

    :goto_0
    return v3

    :cond_0
    iget-object v3, p1, Lcom/sqn/dcc/SfRule;->classifier:Lcom/sqn/dcc/swmClassifierRule;

    invoke-static {p0, v3, p2}, Lcom/sqn/dcc/swmClassifierRule;->unmarshall([BLcom/sqn/dcc/swmClassifierRule;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    long-to-int v0, v3

    new-array v3, v0, [Lcom/sqn/dcc/swmPhsRule;

    iput-object v3, p1, Lcom/sqn/dcc/SfRule;->phs:[Lcom/sqn/dcc/swmPhsRule;

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p1, Lcom/sqn/dcc/SfRule;->phs:[Lcom/sqn/dcc/swmPhsRule;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v3, p1, Lcom/sqn/dcc/SfRule;->phs:[Lcom/sqn/dcc/swmPhsRule;

    new-instance v4, Lcom/sqn/dcc/swmPhsRule;

    invoke-direct {v4}, Lcom/sqn/dcc/swmPhsRule;-><init>()V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lcom/sqn/dcc/SfRule;->phs:[Lcom/sqn/dcc/swmPhsRule;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    iget-object v3, p1, Lcom/sqn/dcc/SfRule;->phs:[Lcom/sqn/dcc/swmPhsRule;

    aget-object v3, v3, v1

    invoke-static {p0, v3, p2}, Lcom/sqn/dcc/swmPhsRule;->unmarshall([BLcom/sqn/dcc/swmPhsRule;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_0
.end method
