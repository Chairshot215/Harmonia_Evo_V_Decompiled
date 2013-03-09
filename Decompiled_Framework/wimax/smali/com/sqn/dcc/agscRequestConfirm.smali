.class Lcom/sqn/dcc/agscRequestConfirm;
.super Ljava/lang/Object;
.source "agscRequestConfirm.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "RequestConfirm"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscRequestConfirm;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notify([B)I
    .locals 14

    const/4 v9, 0x0

    const/4 v5, 0x0

    new-instance v4, Lcom/sqn/dcc/OutValue;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v4}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v6

    iget-object v8, v4, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    aget-byte v8, p0, v1

    if-eqz v8, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v2, ""

    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v8, v4, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v8, v4, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v8, v1, v8

    const-string v11, "UTF8"

    invoke-direct {v3, p0, v10, v8, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :goto_1
    add-int/lit8 v8, v1, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v4, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    invoke-static {p0, v4}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-nez v8, :cond_2

    move v0, v9

    :goto_2
    sget-object v8, Lcom/sqn/dcc/agscOmadmImpl;->_use:Lcom/sqn/dcc/OmadmClient;

    if-eqz v8, :cond_1

    sget-object v8, Lcom/sqn/dcc/agscOmadmImpl;->_use:Lcom/sqn/dcc/OmadmClient;

    invoke-virtual {v8, v6, v7, v2, v0}, Lcom/sqn/dcc/OmadmClient;->RequestConfirm(JLjava/lang/String;Z)V

    :cond_1
    return v9

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v8

    goto :goto_1
.end method
