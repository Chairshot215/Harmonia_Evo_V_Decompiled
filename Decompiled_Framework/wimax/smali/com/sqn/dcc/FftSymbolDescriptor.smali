.class public Lcom/sqn/dcc/FftSymbolDescriptor;
.super Ljava/lang/Object;
.source "FftSymbolDescriptor.java"


# instance fields
.field public channelI:[S

.field public channelQ:[S

.field public frameNumber:J

.field public symbolIndex:J

.field public symbolPower:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x364

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/sqn/dcc/FftSymbolDescriptor;->channelI:[S

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/sqn/dcc/FftSymbolDescriptor;->channelQ:[S

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/FftSymbolDescriptor;Lcom/sqn/dcc/OutValue;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/FftSymbolDescriptor;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/16 v4, 0x364

    const/4 v1, 0x0

    array-length v3, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    if-ge v3, v2, :cond_1

    const v1, -0xfffb

    :cond_0
    return v1

    :cond_1
    iget-wide v2, p1, Lcom/sqn/dcc/FftSymbolDescriptor;->frameNumber:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v2, p1, Lcom/sqn/dcc/FftSymbolDescriptor;->symbolIndex:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v2, p1, Lcom/sqn/dcc/FftSymbolDescriptor;->symbolPower:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    iget-object v2, p1, Lcom/sqn/dcc/FftSymbolDescriptor;->channelI:[S

    aget-short v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_0

    iget-object v2, p1, Lcom/sqn/dcc/FftSymbolDescriptor;->channelQ:[S

    aget-short v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static unmarshall([BLcom/sqn/dcc/FftSymbolDescriptor;Lcom/sqn/dcc/OutValue;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/FftSymbolDescriptor;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/16 v4, 0x364

    const/4 v1, 0x0

    array-length v3, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    if-ge v3, v2, :cond_1

    const v1, -0xfffb

    :cond_0
    return v1

    :cond_1
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/sqn/dcc/FftSymbolDescriptor;->frameNumber:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/sqn/dcc/FftSymbolDescriptor;->symbolIndex:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p1, Lcom/sqn/dcc/FftSymbolDescriptor;->symbolPower:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    iget-object v2, p1, Lcom/sqn/dcc/FftSymbolDescriptor;->channelI:[S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_0

    iget-object v2, p1, Lcom/sqn/dcc/FftSymbolDescriptor;->channelQ:[S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
