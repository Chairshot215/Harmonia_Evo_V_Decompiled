.class Lcom/sqn/dcc/agscAuthenticationState;
.super Ljava/lang/Object;
.source "agscAuthenticationState.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "AuthenticationState"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscAuthenticationState;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notify([B)I
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sqn/dcc/OutValue;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    move v2, v3

    :goto_0
    sget-object v4, Lcom/sqn/dcc/agscDeviceInfoImpl;->_use:Lcom/sqn/dcc/DeviceInfoClient;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sqn/dcc/agscDeviceInfoImpl;->_use:Lcom/sqn/dcc/DeviceInfoClient;

    invoke-virtual {v4, v2}, Lcom/sqn/dcc/DeviceInfoClient;->AuthenticationState(Z)V

    :cond_0
    return v3

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
