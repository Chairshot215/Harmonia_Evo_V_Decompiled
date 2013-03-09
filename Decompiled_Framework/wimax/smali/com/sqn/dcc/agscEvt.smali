.class Lcom/sqn/dcc/agscEvt;
.super Ljava/lang/Object;
.source "agscEvt.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "Evt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscEvt;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notify([B)I
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    new-instance v2, Lcom/sqn/dcc/OutValue;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v5

    long-to-int v0, v5

    new-array v3, v0, [S

    const/4 v1, 0x0

    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    invoke-static {p0, v2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v5

    aput-short v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/sqn/dcc/agscEvtImpl;->_use:Lcom/sqn/dcc/EvtClient;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/sqn/dcc/agscEvtImpl;->_use:Lcom/sqn/dcc/EvtClient;

    invoke-virtual {v5, v3}, Lcom/sqn/dcc/EvtClient;->Evt([S)V

    :cond_1
    return v7
.end method
