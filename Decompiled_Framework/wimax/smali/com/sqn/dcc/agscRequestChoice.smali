.class Lcom/sqn/dcc/agscRequestChoice;
.super Ljava/lang/Object;
.source "agscRequestChoice.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "RequestChoice"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscRequestChoice;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notify([B)I
    .locals 15

    const/4 v12, 0x0

    new-instance v11, Lcom/sqn/dcc/OutValue;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v11}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iget-object v0, v11, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_0
    aget-byte v0, p0, v8

    if-eqz v0, :cond_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const-string v3, ""

    :try_start_0
    new-instance v10, Ljava/lang/String;

    iget-object v0, v11, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v0, v11, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v8, v0

    const-string v14, "UTF8"

    invoke-direct {v10, p0, v13, v0, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v10

    :goto_1
    add-int/lit8 v0, v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v11, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    invoke-static {p0, v11}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    invoke-static {p0, v11}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v13

    long-to-int v7, v13

    new-array v6, v7, [Lcom/sqn/dcc/OmadmMessage;

    const/4 v9, 0x0

    :goto_2
    array-length v0, v6

    if-ge v9, v0, :cond_1

    new-instance v0, Lcom/sqn/dcc/OmadmMessage;

    invoke-direct {v0}, Lcom/sqn/dcc/OmadmMessage;-><init>()V

    aput-object v0, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    :goto_3
    array-length v0, v6

    if-ge v9, v0, :cond_3

    aget-object v0, v6, v9

    invoke-static {p0, v0, v11}, Lcom/sqn/dcc/OmadmMessage;->unmarshall([BLcom/sqn/dcc/OmadmMessage;Lcom/sqn/dcc/OutValue;)I

    move-result v12

    if-eqz v12, :cond_2

    move v0, v12

    :goto_4
    return v0

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/sqn/dcc/agscOmadmImpl;->_use:Lcom/sqn/dcc/OmadmClient;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sqn/dcc/agscOmadmImpl;->_use:Lcom/sqn/dcc/OmadmClient;

    invoke-virtual/range {v0 .. v6}, Lcom/sqn/dcc/OmadmClient;->RequestChoice(JLjava/lang/String;J[Lcom/sqn/dcc/OmadmMessage;)V

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1
.end method
