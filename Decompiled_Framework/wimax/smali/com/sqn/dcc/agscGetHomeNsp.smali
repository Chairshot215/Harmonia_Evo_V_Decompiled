.class Lcom/sqn/dcc/agscGetHomeNsp;
.super Ljava/lang/Object;
.source "agscGetHomeNsp.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "getHomeNsp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscGetHomeNsp;->_id:I

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

.method public static unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    aget-byte v4, p0, v1

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, v1, v4

    const-string v7, "UTF8"

    invoke-direct {v5, p0, v6, v4, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v5, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    long-to-int v0, v4

    new-array v4, v0, [Ljava/lang/Integer;

    iput-object v4, p4, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_2
    iget-object v4, p4, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Integer;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    iget-object v4, p4, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Integer;

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    return v3

    :catch_0
    move-exception v4

    goto :goto_1
.end method
