.class Lcom/sqn/dcc/agscSetProvisionedNaps;
.super Ljava/lang/Object;
.source "agscSetProvisionedNaps.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "setProvisionedNaps"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscSetProvisionedNaps;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall([BILcom/sqn/dcc/OutValue;[Lcom/sqn/dcc/ProvisionedNap;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;[",
            "Lcom/sqn/dcc/ProvisionedNap;",
            ")I"
        }
    .end annotation

    const/4 v1, 0x0

    array-length v3, p3

    int-to-long v3, v3

    invoke-static {p0, v3, v4, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_1

    aget-object v3, p3, v0

    invoke-static {p0, v3, p2}, Lcom/sqn/dcc/ProvisionedNap;->marshall([BLcom/sqn/dcc/ProvisionedNap;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_0

    move v2, v1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method public static unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    return v0
.end method
