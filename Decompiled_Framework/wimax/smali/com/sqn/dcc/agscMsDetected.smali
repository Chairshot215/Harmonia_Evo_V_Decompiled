.class Lcom/sqn/dcc/agscMsDetected;
.super Ljava/lang/Object;
.source "agscMsDetected.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "MsDetected"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscMsDetected;->_id:I

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

    const/4 v3, 0x0

    new-instance v2, Lcom/sqn/dcc/OutValue;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v0

    sget-object v4, Lcom/sqn/dcc/agscInternalImpl;->_use:Lcom/sqn/dcc/InternalClient;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sqn/dcc/agscInternalImpl;->_use:Lcom/sqn/dcc/InternalClient;

    invoke-virtual {v4, v0, v1}, Lcom/sqn/dcc/InternalClient;->MsDetected(J)V

    :cond_0
    return v5
.end method
