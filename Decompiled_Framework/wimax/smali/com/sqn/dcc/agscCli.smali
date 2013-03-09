.class Lcom/sqn/dcc/agscCli;
.super Ljava/lang/Object;
.source "agscCli.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "Cli"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscCli;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall([BILcom/sqn/dcc/OutValue;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v1, 0x0

    array-length v3, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    if-ge v3, v2, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    aput-byte v3, p0, v2

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public static unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 6
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
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    aget-byte v2, p0, v0

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, v0, v2

    const-string v5, "UTF8"

    invoke-direct {v3, p0, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, p4, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    return v1

    :catch_0
    move-exception v2

    goto :goto_1
.end method
