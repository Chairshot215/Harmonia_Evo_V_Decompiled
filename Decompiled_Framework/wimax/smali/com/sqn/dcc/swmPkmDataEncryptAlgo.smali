.class public Lcom/sqn/dcc/swmPkmDataEncryptAlgo;
.super Ljava/lang/Object;
.source "swmPkmDataEncryptAlgo.java"


# static fields
.field public static final SWM_PKM_DATA_ENCRYPT_AES_CCM_MODE:I = 0x2

.field public static final SWM_PKM_DATA_ENCRYPT_ALGO_QTY:I = 0x3

.field public static final SWM_PKM_DATA_ENCRYPT_DES_56_CBC_MODE:I = 0x1

.field public static final SWM_PKM_DATA_ENCRYPT_NONE:I


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmPkmDataEncryptAlgo;Lcom/sqn/dcc/OutValue;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmPkmDataEncryptAlgo;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    array-length v1, p0

    iget-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    if-ge v1, v0, :cond_0

    const v0, -0xfffb

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/sqn/dcc/swmPkmDataEncryptAlgo;->value:I

    int-to-long v0, v0

    invoke-static {p0, v0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmPkmDataEncryptAlgo;Lcom/sqn/dcc/OutValue;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmPkmDataEncryptAlgo;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    array-length v1, p0

    iget-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    if-ge v1, v0, :cond_0

    const v0, -0xfffb

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p1, Lcom/sqn/dcc/swmPkmDataEncryptAlgo;->value:I

    const/4 v0, 0x0

    goto :goto_0
.end method
