.class Lcom/sqn/dcc/agscServingBsRssiLevelChanged;
.super Ljava/lang/Object;
.source "agscServingBsRssiLevelChanged.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "ServingBsRssiLevelChanged"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscServingBsRssiLevelChanged;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notify([B)I
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v1}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    long-to-int v0, v3

    sget-object v3, Lcom/sqn/dcc/agscMgtSsImpl;->_use:Lcom/sqn/dcc/MgtSsClient;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sqn/dcc/agscMgtSsImpl;->_use:Lcom/sqn/dcc/MgtSsClient;

    invoke-virtual {v3, v0}, Lcom/sqn/dcc/MgtSsClient;->ServingBsRssiLevelChanged(I)V

    :cond_0
    return v5
.end method
