.class Lcom/sqn/dcc/agscReplyData;
.super Ljava/lang/Object;
.source "agscReplyData.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "ReplyData"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscReplyData;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall([BILcom/sqn/dcc/OutValue;J[S)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;J[S)I"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p0, p3, p4, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    array-length v2, p5

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p5

    if-ge v0, v2, :cond_0

    aget-short v2, p5, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
