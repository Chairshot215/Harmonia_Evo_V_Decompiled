.class Lcom/sqn/dcc/agscReadNvm;
.super Ljava/lang/Object;
.source "agscReadNvm.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "ReadNvm"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscReadNvm;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall([BILcom/sqn/dcc/OutValue;JI)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;JI)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p3, p4, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    int-to-long v1, p5

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    return v0
.end method

.method public static unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Ljava/lang/Short;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    long-to-int v0, v3

    new-array v3, v0, [Ljava/lang/Short;

    iput-object v3, p3, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p3, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Short;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, p3, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Short;

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
