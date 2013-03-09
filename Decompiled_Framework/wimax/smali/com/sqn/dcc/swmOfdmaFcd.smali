.class public Lcom/sqn/dcc/swmOfdmaFcd;
.super Ljava/lang/Object;
.source "swmOfdmaFcd.java"


# instance fields
.field public dlZone:[Lcom/sqn/dcc/swmOfdmaFcdDlZone;

.field public dlZoneQty:S

.field public fftSize:I

.field public preambleIdx:S

.field public subcBitmap:S

.field public ulZone:[Lcom/sqn/dcc/swmOfdmaFcdUlZone;

.field public ulZoneQty:S


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/sqn/dcc/swmOfdmaFcdDlZone;

    iput-object v1, p0, Lcom/sqn/dcc/swmOfdmaFcd;->dlZone:[Lcom/sqn/dcc/swmOfdmaFcdDlZone;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sqn/dcc/swmOfdmaFcdUlZone;

    iput-object v1, p0, Lcom/sqn/dcc/swmOfdmaFcd;->ulZone:[Lcom/sqn/dcc/swmOfdmaFcdUlZone;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sqn/dcc/swmOfdmaFcd;->dlZone:[Lcom/sqn/dcc/swmOfdmaFcdDlZone;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sqn/dcc/swmOfdmaFcd;->dlZone:[Lcom/sqn/dcc/swmOfdmaFcdDlZone;

    new-instance v2, Lcom/sqn/dcc/swmOfdmaFcdDlZone;

    invoke-direct {v2}, Lcom/sqn/dcc/swmOfdmaFcdDlZone;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sqn/dcc/swmOfdmaFcd;->ulZone:[Lcom/sqn/dcc/swmOfdmaFcdUlZone;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sqn/dcc/swmOfdmaFcd;->ulZone:[Lcom/sqn/dcc/swmOfdmaFcdUlZone;

    new-instance v2, Lcom/sqn/dcc/swmOfdmaFcdUlZone;

    invoke-direct {v2}, Lcom/sqn/dcc/swmOfdmaFcdUlZone;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmOfdmaFcd;Lcom/sqn/dcc/OutValue;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmOfdmaFcd;",
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

    add-int/lit8 v2, v2, 0x6

    if-ge v3, v2, :cond_0

    const v2, -0xfffb

    :goto_0
    return v2

    :cond_0
    iget v2, p1, Lcom/sqn/dcc/swmOfdmaFcd;->fftSize:I

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaFcd;->preambleIdx:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaFcd;->subcBitmap:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaFcd;->dlZoneQty:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x7

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaFcd;->dlZone:[Lcom/sqn/dcc/swmOfdmaFcdDlZone;

    aget-object v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmOfdmaFcdDlZone;->marshall([BLcom/sqn/dcc/swmOfdmaFcdDlZone;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-short v2, p1, Lcom/sqn/dcc/swmOfdmaFcd;->ulZoneQty:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_2
    const/4 v2, 0x2

    if-ge v0, v2, :cond_4

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaFcd;->ulZone:[Lcom/sqn/dcc/swmOfdmaFcdUlZone;

    aget-object v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmOfdmaFcdUlZone;->marshall([BLcom/sqn/dcc/swmOfdmaFcdUlZone;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmOfdmaFcd;Lcom/sqn/dcc/OutValue;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmOfdmaFcd;",
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

    add-int/lit8 v2, v2, 0x6

    if-ge v3, v2, :cond_0

    const v2, -0xfffb

    :goto_0
    return v2

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v2

    iput v2, p1, Lcom/sqn/dcc/swmOfdmaFcd;->fftSize:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaFcd;->preambleIdx:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaFcd;->subcBitmap:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaFcd;->dlZoneQty:S

    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x7

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaFcd;->dlZone:[Lcom/sqn/dcc/swmOfdmaFcdDlZone;

    aget-object v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmOfdmaFcdDlZone;->unmarshall([BLcom/sqn/dcc/swmOfdmaFcdDlZone;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmOfdmaFcd;->ulZoneQty:S

    const/4 v0, 0x0

    :goto_2
    const/4 v2, 0x2

    if-ge v0, v2, :cond_4

    iget-object v2, p1, Lcom/sqn/dcc/swmOfdmaFcd;->ulZone:[Lcom/sqn/dcc/swmOfdmaFcdUlZone;

    aget-object v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmOfdmaFcdUlZone;->unmarshall([BLcom/sqn/dcc/swmOfdmaFcdUlZone;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_0
.end method
