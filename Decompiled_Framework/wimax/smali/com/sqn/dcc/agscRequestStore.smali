.class Lcom/sqn/dcc/agscRequestStore;
.super Ljava/lang/Object;
.source "agscRequestStore.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "RequestStore"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscRequestStore;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notify([B)I
    .locals 14

    const/4 v13, 0x0

    const/4 v7, 0x0

    new-instance v6, Lcom/sqn/dcc/OutValue;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v6, v10}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v6}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v8

    iget-object v10, v6, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    aget-byte v10, p0, v2

    if-eqz v10, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v4, ""

    :try_start_0
    new-instance v5, Ljava/lang/String;

    iget-object v10, v6, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v10, v6, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int v10, v2, v10

    const-string v12, "UTF8"

    invoke-direct {v5, p0, v11, v10, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    :goto_1
    add-int/lit8 v10, v2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v6, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    invoke-static {p0, v6}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v10

    long-to-int v0, v10

    new-array v1, v0, [S

    const/4 v3, 0x0

    :goto_2
    array-length v10, v1

    if-ge v3, v10, :cond_1

    invoke-static {p0, v6}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v10

    aput-short v10, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    sget-object v10, Lcom/sqn/dcc/agscPlsImpl;->_use:Lcom/sqn/dcc/PlsClient;

    if-eqz v10, :cond_2

    sget-object v10, Lcom/sqn/dcc/agscPlsImpl;->_use:Lcom/sqn/dcc/PlsClient;

    invoke-virtual {v10, v8, v9, v4, v1}, Lcom/sqn/dcc/PlsClient;->RequestStore(JLjava/lang/String;[S)V

    :cond_2
    return v13

    :catch_0
    move-exception v10

    goto :goto_1
.end method
