.class public Lcom/jme3/export/binary/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertBooleanFromBytes([BI)Z
    .locals 1
    .parameter "byteArray"
    .parameter "offset"

    .prologue
    .line 447
    aget-byte v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static convertDoubleFromBytes([BI)D
    .locals 4
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 337
    invoke-static {p0, p1}, Lcom/jme3/export/binary/ByteUtils;->convertLongFromBytes([BI)J

    move-result-wide v0

    .line 338
    .local v0, bits:J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method public static convertFloatFromBytes([BI)F
    .locals 2
    .parameter "byteArray"
    .parameter "offset"

    .prologue
    .line 392
    invoke-static {p0, p1}, Lcom/jme3/export/binary/ByteUtils;->convertIntFromBytes([BI)I

    move-result v0

    .line 393
    .local v0, number:I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method public static convertIntFromBytes([B)I
    .locals 1
    .parameter "byteArray"

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/jme3/export/binary/ByteUtils;->convertIntFromBytes([BI)I

    move-result v0

    return v0
.end method

.method public static convertIntFromBytes([BI)I
    .locals 3
    .parameter "byteArray"
    .parameter "offset"

    .prologue
    .line 198
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int v0, v1, v2

    .line 201
    .local v0, number:I
    return v0
.end method

.method public static convertLongFromBytes([B)J
    .locals 2
    .parameter "bytes"

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/jme3/export/binary/ByteUtils;->convertLongFromBytes([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertLongFromBytes([BI)J
    .locals 7
    .parameter "bytes"
    .parameter "offset"

    .prologue
    const-wide/16 v5, 0xff

    .line 274
    add-int/lit8 v0, p1, 0x7

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static convertShortFromBytes([BI)S
    .locals 3
    .parameter "byteArray"
    .parameter "offset"

    .prologue
    .line 136
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    int-to-short v0, v1

    .line 137
    .local v0, number:S
    return v0
.end method

.method public static convertToBytes(I)[B
    .locals 3
    .parameter "integer"

    .prologue
    .line 163
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 165
    .local v0, byteArray:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 166
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 167
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 168
    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 169
    return-object v0
.end method

.method public static readInt(Ljava/io/InputStream;)I
    .locals 3
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 185
    .local v0, byteArray:[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 187
    invoke-static {v0}, Lcom/jme3/export/binary/ByteUtils;->convertIntFromBytes([B)I

    move-result v1

    .line 189
    .local v1, number:I
    return v1
.end method

.method public static rightAlignBytes([BI)[B
    .locals 3
    .parameter "bytes"
    .parameter "width"

    .prologue
    .line 475
    array-length v2, p0

    if-eq v2, p1, :cond_0

    .line 476
    new-array v0, p1, [B

    .line 477
    .local v0, rVal:[B
    array-length v2, p0

    sub-int v1, p1, v2

    .local v1, x:I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 478
    array-length v2, p0

    sub-int v2, p1, v2

    sub-int v2, v1, v2

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #rVal:[B
    .end local v1           #x:I
    :cond_0
    move-object v0, p0

    .line 483
    :cond_1
    return-object v0
.end method
