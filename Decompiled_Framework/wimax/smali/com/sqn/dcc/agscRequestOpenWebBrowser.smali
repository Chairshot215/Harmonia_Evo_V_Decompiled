.class Lcom/sqn/dcc/agscRequestOpenWebBrowser;
.super Ljava/lang/Object;
.source "agscRequestOpenWebBrowser.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "RequestOpenWebBrowser"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscRequestOpenWebBrowser;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notify([B)I
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x0

    new-instance v3, Lcom/sqn/dcc/OutValue;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    iget-object v5, v3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    aget-byte v5, p0, v2

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v5, v3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v5, v3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v5, v2, v5

    const-string v7, "UTF8"

    invoke-direct {v1, p0, v6, v5, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_1
    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    sget-object v5, Lcom/sqn/dcc/agscOmadmImpl;->_use:Lcom/sqn/dcc/OmadmClient;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/sqn/dcc/agscOmadmImpl;->_use:Lcom/sqn/dcc/OmadmClient;

    invoke-virtual {v5, v0}, Lcom/sqn/dcc/OmadmClient;->RequestOpenWebBrowser(Ljava/lang/String;)V

    :cond_1
    return v8

    :catch_0
    move-exception v5

    goto :goto_1
.end method
