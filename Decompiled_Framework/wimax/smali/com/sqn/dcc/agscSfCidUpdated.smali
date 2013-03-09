.class Lcom/sqn/dcc/agscSfCidUpdated;
.super Ljava/lang/Object;
.source "agscSfCidUpdated.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "SfCidUpdated"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscSfCidUpdated;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notify([B)I
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v3, Lcom/sqn/dcc/OutValue;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v3}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v6

    long-to-int v0, v6

    new-array v1, v0, [Lcom/sqn/dcc/CidUpdateConfig;

    const/4 v2, 0x0

    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_0

    new-instance v6, Lcom/sqn/dcc/CidUpdateConfig;

    invoke-direct {v6}, Lcom/sqn/dcc/CidUpdateConfig;-><init>()V

    aput-object v6, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_3

    aget-object v6, v1, v2

    invoke-static {p0, v6, v3}, Lcom/sqn/dcc/CidUpdateConfig;->unmarshall([BLcom/sqn/dcc/CidUpdateConfig;Lcom/sqn/dcc/OutValue;)I

    move-result v4

    if-eqz v4, :cond_2

    move v5, v4

    :cond_1
    :goto_2
    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sget-object v6, Lcom/sqn/dcc/agscHoImpl;->_use:Lcom/sqn/dcc/HoClient;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/sqn/dcc/agscHoImpl;->_use:Lcom/sqn/dcc/HoClient;

    invoke-virtual {v6, v1}, Lcom/sqn/dcc/HoClient;->SfCidUpdated([Lcom/sqn/dcc/CidUpdateConfig;)V

    goto :goto_2
.end method
