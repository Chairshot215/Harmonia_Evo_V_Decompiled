.class public Lcom/sqn/dcc/swmMobilityParameters;
.super Ljava/lang/Object;
.source "swmMobilityParameters.java"


# instance fields
.field public mobilitySupport:S

.field public powerSavingClass:Lcom/sqn/dcc/swmPowerSavingClassCapability;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmPowerSavingClassCapability;

    invoke-direct {v0}, Lcom/sqn/dcc/swmPowerSavingClassCapability;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmMobilityParameters;->powerSavingClass:Lcom/sqn/dcc/swmPowerSavingClassCapability;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmMobilityParameters;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmMobilityParameters;",
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

    add-int/lit8 v1, v1, 0x1

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-short v1, p1, Lcom/sqn/dcc/swmMobilityParameters;->mobilitySupport:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmMobilityParameters;->powerSavingClass:Lcom/sqn/dcc/swmPowerSavingClassCapability;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmPowerSavingClassCapability;->marshall([BLcom/sqn/dcc/swmPowerSavingClassCapability;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmMobilityParameters;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmMobilityParameters;",
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

    add-int/lit8 v1, v1, 0x1

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmMobilityParameters;->mobilitySupport:S

    iget-object v1, p1, Lcom/sqn/dcc/swmMobilityParameters;->powerSavingClass:Lcom/sqn/dcc/swmPowerSavingClassCapability;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmPowerSavingClassCapability;->unmarshall([BLcom/sqn/dcc/swmPowerSavingClassCapability;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method
