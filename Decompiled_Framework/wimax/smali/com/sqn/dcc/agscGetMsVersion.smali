.class Lcom/sqn/dcc/agscGetMsVersion;
.super Ljava/lang/Object;
.source "agscGetMsVersion.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "GetMsVersion"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscGetMsVersion;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall([BILcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/DeviceVersion;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/DeviceVersion;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/DeviceVersion;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v2, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Lcom/sqn/dcc/DeviceVersion;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/DeviceVersion;->unmarshall([BLcom/sqn/dcc/DeviceVersion;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p4, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Lcom/sqn/dcc/DeviceVersion;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/DeviceVersion;->unmarshall([BLcom/sqn/dcc/DeviceVersion;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, p5, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Lcom/sqn/dcc/DeviceVersion;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/DeviceVersion;->unmarshall([BLcom/sqn/dcc/DeviceVersion;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method
