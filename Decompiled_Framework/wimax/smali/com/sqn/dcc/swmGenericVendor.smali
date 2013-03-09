.class public Lcom/sqn/dcc/swmGenericVendor;
.super Ljava/lang/Object;
.source "swmGenericVendor.java"


# instance fields
.field public dataLen:I

.field public reserved:[S

.field public vendorId:[S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sqn/dcc/swmGenericVendor;->vendorId:[S

    const/16 v0, 0x40

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sqn/dcc/swmGenericVendor;->reserved:[S

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmGenericVendor;Lcom/sqn/dcc/OutValue;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmGenericVendor;",
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

    add-int/lit8 v2, v2, 0x2

    if-ge v3, v2, :cond_1

    const v1, -0xfffb

    :cond_0
    return v1

    :cond_1
    iget v2, p1, Lcom/sqn/dcc/swmGenericVendor;->dataLen:I

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Lcom/sqn/dcc/swmGenericVendor;->vendorId:[S

    aget-short v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x40

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lcom/sqn/dcc/swmGenericVendor;->reserved:[S

    aget-short v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmGenericVendor;Lcom/sqn/dcc/OutValue;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmGenericVendor;",
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

    add-int/lit8 v2, v2, 0x2

    if-ge v3, v2, :cond_1

    const v1, -0xfffb

    :cond_0
    return v1

    :cond_1
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v2

    iput v2, p1, Lcom/sqn/dcc/swmGenericVendor;->dataLen:I

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Lcom/sqn/dcc/swmGenericVendor;->vendorId:[S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v3

    aput-short v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x40

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lcom/sqn/dcc/swmGenericVendor;->reserved:[S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v3

    aput-short v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
