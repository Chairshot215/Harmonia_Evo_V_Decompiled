.class public Lcom/sqn/dcc/swmMaskedIpAddress;
.super Ljava/lang/Object;
.source "swmMaskedIpAddress.java"


# instance fields
.field public address:Lcom/sqn/dcc/swmIpAddress;

.field public mask:Lcom/sqn/dcc/swmIpAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmIpAddress;

    invoke-direct {v0}, Lcom/sqn/dcc/swmIpAddress;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmMaskedIpAddress;->address:Lcom/sqn/dcc/swmIpAddress;

    new-instance v0, Lcom/sqn/dcc/swmIpAddress;

    invoke-direct {v0}, Lcom/sqn/dcc/swmIpAddress;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmMaskedIpAddress;->mask:Lcom/sqn/dcc/swmIpAddress;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmMaskedIpAddress;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmMaskedIpAddress;",
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

    add-int/lit8 v1, v1, 0x0

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-object v1, p1, Lcom/sqn/dcc/swmMaskedIpAddress;->address:Lcom/sqn/dcc/swmIpAddress;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmIpAddress;->marshall([BLcom/sqn/dcc/swmIpAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/sqn/dcc/swmMaskedIpAddress;->mask:Lcom/sqn/dcc/swmIpAddress;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmIpAddress;->marshall([BLcom/sqn/dcc/swmIpAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmMaskedIpAddress;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmMaskedIpAddress;",
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

    add-int/lit8 v1, v1, 0x0

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-object v1, p1, Lcom/sqn/dcc/swmMaskedIpAddress;->address:Lcom/sqn/dcc/swmIpAddress;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmIpAddress;->unmarshall([BLcom/sqn/dcc/swmIpAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/sqn/dcc/swmMaskedIpAddress;->mask:Lcom/sqn/dcc/swmIpAddress;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmIpAddress;->unmarshall([BLcom/sqn/dcc/swmIpAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method
