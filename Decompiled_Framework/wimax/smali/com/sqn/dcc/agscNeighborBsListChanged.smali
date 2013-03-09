.class Lcom/sqn/dcc/agscNeighborBsListChanged;
.super Ljava/lang/Object;
.source "agscNeighborBsListChanged.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "NeighborBsListChanged"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscNeighborBsListChanged;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notify([B)I
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-instance v3, Lcom/sqn/dcc/OutValue;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v3}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v0

    invoke-static {p0, v3}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    sget-object v5, Lcom/sqn/dcc/agscHoImpl;->_use:Lcom/sqn/dcc/HoClient;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/sqn/dcc/agscHoImpl;->_use:Lcom/sqn/dcc/HoClient;

    invoke-virtual {v5, v0, v1, v2}, Lcom/sqn/dcc/HoClient;->NeighborBsListChanged(SJ)V

    :cond_0
    return v6
.end method
