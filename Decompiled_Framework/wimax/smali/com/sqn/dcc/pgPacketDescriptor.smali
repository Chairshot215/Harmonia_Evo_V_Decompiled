.class public Lcom/sqn/dcc/pgPacketDescriptor;
.super Ljava/lang/Object;
.source "pgPacketDescriptor.java"


# instance fields
.field public cs:I

.field public dstIp4:J

.field public dstIp6:Lcom/sqn/dcc/swmIp6Address;

.field public dstMac:Lcom/sqn/dcc/swmMaskedMacAddress;

.field public ipVersion:Lcom/sqn/dcc/swmIpType;

.field public packetSizeMax:I

.field public packetSizeMin:I

.field public packetSizeStep:I

.field public payloadBuffer:[S

.field public sizeType:I

.field public srcIp4:J

.field public srcIp6:Lcom/sqn/dcc/swmIp6Address;

.field public srcMac:Lcom/sqn/dcc/swmMaskedMacAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmMaskedMacAddress;

    invoke-direct {v0}, Lcom/sqn/dcc/swmMaskedMacAddress;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/pgPacketDescriptor;->srcMac:Lcom/sqn/dcc/swmMaskedMacAddress;

    new-instance v0, Lcom/sqn/dcc/swmMaskedMacAddress;

    invoke-direct {v0}, Lcom/sqn/dcc/swmMaskedMacAddress;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/pgPacketDescriptor;->dstMac:Lcom/sqn/dcc/swmMaskedMacAddress;

    new-instance v0, Lcom/sqn/dcc/swmIpType;

    invoke-direct {v0}, Lcom/sqn/dcc/swmIpType;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/pgPacketDescriptor;->ipVersion:Lcom/sqn/dcc/swmIpType;

    new-instance v0, Lcom/sqn/dcc/swmIp6Address;

    invoke-direct {v0}, Lcom/sqn/dcc/swmIp6Address;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/pgPacketDescriptor;->srcIp6:Lcom/sqn/dcc/swmIp6Address;

    new-instance v0, Lcom/sqn/dcc/swmIp6Address;

    invoke-direct {v0}, Lcom/sqn/dcc/swmIp6Address;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/pgPacketDescriptor;->dstIp6:Lcom/sqn/dcc/swmIp6Address;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/pgPacketDescriptor;Lcom/sqn/dcc/OutValue;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/pgPacketDescriptor;",
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

    add-int/lit8 v2, v2, 0x24

    if-ge v3, v2, :cond_0

    const v2, -0xfffb

    :goto_0
    return v2

    :cond_0
    iget v2, p1, Lcom/sqn/dcc/pgPacketDescriptor;->cs:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v2, p1, Lcom/sqn/dcc/pgPacketDescriptor;->sizeType:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v2, p1, Lcom/sqn/dcc/pgPacketDescriptor;->packetSizeMin:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v2, p1, Lcom/sqn/dcc/pgPacketDescriptor;->packetSizeMax:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v2, p1, Lcom/sqn/dcc/pgPacketDescriptor;->packetSizeStep:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/pgPacketDescriptor;->srcMac:Lcom/sqn/dcc/swmMaskedMacAddress;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmMaskedMacAddress;->marshall([BLcom/sqn/dcc/swmMaskedMacAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/sqn/dcc/pgPacketDescriptor;->dstMac:Lcom/sqn/dcc/swmMaskedMacAddress;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmMaskedMacAddress;->marshall([BLcom/sqn/dcc/swmMaskedMacAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/sqn/dcc/pgPacketDescriptor;->ipVersion:Lcom/sqn/dcc/swmIpType;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmIpType;->marshall([BLcom/sqn/dcc/swmIpType;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    iget-wide v2, p1, Lcom/sqn/dcc/pgPacketDescriptor;->srcIp4:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v2, p1, Lcom/sqn/dcc/pgPacketDescriptor;->dstIp4:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/pgPacketDescriptor;->srcIp6:Lcom/sqn/dcc/swmIp6Address;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmIp6Address;->marshall([BLcom/sqn/dcc/swmIp6Address;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/sqn/dcc/pgPacketDescriptor;->dstIp6:Lcom/sqn/dcc/swmIp6Address;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmIp6Address;->marshall([BLcom/sqn/dcc/swmIp6Address;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/sqn/dcc/pgPacketDescriptor;->payloadBuffer:[S

    if-nez v2, :cond_7

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    :cond_6
    move v2, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/sqn/dcc/pgPacketDescriptor;->payloadBuffer:[S

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p1, Lcom/sqn/dcc/pgPacketDescriptor;->payloadBuffer:[S

    array-length v2, v2

    if-ge v0, v2, :cond_6

    iget-object v2, p1, Lcom/sqn/dcc/pgPacketDescriptor;->payloadBuffer:[S

    aget-short v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static unmarshall([BLcom/sqn/dcc/pgPacketDescriptor;Lcom/sqn/dcc/OutValue;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/pgPacketDescriptor;",
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

    add-int/lit8 v3, v3, 0x24

    if-ge v4, v3, :cond_0

    const v3, -0xfffb

    :goto_0
    return v3

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p1, Lcom/sqn/dcc/pgPacketDescriptor;->cs:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p1, Lcom/sqn/dcc/pgPacketDescriptor;->sizeType:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p1, Lcom/sqn/dcc/pgPacketDescriptor;->packetSizeMin:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p1, Lcom/sqn/dcc/pgPacketDescriptor;->packetSizeMax:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p1, Lcom/sqn/dcc/pgPacketDescriptor;->packetSizeStep:I

    iget-object v3, p1, Lcom/sqn/dcc/pgPacketDescriptor;->srcMac:Lcom/sqn/dcc/swmMaskedMacAddress;

    invoke-static {p0, v3, p2}, Lcom/sqn/dcc/swmMaskedMacAddress;->unmarshall([BLcom/sqn/dcc/swmMaskedMacAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lcom/sqn/dcc/pgPacketDescriptor;->dstMac:Lcom/sqn/dcc/swmMaskedMacAddress;

    invoke-static {p0, v3, p2}, Lcom/sqn/dcc/swmMaskedMacAddress;->unmarshall([BLcom/sqn/dcc/swmMaskedMacAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/sqn/dcc/pgPacketDescriptor;->ipVersion:Lcom/sqn/dcc/swmIpType;

    invoke-static {p0, v3, p2}, Lcom/sqn/dcc/swmIpType;->unmarshall([BLcom/sqn/dcc/swmIpType;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/sqn/dcc/pgPacketDescriptor;->srcIp4:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/sqn/dcc/pgPacketDescriptor;->dstIp4:J

    iget-object v3, p1, Lcom/sqn/dcc/pgPacketDescriptor;->srcIp6:Lcom/sqn/dcc/swmIp6Address;

    invoke-static {p0, v3, p2}, Lcom/sqn/dcc/swmIp6Address;->unmarshall([BLcom/sqn/dcc/swmIp6Address;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_4

    move v3, v2

    goto :goto_0

    :cond_4
    iget-object v3, p1, Lcom/sqn/dcc/pgPacketDescriptor;->dstIp6:Lcom/sqn/dcc/swmIp6Address;

    invoke-static {p0, v3, p2}, Lcom/sqn/dcc/swmIp6Address;->unmarshall([BLcom/sqn/dcc/swmIp6Address;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_5

    move v3, v2

    goto :goto_0

    :cond_5
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    long-to-int v0, v3

    new-array v3, v0, [S

    iput-object v3, p1, Lcom/sqn/dcc/pgPacketDescriptor;->payloadBuffer:[S

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p1, Lcom/sqn/dcc/pgPacketDescriptor;->payloadBuffer:[S

    array-length v3, v3

    if-ge v1, v3, :cond_6

    iget-object v3, p1, Lcom/sqn/dcc/pgPacketDescriptor;->payloadBuffer:[S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v4

    aput-short v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move v3, v2

    goto :goto_0
.end method
