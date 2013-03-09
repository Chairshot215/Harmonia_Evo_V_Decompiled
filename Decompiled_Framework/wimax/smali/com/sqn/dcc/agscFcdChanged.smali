.class Lcom/sqn/dcc/agscFcdChanged;
.super Ljava/lang/Object;
.source "agscFcdChanged.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "FcdChanged"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscFcdChanged;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notify([B)I
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/sqn/dcc/swmFcd;

    invoke-direct {v0}, Lcom/sqn/dcc/swmFcd;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/sqn/dcc/swmFcd;->unmarshall([BLcom/sqn/dcc/swmFcd;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v2

    :cond_0
    sget-object v4, Lcom/sqn/dcc/agscMacSsImpl;->_use:Lcom/sqn/dcc/MacSsClient;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sqn/dcc/agscMacSsImpl;->_use:Lcom/sqn/dcc/MacSsClient;

    invoke-virtual {v4, v0}, Lcom/sqn/dcc/MacSsClient;->FcdChanged(Lcom/sqn/dcc/swmFcd;)V

    :cond_1
    move v2, v3

    goto :goto_0
.end method
