.class public Lcom/sqn/dcc/swmSsOfdmaRngCapabilities;
.super Ljava/lang/Object;
.source "swmSsOfdmaRngCapabilities.java"


# instance fields
.field public aasCannotRxBroadcast:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmSsOfdmaRngCapabilities;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmSsOfdmaRngCapabilities;",
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

    add-int/lit8 v1, v1, 0x4

    if-ge v2, v1, :cond_0

    const v0, -0xfffb

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p1, Lcom/sqn/dcc/swmSsOfdmaRngCapabilities;->aasCannotRxBroadcast:Z

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmSsOfdmaRngCapabilities;Lcom/sqn/dcc/OutValue;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmSsOfdmaRngCapabilities;",
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

    add-int/lit8 v1, v1, 0x4

    if-ge v2, v1, :cond_0

    const v0, -0xfffb

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p1, Lcom/sqn/dcc/swmSsOfdmaRngCapabilities;->aasCannotRxBroadcast:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
