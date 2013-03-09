.class Lcom/sqn/dcc/agscAddPgStream;
.super Ljava/lang/Object;
.source "agscAddPgStream.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "addPgStream"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscAddPgStream;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall([BILcom/sqn/dcc/OutValue;ILcom/sqn/dcc/pgPacketDescriptor;Lcom/sqn/dcc/FlowDescriptor;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/sqn/dcc/pgPacketDescriptor;",
            "Lcom/sqn/dcc/FlowDescriptor;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    int-to-long v2, p3

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    invoke-static {p0, p4, p2}, Lcom/sqn/dcc/pgPacketDescriptor;->marshall([BLcom/sqn/dcc/pgPacketDescriptor;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-static {p0, p5, p2}, Lcom/sqn/dcc/FlowDescriptor;->marshall([BLcom/sqn/dcc/FlowDescriptor;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 3
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
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    return v0
.end method
