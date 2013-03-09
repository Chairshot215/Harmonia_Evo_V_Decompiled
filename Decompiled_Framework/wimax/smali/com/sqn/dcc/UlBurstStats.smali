.class public Lcom/sqn/dcc/UlBurstStats;
.super Ljava/lang/Object;
.source "UlBurstStats.java"


# instance fields
.field public anonymousGrant:J

.field public fecTypeCcStats:[[Lcom/sqn/dcc/swmFecCodeStats;

.field public fecTypeCtcStats:[[Lcom/sqn/dcc/swmFecCodeStats;

.field public harqGrant:J

.field public lastGrantHarqFecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

.field public lastHarqGrantFecRepetition:J

.field public lastHarqGrantSlots:J

.field public lastUnicastGrantFecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

.field public lastUnicastGrantFecRepetition:J

.field public lastUnicastGrantSlots:J

.field public unicastGrant:J


# direct methods
.method public constructor <init>()V
    .locals 6

    const/16 v5, 0x9

    const/4 v4, 0x3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {v4, v5}, [I

    move-result-object v2

    const-class v3, Lcom/sqn/dcc/swmFecCodeStats;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/sqn/dcc/swmFecCodeStats;

    iput-object v2, p0, Lcom/sqn/dcc/UlBurstStats;->fecTypeCcStats:[[Lcom/sqn/dcc/swmFecCodeStats;

    filled-new-array {v4, v5}, [I

    move-result-object v2

    const-class v3, Lcom/sqn/dcc/swmFecCodeStats;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/sqn/dcc/swmFecCodeStats;

    iput-object v2, p0, Lcom/sqn/dcc/UlBurstStats;->fecTypeCtcStats:[[Lcom/sqn/dcc/swmFecCodeStats;

    new-instance v2, Lcom/sqn/dcc/swmOfdmaFecCode;

    invoke-direct {v2}, Lcom/sqn/dcc/swmOfdmaFecCode;-><init>()V

    iput-object v2, p0, Lcom/sqn/dcc/UlBurstStats;->lastGrantHarqFecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

    new-instance v2, Lcom/sqn/dcc/swmOfdmaFecCode;

    invoke-direct {v2}, Lcom/sqn/dcc/swmOfdmaFecCode;-><init>()V

    iput-object v2, p0, Lcom/sqn/dcc/UlBurstStats;->lastUnicastGrantFecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_0

    iget-object v2, p0, Lcom/sqn/dcc/UlBurstStats;->fecTypeCcStats:[[Lcom/sqn/dcc/swmFecCodeStats;

    aget-object v2, v2, v0

    new-instance v3, Lcom/sqn/dcc/swmFecCodeStats;

    invoke-direct {v3}, Lcom/sqn/dcc/swmFecCodeStats;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_3

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v5, :cond_2

    iget-object v2, p0, Lcom/sqn/dcc/UlBurstStats;->fecTypeCtcStats:[[Lcom/sqn/dcc/swmFecCodeStats;

    aget-object v2, v2, v0

    new-instance v3, Lcom/sqn/dcc/swmFecCodeStats;

    invoke-direct {v3}, Lcom/sqn/dcc/swmFecCodeStats;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/UlBurstStats;Lcom/sqn/dcc/OutValue;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/UlBurstStats;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/16 v6, 0x9

    const/4 v5, 0x3

    const/4 v2, 0x0

    array-length v4, p0

    iget-object v3, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    if-ge v4, v3, :cond_0

    const v3, -0xfffb

    :goto_0
    return v3

    :cond_0
    iget-wide v3, p1, Lcom/sqn/dcc/UlBurstStats;->harqGrant:J

    invoke-static {p0, v3, v4, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v3, p1, Lcom/sqn/dcc/UlBurstStats;->unicastGrant:J

    invoke-static {p0, v3, v4, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v3, p1, Lcom/sqn/dcc/UlBurstStats;->anonymousGrant:J

    invoke-static {p0, v3, v4, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-object v3, p1, Lcom/sqn/dcc/UlBurstStats;->lastGrantHarqFecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

    invoke-static {p0, v3, p2}, Lcom/sqn/dcc/swmOfdmaFecCode;->marshall([BLcom/sqn/dcc/swmOfdmaFecCode;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    iget-wide v3, p1, Lcom/sqn/dcc/UlBurstStats;->lastHarqGrantFecRepetition:J

    invoke-static {p0, v3, v4, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v3, p1, Lcom/sqn/dcc/UlBurstStats;->lastHarqGrantSlots:J

    invoke-static {p0, v3, v4, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-object v3, p1, Lcom/sqn/dcc/UlBurstStats;->lastUnicastGrantFecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

    invoke-static {p0, v3, p2}, Lcom/sqn/dcc/swmOfdmaFecCode;->marshall([BLcom/sqn/dcc/swmOfdmaFecCode;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    iget-wide v3, p1, Lcom/sqn/dcc/UlBurstStats;->lastUnicastGrantFecRepetition:J

    invoke-static {p0, v3, v4, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v3, p1, Lcom/sqn/dcc/UlBurstStats;->lastUnicastGrantSlots:J

    invoke-static {p0, v3, v4, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_5

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_4

    iget-object v3, p1, Lcom/sqn/dcc/UlBurstStats;->fecTypeCcStats:[[Lcom/sqn/dcc/swmFecCodeStats;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-static {p0, v3, p2}, Lcom/sqn/dcc/swmFecCodeStats;->marshall([BLcom/sqn/dcc/swmFecCodeStats;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v5, :cond_8

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v6, :cond_7

    iget-object v3, p1, Lcom/sqn/dcc/UlBurstStats;->fecTypeCtcStats:[[Lcom/sqn/dcc/swmFecCodeStats;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-static {p0, v3, p2}, Lcom/sqn/dcc/swmFecCodeStats;->marshall([BLcom/sqn/dcc/swmFecCodeStats;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_6

    move v3, v2

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    move v3, v2

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/UlBurstStats;Lcom/sqn/dcc/OutValue;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/UlBurstStats;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/16 v6, 0x9

    const/4 v5, 0x3

    const/4 v2, 0x0

    array-length v4, p0

    iget-object v3, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    if-ge v4, v3, :cond_0

    const v3, -0xfffb

    :goto_0
    return v3

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/sqn/dcc/UlBurstStats;->harqGrant:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/sqn/dcc/UlBurstStats;->unicastGrant:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/sqn/dcc/UlBurstStats;->anonymousGrant:J

    iget-object v3, p1, Lcom/sqn/dcc/UlBurstStats;->lastGrantHarqFecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

    invoke-static {p0, v3, p2}, Lcom/sqn/dcc/swmOfdmaFecCode;->unmarshall([BLcom/sqn/dcc/swmOfdmaFecCode;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/sqn/dcc/UlBurstStats;->lastHarqGrantFecRepetition:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/sqn/dcc/UlBurstStats;->lastHarqGrantSlots:J

    iget-object v3, p1, Lcom/sqn/dcc/UlBurstStats;->lastUnicastGrantFecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

    invoke-static {p0, v3, p2}, Lcom/sqn/dcc/swmOfdmaFecCode;->unmarshall([BLcom/sqn/dcc/swmOfdmaFecCode;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/sqn/dcc/UlBurstStats;->lastUnicastGrantFecRepetition:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/sqn/dcc/UlBurstStats;->lastUnicastGrantSlots:J

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_5

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_4

    iget-object v3, p1, Lcom/sqn/dcc/UlBurstStats;->fecTypeCcStats:[[Lcom/sqn/dcc/swmFecCodeStats;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-static {p0, v3, p2}, Lcom/sqn/dcc/swmFecCodeStats;->unmarshall([BLcom/sqn/dcc/swmFecCodeStats;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v5, :cond_8

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v6, :cond_7

    iget-object v3, p1, Lcom/sqn/dcc/UlBurstStats;->fecTypeCtcStats:[[Lcom/sqn/dcc/swmFecCodeStats;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-static {p0, v3, p2}, Lcom/sqn/dcc/swmFecCodeStats;->unmarshall([BLcom/sqn/dcc/swmFecCodeStats;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_6

    move v3, v2

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    move v3, v2

    goto :goto_0
.end method
