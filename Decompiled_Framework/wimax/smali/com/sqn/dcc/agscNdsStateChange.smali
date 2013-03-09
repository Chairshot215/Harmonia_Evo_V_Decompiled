.class Lcom/sqn/dcc/agscNdsStateChange;
.super Ljava/lang/Object;
.source "agscNdsStateChange.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "ndsStateChange"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscNdsStateChange;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notify([B)I
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sqn/dcc/OutValue;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    sget-object v4, Lcom/sqn/dcc/agscNdssImpl;->_use:Lcom/sqn/dcc/NdssClient;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sqn/dcc/agscNdssImpl;->_use:Lcom/sqn/dcc/NdssClient;

    invoke-virtual {v4, v2, v3}, Lcom/sqn/dcc/NdssClient;->NdsStateChange(J)V

    :cond_0
    return v5
.end method
