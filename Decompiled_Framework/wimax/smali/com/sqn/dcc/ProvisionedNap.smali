.class public Lcom/sqn/dcc/ProvisionedNap;
.super Ljava/lang/Object;
.source "ProvisionedNap.java"


# instance fields
.field public channelId:[J

.field public napId:J

.field public priority:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/ProvisionedNap;Lcom/sqn/dcc/OutValue;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/ProvisionedNap;",
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

    add-int/lit8 v2, v2, 0x9

    if-ge v3, v2, :cond_1

    const v1, -0xfffb

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-wide v2, p1, Lcom/sqn/dcc/ProvisionedNap;->napId:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/ProvisionedNap;->priority:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/ProvisionedNap;->channelId:[J

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/sqn/dcc/ProvisionedNap;->channelId:[J

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p1, Lcom/sqn/dcc/ProvisionedNap;->channelId:[J

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lcom/sqn/dcc/ProvisionedNap;->channelId:[J

    aget-wide v2, v2, v0

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static unmarshall([BLcom/sqn/dcc/ProvisionedNap;Lcom/sqn/dcc/OutValue;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/ProvisionedNap;",
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

    add-int/lit8 v3, v3, 0x9

    if-ge v4, v3, :cond_1

    const v2, -0xfffb

    :cond_0
    return v2

    :cond_1
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/sqn/dcc/ProvisionedNap;->napId:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v3

    iput-short v3, p1, Lcom/sqn/dcc/ProvisionedNap;->priority:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    long-to-int v0, v3

    new-array v3, v0, [J

    iput-object v3, p1, Lcom/sqn/dcc/ProvisionedNap;->channelId:[J

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lcom/sqn/dcc/ProvisionedNap;->channelId:[J

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, p1, Lcom/sqn/dcc/ProvisionedNap;->channelId:[J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
