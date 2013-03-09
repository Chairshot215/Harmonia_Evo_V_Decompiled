.class public Lcom/sqn/dcc/MgtMsgStats;
.super Ljava/lang/Object;
.source "MgtMsgStats.java"


# instance fields
.field public macMsgQty:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/sqn/dcc/MgtMsgStats;->macMsgQty:[J

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/MgtMsgStats;Lcom/sqn/dcc/OutValue;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/MgtMsgStats;",
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

    add-int/lit8 v2, v2, 0x0

    if-ge v3, v2, :cond_1

    const v1, -0xfffb

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lcom/sqn/dcc/MgtMsgStats;->macMsgQty:[J

    aget-wide v2, v2, v0

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/MgtMsgStats;Lcom/sqn/dcc/OutValue;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/MgtMsgStats;",
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

    add-int/lit8 v2, v2, 0x0

    if-ge v3, v2, :cond_1

    const v1, -0xfffb

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lcom/sqn/dcc/MgtMsgStats;->macMsgQty:[J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
