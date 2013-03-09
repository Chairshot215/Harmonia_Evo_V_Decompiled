.class public Lcom/sqn/dcc/swmCdmaCodeDomain;
.super Ljava/lang/Object;
.source "swmCdmaCodeDomain.java"


# static fields
.field public static final SWM_CDMA_CODE_DOMAIN_BANDWIDTH_REQUEST:I = 0x2

.field public static final SWM_CDMA_CODE_DOMAIN_HANDOVER_RANGING:I = 0x3

.field public static final SWM_CDMA_CODE_DOMAIN_INITIAL_RANGING:I = 0x0

.field public static final SWM_CDMA_CODE_DOMAIN_PERIODIC_RANGING:I = 0x1

.field public static final SWM_CDMA_CODE_DOMAIN_QTY:I = 0x4


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmCdmaCodeDomain;Lcom/sqn/dcc/OutValue;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmCdmaCodeDomain;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    array-length v1, p0

    iget-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    if-ge v1, v0, :cond_0

    const v0, -0xfffb

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/sqn/dcc/swmCdmaCodeDomain;->value:I

    int-to-long v0, v0

    invoke-static {p0, v0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmCdmaCodeDomain;Lcom/sqn/dcc/OutValue;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmCdmaCodeDomain;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    array-length v1, p0

    iget-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    if-ge v1, v0, :cond_0

    const v0, -0xfffb

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p1, Lcom/sqn/dcc/swmCdmaCodeDomain;->value:I

    const/4 v0, 0x0

    goto :goto_0
.end method
