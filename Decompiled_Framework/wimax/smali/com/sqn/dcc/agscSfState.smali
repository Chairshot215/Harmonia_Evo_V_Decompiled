.class Lcom/sqn/dcc/agscSfState;
.super Ljava/lang/Object;
.source "agscSfState.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "SfState"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscSfState;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notify([B)I
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v0, Lcom/sqn/dcc/OutValue;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/sqn/dcc/swmSfTransaction;

    invoke-direct {v3}, Lcom/sqn/dcc/swmSfTransaction;-><init>()V

    new-instance v1, Lcom/sqn/dcc/SfConfig;

    invoke-direct {v1}, Lcom/sqn/dcc/SfConfig;-><init>()V

    invoke-static {p0, v3, v0}, Lcom/sqn/dcc/swmSfTransaction;->unmarshall([BLcom/sqn/dcc/swmSfTransaction;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_1

    move v4, v2

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-static {p0, v1, v0}, Lcom/sqn/dcc/SfConfig;->unmarshall([BLcom/sqn/dcc/SfConfig;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/sqn/dcc/agscMgtImpl;->_use:Lcom/sqn/dcc/MgtClient;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/sqn/dcc/agscMgtImpl;->_use:Lcom/sqn/dcc/MgtClient;

    invoke-virtual {v5, v3, v1}, Lcom/sqn/dcc/MgtClient;->SfState(Lcom/sqn/dcc/swmSfTransaction;Lcom/sqn/dcc/SfConfig;)V

    goto :goto_0
.end method
