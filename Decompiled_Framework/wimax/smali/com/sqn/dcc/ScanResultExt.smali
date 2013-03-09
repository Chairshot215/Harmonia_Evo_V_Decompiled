.class public Lcom/sqn/dcc/ScanResultExt;
.super Ljava/lang/Object;
.source "ScanResultExt.java"


# instance fields
.field public bsId:J

.field public chBitmap:S

.field public channelIdx:I

.field public cinr:I

.field public cinrR1:I

.field public cinrR3:I

.field public napId:J

.field public nspId:[J

.field public nspName:[Lcom/sqn/dcc/StaticArray_char_128;

.field public pbIdx:S

.field public rssi:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/ScanResultExt;Lcom/sqn/dcc/OutValue;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/ScanResultExt;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    array-length v3, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x2a

    if-ge v3, v2, :cond_0

    const v2, -0xfffb

    :goto_0
    return v2

    :cond_0
    iget v2, p1, Lcom/sqn/dcc/ScanResultExt;->channelIdx:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/ScanResultExt;->pbIdx:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-wide v2, p1, Lcom/sqn/dcc/ScanResultExt;->napId:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/ScanResultExt;->nspId:[J

    if-nez v2, :cond_3

    invoke-static {p0, v4, v5, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    :cond_1
    iget-object v2, p1, Lcom/sqn/dcc/ScanResultExt;->nspName:[Lcom/sqn/dcc/StaticArray_char_128;

    if-nez v2, :cond_4

    invoke-static {p0, v4, v5, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    :cond_2
    iget v2, p1, Lcom/sqn/dcc/ScanResultExt;->rssi:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v2, p1, Lcom/sqn/dcc/ScanResultExt;->cinr:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v2, p1, Lcom/sqn/dcc/ScanResultExt;->cinrR1:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v2, p1, Lcom/sqn/dcc/ScanResultExt;->cinrR3:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/ScanResultExt;->chBitmap:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-wide v2, p1, Lcom/sqn/dcc/ScanResultExt;->bsId:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/sqn/dcc/ScanResultExt;->nspId:[J

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p1, Lcom/sqn/dcc/ScanResultExt;->nspId:[J

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Lcom/sqn/dcc/ScanResultExt;->nspId:[J

    aget-wide v2, v2, v0

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/sqn/dcc/ScanResultExt;->nspName:[Lcom/sqn/dcc/StaticArray_char_128;

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p1, Lcom/sqn/dcc/ScanResultExt;->nspName:[Lcom/sqn/dcc/StaticArray_char_128;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Lcom/sqn/dcc/ScanResultExt;->nspName:[Lcom/sqn/dcc/StaticArray_char_128;

    aget-object v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/StaticArray_char_128;->marshall([BLcom/sqn/dcc/StaticArray_char_128;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static unmarshall([BLcom/sqn/dcc/ScanResultExt;Lcom/sqn/dcc/OutValue;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/ScanResultExt;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    array-length v4, p0

    iget-object v3, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x2a

    if-ge v4, v3, :cond_0

    const v3, -0xfffb

    :goto_0
    return v3

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p1, Lcom/sqn/dcc/ScanResultExt;->channelIdx:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v3

    iput-short v3, p1, Lcom/sqn/dcc/ScanResultExt;->pbIdx:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/sqn/dcc/ScanResultExt;->napId:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    long-to-int v0, v3

    new-array v3, v0, [J

    iput-object v3, p1, Lcom/sqn/dcc/ScanResultExt;->nspId:[J

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p1, Lcom/sqn/dcc/ScanResultExt;->nspId:[J

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p1, Lcom/sqn/dcc/ScanResultExt;->nspId:[J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    long-to-int v0, v3

    new-array v3, v0, [Lcom/sqn/dcc/StaticArray_char_128;

    iput-object v3, p1, Lcom/sqn/dcc/ScanResultExt;->nspName:[Lcom/sqn/dcc/StaticArray_char_128;

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lcom/sqn/dcc/ScanResultExt;->nspName:[Lcom/sqn/dcc/StaticArray_char_128;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v3, p1, Lcom/sqn/dcc/ScanResultExt;->nspName:[Lcom/sqn/dcc/StaticArray_char_128;

    new-instance v4, Lcom/sqn/dcc/StaticArray_char_128;

    invoke-direct {v4}, Lcom/sqn/dcc/StaticArray_char_128;-><init>()V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_3
    iget-object v3, p1, Lcom/sqn/dcc/ScanResultExt;->nspName:[Lcom/sqn/dcc/StaticArray_char_128;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    iget-object v3, p1, Lcom/sqn/dcc/ScanResultExt;->nspName:[Lcom/sqn/dcc/StaticArray_char_128;

    aget-object v3, v3, v1

    invoke-static {p0, v3, p2}, Lcom/sqn/dcc/StaticArray_char_128;->unmarshall([BLcom/sqn/dcc/StaticArray_char_128;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p1, Lcom/sqn/dcc/ScanResultExt;->rssi:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p1, Lcom/sqn/dcc/ScanResultExt;->cinr:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p1, Lcom/sqn/dcc/ScanResultExt;->cinrR1:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p1, Lcom/sqn/dcc/ScanResultExt;->cinrR3:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v3

    iput-short v3, p1, Lcom/sqn/dcc/ScanResultExt;->chBitmap:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/sqn/dcc/ScanResultExt;->bsId:J

    move v3, v2

    goto/16 :goto_0
.end method
