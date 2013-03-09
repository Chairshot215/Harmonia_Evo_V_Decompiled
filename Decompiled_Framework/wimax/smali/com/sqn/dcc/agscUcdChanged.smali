.class Lcom/sqn/dcc/agscUcdChanged;
.super Ljava/lang/Object;
.source "agscUcdChanged.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "UcdChanged"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscUcdChanged;->_id:I

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

    const/4 v1, 0x0

    new-instance v0, Lcom/sqn/dcc/OutValue;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/sqn/dcc/swmUcd;

    invoke-direct {v2}, Lcom/sqn/dcc/swmUcd;-><init>()V

    invoke-static {p0, v2, v0}, Lcom/sqn/dcc/swmUcd;->unmarshall([BLcom/sqn/dcc/swmUcd;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v1

    :cond_0
    sget-object v4, Lcom/sqn/dcc/agscMacSsImpl;->_use:Lcom/sqn/dcc/MacSsClient;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sqn/dcc/agscMacSsImpl;->_use:Lcom/sqn/dcc/MacSsClient;

    invoke-virtual {v4, v2}, Lcom/sqn/dcc/MacSsClient;->UcdChanged(Lcom/sqn/dcc/swmUcd;)V

    :cond_1
    move v1, v3

    goto :goto_0
.end method
