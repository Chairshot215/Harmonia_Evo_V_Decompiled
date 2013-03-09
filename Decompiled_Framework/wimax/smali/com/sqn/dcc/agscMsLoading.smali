.class Lcom/sqn/dcc/agscMsLoading;
.super Ljava/lang/Object;
.source "agscMsLoading.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "MsLoading"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscMsLoading;->_id:I

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

    new-instance v0, Lcom/sqn/dcc/OutValue;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    sget-object v4, Lcom/sqn/dcc/agscDeviceInfoImpl;->_use:Lcom/sqn/dcc/DeviceInfoClient;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sqn/dcc/agscDeviceInfoImpl;->_use:Lcom/sqn/dcc/DeviceInfoClient;

    invoke-virtual {v4, v1, v2}, Lcom/sqn/dcc/DeviceInfoClient;->MsLoading(J)V

    :cond_0
    return v5
.end method
