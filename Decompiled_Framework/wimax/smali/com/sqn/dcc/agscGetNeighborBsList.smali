.class Lcom/sqn/dcc/agscGetNeighborBsList;
.super Ljava/lang/Object;
.source "agscGetNeighborBsList.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "GetNeighborBsList"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscGetNeighborBsList;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall([BILcom/sqn/dcc/OutValue;SI)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;SI)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p3, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    int-to-long v1, p4

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    return v0
.end method

.method public static unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/NeighborBsInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    long-to-int v0, v4

    new-array v4, v0, [Lcom/sqn/dcc/NeighborBsInfo;

    iput-object v4, p4, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p4, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    check-cast v4, [Lcom/sqn/dcc/NeighborBsInfo;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    iget-object v4, p4, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    check-cast v4, [Lcom/sqn/dcc/NeighborBsInfo;

    new-instance v5, Lcom/sqn/dcc/NeighborBsInfo;

    invoke-direct {v5}, Lcom/sqn/dcc/NeighborBsInfo;-><init>()V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p4, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    check-cast v4, [Lcom/sqn/dcc/NeighborBsInfo;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    iget-object v4, p4, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    check-cast v4, [Lcom/sqn/dcc/NeighborBsInfo;

    aget-object v4, v4, v1

    invoke-static {p0, v4, p2}, Lcom/sqn/dcc/NeighborBsInfo;->unmarshall([BLcom/sqn/dcc/NeighborBsInfo;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_1

    move v3, v2

    :goto_2
    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2
.end method
