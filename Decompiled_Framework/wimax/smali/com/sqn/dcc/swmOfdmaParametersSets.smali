.class public Lcom/sqn/dcc/swmOfdmaParametersSets;
.super Ljava/lang/Object;
.source "swmOfdmaParametersSets.java"


# instance fields
.field public harqParametersSet:Lcom/sqn/dcc/swmHarqParameterSets;

.field public supportMacParametersSetA:Z

.field public supportMacParametersSetB:Z

.field public supportPhyParametersSetA:Z

.field public supportPhyParametersSetB:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmHarqParameterSets;

    invoke-direct {v0}, Lcom/sqn/dcc/swmHarqParameterSets;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmOfdmaParametersSets;->harqParametersSet:Lcom/sqn/dcc/swmHarqParameterSets;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmOfdmaParametersSets;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmOfdmaParametersSets;",
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
    iget-boolean v1, p1, Lcom/sqn/dcc/swmOfdmaParametersSets;->supportPhyParametersSetA:Z

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-boolean v1, p1, Lcom/sqn/dcc/swmOfdmaParametersSets;->supportPhyParametersSetB:Z

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaParametersSets;->harqParametersSet:Lcom/sqn/dcc/swmHarqParameterSets;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmHarqParameterSets;->marshall([BLcom/sqn/dcc/swmHarqParameterSets;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-boolean v1, p1, Lcom/sqn/dcc/swmOfdmaParametersSets;->supportMacParametersSetA:Z

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-boolean v1, p1, Lcom/sqn/dcc/swmOfdmaParametersSets;->supportMacParametersSetB:Z

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    move v1, v0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmOfdmaParametersSets;Lcom/sqn/dcc/OutValue;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmOfdmaParametersSets;",
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

    add-int/lit8 v1, v1, 0x14

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
    iput-boolean v1, p1, Lcom/sqn/dcc/swmOfdmaParametersSets;->supportPhyParametersSetA:Z

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, p1, Lcom/sqn/dcc/swmOfdmaParametersSets;->supportPhyParametersSetB:Z

    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaParametersSets;->harqParametersSet:Lcom/sqn/dcc/swmHarqParameterSets;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmHarqParameterSets;->unmarshall([BLcom/sqn/dcc/swmHarqParameterSets;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    move v1, v2

    :goto_3
    iput-boolean v1, p1, Lcom/sqn/dcc/swmOfdmaParametersSets;->supportMacParametersSetA:Z

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_5

    :goto_4
    iput-boolean v2, p1, Lcom/sqn/dcc/swmOfdmaParametersSets;->supportMacParametersSetB:Z

    move v1, v0

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    move v2, v3

    goto :goto_4
.end method
