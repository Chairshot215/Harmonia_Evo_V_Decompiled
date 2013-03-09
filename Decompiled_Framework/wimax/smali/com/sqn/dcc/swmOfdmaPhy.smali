.class public Lcom/sqn/dcc/swmOfdmaPhy;
.super Ljava/lang/Object;
.source "swmOfdmaPhy.java"


# instance fields
.field public channelBw:S

.field public cyclicPrefix:Lcom/sqn/dcc/swmChannelGRatio;

.field public fftSize:S

.field public frameDuration:Lcom/sqn/dcc/swmOfdmaFrameDurationCode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmChannelGRatio;

    invoke-direct {v0}, Lcom/sqn/dcc/swmChannelGRatio;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmOfdmaPhy;->cyclicPrefix:Lcom/sqn/dcc/swmChannelGRatio;

    new-instance v0, Lcom/sqn/dcc/swmOfdmaFrameDurationCode;

    invoke-direct {v0}, Lcom/sqn/dcc/swmOfdmaFrameDurationCode;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmOfdmaPhy;->frameDuration:Lcom/sqn/dcc/swmOfdmaFrameDurationCode;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmOfdmaPhy;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmOfdmaPhy;",
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

    add-int/lit8 v1, v1, 0xa

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-short v1, p1, Lcom/sqn/dcc/swmOfdmaPhy;->channelBw:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmOfdmaPhy;->fftSize:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaPhy;->cyclicPrefix:Lcom/sqn/dcc/swmChannelGRatio;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmChannelGRatio;->marshall([BLcom/sqn/dcc/swmChannelGRatio;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaPhy;->frameDuration:Lcom/sqn/dcc/swmOfdmaFrameDurationCode;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaFrameDurationCode;->marshall([BLcom/sqn/dcc/swmOfdmaFrameDurationCode;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmOfdmaPhy;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmOfdmaPhy;",
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

    add-int/lit8 v1, v1, 0xa

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmOfdmaPhy;->channelBw:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmOfdmaPhy;->fftSize:S

    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaPhy;->cyclicPrefix:Lcom/sqn/dcc/swmChannelGRatio;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmChannelGRatio;->unmarshall([BLcom/sqn/dcc/swmChannelGRatio;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaPhy;->frameDuration:Lcom/sqn/dcc/swmOfdmaFrameDurationCode;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaFrameDurationCode;->unmarshall([BLcom/sqn/dcc/swmOfdmaFrameDurationCode;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method
