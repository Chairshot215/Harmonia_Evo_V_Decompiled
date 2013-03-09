.class Lcom/sqn/dcc/agscSessionStart;
.super Ljava/lang/Object;
.source "agscSessionStart.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "SessionStart"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscSessionStart;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notify([B)I
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v1}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    move v0, v3

    :goto_0
    sget-object v4, Lcom/sqn/dcc/agscOmadmImpl;->_use:Lcom/sqn/dcc/OmadmClient;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sqn/dcc/agscOmadmImpl;->_use:Lcom/sqn/dcc/OmadmClient;

    invoke-virtual {v4, v0}, Lcom/sqn/dcc/OmadmClient;->SessionStart(Z)V

    :cond_0
    return v3

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
