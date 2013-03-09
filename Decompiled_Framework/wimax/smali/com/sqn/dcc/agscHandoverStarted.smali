.class Lcom/sqn/dcc/agscHandoverStarted;
.super Ljava/lang/Object;
.source "agscHandoverStarted.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "HandoverStarted"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscHandoverStarted;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notify([B)I
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    new-instance v3, Lcom/sqn/dcc/OutValue;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v3}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v0

    invoke-static {p0, v3}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v4

    invoke-static {p0, v3}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v6

    long-to-int v2, v6

    sget-object v6, Lcom/sqn/dcc/agscHoImpl;->_use:Lcom/sqn/dcc/HoClient;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/sqn/dcc/agscHoImpl;->_use:Lcom/sqn/dcc/HoClient;

    invoke-virtual {v6, v0, v1, v4, v2}, Lcom/sqn/dcc/HoClient;->HandoverStarted(JSI)V

    :cond_0
    return v8
.end method
