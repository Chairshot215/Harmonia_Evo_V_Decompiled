.class public Lcom/sqn/dcc/swmOfdmaUlBp;
.super Ljava/lang/Object;
.source "swmOfdmaUlBp.java"


# instance fields
.field public fecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

.field public maxChannelQty:I

.field public rangingDataRatio:I

.field public repetition:Lcom/sqn/dcc/swmOfdmaRepetitionCoding;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmOfdmaFecCode;

    invoke-direct {v0}, Lcom/sqn/dcc/swmOfdmaFecCode;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmOfdmaUlBp;->fecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

    new-instance v0, Lcom/sqn/dcc/swmOfdmaRepetitionCoding;

    invoke-direct {v0}, Lcom/sqn/dcc/swmOfdmaRepetitionCoding;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmOfdmaUlBp;->repetition:Lcom/sqn/dcc/swmOfdmaRepetitionCoding;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmOfdmaUlBp;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmOfdmaUlBp;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v2, p0

    iget-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget v1, p1, Lcom/sqn/dcc/swmOfdmaUlBp;->maxChannelQty:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaUlBp;->fecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaFecCode;->marshall([BLcom/sqn/dcc/swmOfdmaFecCode;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaUlBp;->repetition:Lcom/sqn/dcc/swmOfdmaRepetitionCoding;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaRepetitionCoding;->marshall([BLcom/sqn/dcc/swmOfdmaRepetitionCoding;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    iget v1, p1, Lcom/sqn/dcc/swmOfdmaUlBp;->rangingDataRatio:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    move v1, v0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmOfdmaUlBp;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmOfdmaUlBp;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v2, p0

    iget-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sqn/dcc/swmOfdmaUlBp;->maxChannelQty:I

    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaUlBp;->fecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaFecCode;->unmarshall([BLcom/sqn/dcc/swmOfdmaFecCode;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaUlBp;->repetition:Lcom/sqn/dcc/swmOfdmaRepetitionCoding;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaRepetitionCoding;->unmarshall([BLcom/sqn/dcc/swmOfdmaRepetitionCoding;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sqn/dcc/swmOfdmaUlBp;->rangingDataRatio:I

    move v1, v0

    goto :goto_0
.end method
