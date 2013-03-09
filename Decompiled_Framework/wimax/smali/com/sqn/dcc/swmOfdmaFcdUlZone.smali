.class public Lcom/sqn/dcc/swmOfdmaFcdUlZone;
.super Ljava/lang/Object;
.source "swmOfdmaFcdUlZone.java"


# instance fields
.field public amcType:Lcom/sqn/dcc/swmOfdmaAmcType;

.field public disableSubcRotation:Z

.field public permutation:Lcom/sqn/dcc/swmOfdmaPermutationType;

.field public ulPermBase:S

.field public useAllSubchannels:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmOfdmaPermutationType;

    invoke-direct {v0}, Lcom/sqn/dcc/swmOfdmaPermutationType;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmOfdmaFcdUlZone;->permutation:Lcom/sqn/dcc/swmOfdmaPermutationType;

    new-instance v0, Lcom/sqn/dcc/swmOfdmaAmcType;

    invoke-direct {v0}, Lcom/sqn/dcc/swmOfdmaAmcType;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmOfdmaFcdUlZone;->amcType:Lcom/sqn/dcc/swmOfdmaAmcType;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmOfdmaFcdUlZone;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmOfdmaFcdUlZone;",
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

    add-int/lit8 v1, v1, 0x11

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaFcdUlZone;->permutation:Lcom/sqn/dcc/swmOfdmaPermutationType;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaPermutationType;->marshall([BLcom/sqn/dcc/swmOfdmaPermutationType;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-boolean v1, p1, Lcom/sqn/dcc/swmOfdmaFcdUlZone;->useAllSubchannels:Z

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmOfdmaFcdUlZone;->ulPermBase:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaFcdUlZone;->amcType:Lcom/sqn/dcc/swmOfdmaAmcType;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaAmcType;->marshall([BLcom/sqn/dcc/swmOfdmaAmcType;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    iget-boolean v1, p1, Lcom/sqn/dcc/swmOfdmaFcdUlZone;->disableSubcRotation:Z

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    move v1, v0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmOfdmaFcdUlZone;Lcom/sqn/dcc/OutValue;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmOfdmaFcdUlZone;",
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

    add-int/lit8 v1, v1, 0x11

    if-ge v4, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaFcdUlZone;->permutation:Lcom/sqn/dcc/swmOfdmaPermutationType;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaPermutationType;->unmarshall([BLcom/sqn/dcc/swmOfdmaPermutationType;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p1, Lcom/sqn/dcc/swmOfdmaFcdUlZone;->useAllSubchannels:Z

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmOfdmaFcdUlZone;->ulPermBase:S

    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaFcdUlZone;->amcType:Lcom/sqn/dcc/swmOfdmaAmcType;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaAmcType;->unmarshall([BLcom/sqn/dcc/swmOfdmaAmcType;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    :goto_2
    iput-boolean v2, p1, Lcom/sqn/dcc/swmOfdmaFcdUlZone;->disableSubcRotation:Z

    move v1, v0

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2
.end method
