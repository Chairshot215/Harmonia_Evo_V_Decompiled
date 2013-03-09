.class Lcom/sqn/dcc/agscGetPaStats;
.super Ljava/lang/Object;
.source "agscGetPaStats.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "getPaStats"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscGetPaStats;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall([BILcom/sqn/dcc/OutValue;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    int-to-long v1, p3

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    return v0
.end method

.method public static unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/PktAnalyzerStats;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Lcom/sqn/dcc/PktAnalyzerStats;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/PktAnalyzerStats;->unmarshall([BLcom/sqn/dcc/PktAnalyzerStats;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return v0
.end method
