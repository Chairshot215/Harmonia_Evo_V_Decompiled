.class public Lcom/sqn/dcc/swmIp6Address;
.super Ljava/lang/Object;
.source "swmIp6Address.java"


# instance fields
.field public firstPart:J

.field public secondPart:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmIp6Address;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmIp6Address;",
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

    add-int/lit8 v1, v1, 0x10

    if-ge v2, v1, :cond_0

    const v0, -0xfffb

    :goto_0
    return v0

    :cond_0
    iget-wide v1, p1, Lcom/sqn/dcc/swmIp6Address;->firstPart:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/swmIp6Address;->secondPart:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmIp6Address;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmIp6Address;",
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

    add-int/lit8 v1, v1, 0x10

    if-ge v2, v1, :cond_0

    const v0, -0xfffb

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/swmIp6Address;->firstPart:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/swmIp6Address;->secondPart:J

    goto :goto_0
.end method
