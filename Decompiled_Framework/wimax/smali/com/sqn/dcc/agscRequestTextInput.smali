.class Lcom/sqn/dcc/agscRequestTextInput;
.super Ljava/lang/Object;
.source "agscRequestTextInput.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "RequestTextInput"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscRequestTextInput;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notify([B)I
    .locals 11

    const/4 v10, 0x0

    const/4 v4, 0x0

    new-instance v3, Lcom/sqn/dcc/OutValue;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v3}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v5

    iget-object v7, v3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    aget-byte v7, p0, v0

    if-eqz v7, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v7, v3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v7, v3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int v7, v0, v7

    const-string v9, "UTF8"

    invoke-direct {v2, p0, v8, v7, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_1
    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget-object v7, Lcom/sqn/dcc/agscOmadmImpl;->_use:Lcom/sqn/dcc/OmadmClient;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/sqn/dcc/agscOmadmImpl;->_use:Lcom/sqn/dcc/OmadmClient;

    invoke-virtual {v7, v5, v6, v1}, Lcom/sqn/dcc/OmadmClient;->RequestTextInput(JLjava/lang/String;)V

    :cond_1
    return v10

    :catch_0
    move-exception v7

    goto :goto_1
.end method
