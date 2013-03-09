.class public Lcom/sqn/dcc/ProvisionedChannel;
.super Ljava/lang/Object;
.source "ProvisionedChannel.java"


# instance fields
.field public bandwidth:J

.field public channelId:J

.field public fft:I

.field public frameDuration:I

.field public frequency:J

.field public preambleBitmap:[S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sqn/dcc/ProvisionedChannel;->preambleBitmap:[S

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/ProvisionedChannel;Lcom/sqn/dcc/OutValue;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/ProvisionedChannel;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    array-length v3, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    if-ge v3, v2, :cond_1

    const v1, -0xfffb

    :cond_0
    return v1

    :cond_1
    iget-wide v2, p1, Lcom/sqn/dcc/ProvisionedChannel;->channelId:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v2, p1, Lcom/sqn/dcc/ProvisionedChannel;->frequency:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v2, p1, Lcom/sqn/dcc/ProvisionedChannel;->bandwidth:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v2, p1, Lcom/sqn/dcc/ProvisionedChannel;->frameDuration:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v2, p1, Lcom/sqn/dcc/ProvisionedChannel;->fft:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xf

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lcom/sqn/dcc/ProvisionedChannel;->preambleBitmap:[S

    aget-short v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/ProvisionedChannel;Lcom/sqn/dcc/OutValue;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/ProvisionedChannel;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    array-length v3, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    if-ge v3, v2, :cond_1

    const v1, -0xfffb

    :cond_0
    return v1

    :cond_1
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/sqn/dcc/ProvisionedChannel;->channelId:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/sqn/dcc/ProvisionedChannel;->frequency:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/sqn/dcc/ProvisionedChannel;->bandwidth:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p1, Lcom/sqn/dcc/ProvisionedChannel;->frameDuration:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p1, Lcom/sqn/dcc/ProvisionedChannel;->fft:I

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xf

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lcom/sqn/dcc/ProvisionedChannel;->preambleBitmap:[S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v3

    aput-short v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
