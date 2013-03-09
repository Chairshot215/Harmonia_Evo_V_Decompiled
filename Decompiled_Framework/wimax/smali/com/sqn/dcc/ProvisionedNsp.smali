.class public Lcom/sqn/dcc/ProvisionedNsp;
.super Ljava/lang/Object;
.source "ProvisionedNsp.java"


# instance fields
.field public nameIncluded:Z

.field public nspId:[J

.field public nspName:Lcom/sqn/dcc/StaticArray_char_128;

.field public priority:S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/StaticArray_char_128;

    invoke-direct {v0}, Lcom/sqn/dcc/StaticArray_char_128;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/ProvisionedNsp;->nspName:Lcom/sqn/dcc/StaticArray_char_128;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/ProvisionedNsp;Lcom/sqn/dcc/OutValue;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/ProvisionedNsp;",
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

    add-int/lit8 v2, v2, 0xa

    if-ge v3, v2, :cond_0

    const v2, -0xfffb

    :goto_0
    return v2

    :cond_0
    iget-object v2, p1, Lcom/sqn/dcc/ProvisionedNsp;->nspId:[J

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    :cond_1
    iget-boolean v2, p1, Lcom/sqn/dcc/ProvisionedNsp;->nameIncluded:Z

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/ProvisionedNsp;->nspName:Lcom/sqn/dcc/StaticArray_char_128;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/StaticArray_char_128;->marshall([BLcom/sqn/dcc/StaticArray_char_128;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_3

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/sqn/dcc/ProvisionedNsp;->nspId:[J

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p1, Lcom/sqn/dcc/ProvisionedNsp;->nspId:[J

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Lcom/sqn/dcc/ProvisionedNsp;->nspId:[J

    aget-wide v2, v2, v0

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-short v2, p1, Lcom/sqn/dcc/ProvisionedNsp;->priority:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    move v2, v1

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/ProvisionedNsp;Lcom/sqn/dcc/OutValue;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/ProvisionedNsp;",
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

    add-int/lit8 v3, v3, 0xa

    if-ge v4, v3, :cond_0

    const v3, -0xfffb

    :goto_0
    return v3

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    long-to-int v0, v3

    new-array v3, v0, [J

    iput-object v3, p1, Lcom/sqn/dcc/ProvisionedNsp;->nspId:[J

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p1, Lcom/sqn/dcc/ProvisionedNsp;->nspId:[J

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p1, Lcom/sqn/dcc/ProvisionedNsp;->nspId:[J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p1, Lcom/sqn/dcc/ProvisionedNsp;->nameIncluded:Z

    iget-object v3, p1, Lcom/sqn/dcc/ProvisionedNsp;->nspName:Lcom/sqn/dcc/StaticArray_char_128;

    invoke-static {p0, v3, p2}, Lcom/sqn/dcc/StaticArray_char_128;->unmarshall([BLcom/sqn/dcc/StaticArray_char_128;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_3

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v3

    iput-short v3, p1, Lcom/sqn/dcc/ProvisionedNsp;->priority:S

    move v3, v2

    goto :goto_0
.end method
