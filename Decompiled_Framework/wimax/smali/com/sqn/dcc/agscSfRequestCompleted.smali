.class Lcom/sqn/dcc/agscSfRequestCompleted;
.super Ljava/lang/Object;
.source "agscSfRequestCompleted.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "SfRequestCompleted"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscSfRequestCompleted;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notify([B)I
    .locals 13

    const/4 v10, 0x0

    const/4 v9, 0x0

    new-instance v8, Lcom/sqn/dcc/OutValue;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lcom/sqn/dcc/swmSfTransaction;

    invoke-direct {v5}, Lcom/sqn/dcc/swmSfTransaction;-><init>()V

    new-instance v6, Lcom/sqn/dcc/SfConfig;

    invoke-direct {v6}, Lcom/sqn/dcc/SfConfig;-><init>()V

    invoke-static {p0, v8}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    invoke-static {p0, v8}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    invoke-static {p0, v5, v8}, Lcom/sqn/dcc/swmSfTransaction;->unmarshall([BLcom/sqn/dcc/swmSfTransaction;Lcom/sqn/dcc/OutValue;)I

    move-result v9

    if-eqz v9, :cond_0

    move v0, v9

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, v6, v8}, Lcom/sqn/dcc/SfConfig;->unmarshall([BLcom/sqn/dcc/SfConfig;Lcom/sqn/dcc/OutValue;)I

    move-result v9

    if-eqz v9, :cond_1

    move v0, v9

    goto :goto_0

    :cond_1
    invoke-static {p0, v8}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v11

    long-to-int v7, v11

    sget-object v0, Lcom/sqn/dcc/agscMgtImpl;->_use:Lcom/sqn/dcc/MgtClient;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sqn/dcc/agscMgtImpl;->_use:Lcom/sqn/dcc/MgtClient;

    invoke-virtual/range {v0 .. v7}, Lcom/sqn/dcc/MgtClient;->SfRequestCompleted(JJLcom/sqn/dcc/swmSfTransaction;Lcom/sqn/dcc/SfConfig;I)V

    :cond_2
    move v0, v10

    goto :goto_0
.end method
