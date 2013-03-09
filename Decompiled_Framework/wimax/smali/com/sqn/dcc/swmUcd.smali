.class public Lcom/sqn/dcc/swmUcd;
.super Ljava/lang/Object;
.source "swmUcd.java"


# instance fields
.field public bp:[Lcom/sqn/dcc/swmUlBp;

.field public bpQty:S

.field public count:I

.field public frequency:J

.field public phy:Lcom/sqn/dcc/swmUcdPhy;

.field public rangingBackoffEnd:S

.field public rangingBackoffStart:S

.field public requestBackoffEnd:S

.field public requestBackoffStart:S

.field public reservationTimeout:S


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [Lcom/sqn/dcc/swmUlBp;

    iput-object v1, p0, Lcom/sqn/dcc/swmUcd;->bp:[Lcom/sqn/dcc/swmUlBp;

    new-instance v1, Lcom/sqn/dcc/swmUcdPhy;

    invoke-direct {v1}, Lcom/sqn/dcc/swmUcdPhy;-><init>()V

    iput-object v1, p0, Lcom/sqn/dcc/swmUcd;->phy:Lcom/sqn/dcc/swmUcdPhy;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sqn/dcc/swmUcd;->bp:[Lcom/sqn/dcc/swmUlBp;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sqn/dcc/swmUcd;->bp:[Lcom/sqn/dcc/swmUlBp;

    new-instance v2, Lcom/sqn/dcc/swmUlBp;

    invoke-direct {v2}, Lcom/sqn/dcc/swmUlBp;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmUcd;Lcom/sqn/dcc/OutValue;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmUcd;",
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

    add-int/lit8 v2, v2, 0xe

    if-ge v3, v2, :cond_0

    const v2, -0xfffb

    :goto_0
    return v2

    :cond_0
    iget v2, p1, Lcom/sqn/dcc/swmUcd;->count:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmUcd;->rangingBackoffStart:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmUcd;->rangingBackoffEnd:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmUcd;->requestBackoffStart:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmUcd;->requestBackoffEnd:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmUcd;->reservationTimeout:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-wide v2, p1, Lcom/sqn/dcc/swmUcd;->frequency:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/swmUcd;->phy:Lcom/sqn/dcc/swmUcdPhy;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmUcdPhy;->marshall([BLcom/sqn/dcc/swmUcdPhy;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    iget-short v2, p1, Lcom/sqn/dcc/swmUcd;->bpQty:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x10

    if-ge v0, v2, :cond_3

    iget-object v2, p1, Lcom/sqn/dcc/swmUcd;->bp:[Lcom/sqn/dcc/swmUlBp;

    aget-object v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmUlBp;->marshall([BLcom/sqn/dcc/swmUlBp;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmUcd;Lcom/sqn/dcc/OutValue;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmUcd;",
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

    add-int/lit8 v2, v2, 0xe

    if-ge v3, v2, :cond_0

    const v2, -0xfffb

    :goto_0
    return v2

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p1, Lcom/sqn/dcc/swmUcd;->count:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmUcd;->rangingBackoffStart:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmUcd;->rangingBackoffEnd:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmUcd;->requestBackoffStart:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmUcd;->requestBackoffEnd:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmUcd;->reservationTimeout:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/sqn/dcc/swmUcd;->frequency:J

    iget-object v2, p1, Lcom/sqn/dcc/swmUcd;->phy:Lcom/sqn/dcc/swmUcdPhy;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmUcdPhy;->unmarshall([BLcom/sqn/dcc/swmUcdPhy;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmUcd;->bpQty:S

    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x10

    if-ge v0, v2, :cond_3

    iget-object v2, p1, Lcom/sqn/dcc/swmUcd;->bp:[Lcom/sqn/dcc/swmUlBp;

    aget-object v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmUlBp;->unmarshall([BLcom/sqn/dcc/swmUlBp;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_0
.end method
