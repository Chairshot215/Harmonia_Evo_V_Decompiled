.class Lcom/sqn/dcc/agscSetRssiLevelNtfLevelParams;
.super Ljava/lang/Object;
.source "agscSetRssiLevelNtfLevelParams.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "SetRssiLevelNtfLevelParams"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscSetRssiLevelNtfLevelParams;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall([BILcom/sqn/dcc/OutValue;ILcom/sqn/dcc/RssiLevelLimitsStruct;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/sqn/dcc/RssiLevelLimitsStruct;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    int-to-long v1, p3

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    invoke-static {p0, p4, p2}, Lcom/sqn/dcc/RssiLevelLimitsStruct;->marshall([BLcom/sqn/dcc/RssiLevelLimitsStruct;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return v0
.end method
