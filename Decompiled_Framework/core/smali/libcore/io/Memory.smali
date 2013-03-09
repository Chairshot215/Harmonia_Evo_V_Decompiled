.class public final Llibcore/io/Memory;
.super Ljava/lang/Object;
.source "Memory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V
.end method

.method public static native peekByte(I)B
.end method

.method public static native peekByteArray(I[BII)V
.end method

.method public static native peekCharArray(I[CIIZ)V
.end method

.method public static native peekDoubleArray(I[DIIZ)V
.end method

.method public static native peekFloatArray(I[FIIZ)V
.end method

.method public static native peekInt(IZ)I
.end method

.method public static peekInt([BILjava/nio/ByteOrder;)I
    .locals 3

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 p1, v0, 0x1

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    or-int/2addr v1, v2

    move p1, v0

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    add-int/lit8 p1, v0, 0x1

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    move p1, v0

    goto :goto_0
.end method

.method public static native peekIntArray(I[IIIZ)V
.end method

.method public static native peekLong(IZ)J
.end method

.method public static peekLong([BILjava/nio/ByteOrder;)J
    .locals 9

    const-wide v7, 0xffffffffL

    const/16 v5, 0x20

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v3, :cond_0

    add-int/lit8 v2, p1, 0x1

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 p1, v2, 0x1

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v2, p1, 0x1

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 p1, v2, 0x1

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x0

    or-int v0, v3, v4

    add-int/lit8 v2, p1, 0x1

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 p1, v2, 0x1

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v2, p1, 0x1

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x0

    or-int v1, v3, v4

    int-to-long v3, v0

    shl-long/2addr v3, v5

    int-to-long v5, v1

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    move p1, v2

    :goto_0
    return-wide v3

    :cond_0
    add-int/lit8 v2, p1, 0x1

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    add-int/lit8 p1, v2, 0x1

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v2, p1, 0x1

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 p1, v2, 0x1

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int v1, v3, v4

    add-int/lit8 v2, p1, 0x1

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    add-int/lit8 p1, v2, 0x1

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v2, p1, 0x1

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int v0, v3, v4

    int-to-long v3, v0

    shl-long/2addr v3, v5

    int-to-long v5, v1

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    move p1, v2

    goto :goto_0
.end method

.method public static native peekLongArray(I[JIIZ)V
.end method

.method public static native peekShort(IZ)S
.end method

.method public static peekShort([BILjava/nio/ByteOrder;)S
    .locals 2

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_0

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_0
.end method

.method public static native peekShortArray(I[SIIZ)V
.end method

.method public static native pokeByte(IB)V
.end method

.method public static native pokeByteArray(I[BII)V
.end method

.method public static native pokeCharArray(I[CIIZ)V
.end method

.method public static native pokeDoubleArray(I[DIIZ)V
.end method

.method public static native pokeFloatArray(I[FIIZ)V
.end method

.method public static native pokeInt(IIZ)V
.end method

.method public static pokeInt([BIILjava/nio/ByteOrder;)V
    .locals 2

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    move p1, v0

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    move p1, v0

    goto :goto_0
.end method

.method public static native pokeIntArray(I[IIIZ)V
.end method

.method public static native pokeLong(IJZ)V
.end method

.method public static pokeLong([BIJLjava/nio/ByteOrder;)V
    .locals 4

    const/16 v3, 0x20

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p4, v2, :cond_0

    shr-long v2, p2, v3

    long-to-int v0, v2

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    add-int/lit8 p1, v1, 0x1

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    add-int/lit8 p1, v1, 0x1

    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    long-to-int v0, p2

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    add-int/lit8 p1, v1, 0x1

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    move p1, v1

    :goto_0
    return-void

    :cond_0
    long-to-int v0, p2

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    add-int/lit8 p1, v1, 0x1

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    add-int/lit8 p1, v1, 0x1

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    shr-long v2, p2, v3

    long-to-int v0, v2

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    add-int/lit8 p1, v1, 0x1

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    move p1, v1

    goto :goto_0
.end method

.method public static native pokeLongArray(I[JIIZ)V
.end method

.method public static native pokeShort(ISZ)V
.end method

.method public static pokeShort([BISLjava/nio/ByteOrder;)V
    .locals 2

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    move p1, v0

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    move p1, v0

    goto :goto_0
.end method

.method public static native pokeShortArray(I[SIIZ)V
.end method

.method public static native unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V
.end method

.method public static native unsafeBulkPut([BIILjava/lang/Object;IIZ)V
.end method
