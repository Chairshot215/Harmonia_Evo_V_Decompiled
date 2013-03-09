.class public Lorg/apache/commons/codec/binary/BinaryCodec;
.super Ljava/lang/Object;
.source "BinaryCodec.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryDecoder;
.implements Lorg/apache/commons/codec/BinaryEncoder;


# static fields
.field private static final BITS:[I = null

.field private static final BIT_0:I = 0x1

.field private static final BIT_1:I = 0x2

.field private static final BIT_2:I = 0x4

.field private static final BIT_3:I = 0x8

.field private static final BIT_4:I = 0x10

.field private static final BIT_5:I = 0x20

.field private static final BIT_6:I = 0x40

.field private static final BIT_7:I = 0x80

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final EMPTY_CHAR_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [C

    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    new-array v0, v1, [B

    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromAscii([B)[B
    .locals 6

    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_2

    :cond_0
    sget-object v3, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    :cond_1
    return-object v3

    :cond_2
    array-length v4, p0

    shr-int/lit8 v4, v4, 0x3

    new-array v3, v4, [B

    const/4 v1, 0x0

    array-length v4, p0

    add-int/lit8 v2, v4, -0x1

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    const/4 v0, 0x0

    :goto_1
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v4, v4

    if-ge v0, v4, :cond_4

    sub-int v4, v2, v0

    aget-byte v4, p0, v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_3

    aget-byte v4, v3, v1

    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v5, v5, v0

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_0
.end method

.method public static fromAscii([C)[B
    .locals 6

    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_2

    :cond_0
    sget-object v3, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    :cond_1
    return-object v3

    :cond_2
    array-length v4, p0

    shr-int/lit8 v4, v4, 0x3

    new-array v3, v4, [B

    const/4 v1, 0x0

    array-length v4, p0

    add-int/lit8 v2, v4, -0x1

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    const/4 v0, 0x0

    :goto_1
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v4, v4

    if-ge v0, v4, :cond_4

    sub-int v4, v2, v0

    aget-char v4, p0, v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_3

    aget-byte v4, v3, v1

    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v5, v5, v0

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_0
.end method

.method public static toAsciiBytes([B)[B
    .locals 6

    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_2

    :cond_0
    sget-object v3, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    :cond_1
    return-object v3

    :cond_2
    array-length v4, p0

    shl-int/lit8 v4, v4, 0x3

    new-array v3, v4, [B

    const/4 v1, 0x0

    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_1

    const/4 v0, 0x0

    :goto_1
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v4, v4

    if-ge v0, v4, :cond_4

    aget-byte v4, p0, v1

    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v5, v5, v0

    and-int/2addr v4, v5

    if-nez v4, :cond_3

    sub-int v4, v2, v0

    const/16 v5, 0x30

    aput-byte v5, v3, v4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sub-int v4, v2, v0

    const/16 v5, 0x31

    aput-byte v5, v3, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_0
.end method

.method public static toAsciiChars([B)[C
    .locals 6

    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_2

    :cond_0
    sget-object v3, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    :cond_1
    return-object v3

    :cond_2
    array-length v4, p0

    shl-int/lit8 v4, v4, 0x3

    new-array v3, v4, [C

    const/4 v1, 0x0

    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_1

    const/4 v0, 0x0

    :goto_1
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v4, v4

    if-ge v0, v4, :cond_4

    aget-byte v4, p0, v1

    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v5, v5, v0

    and-int/2addr v4, v5

    if-nez v4, :cond_3

    sub-int v4, v2, v0

    const/16 v5, 0x30

    aput-char v5, v3, v4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sub-int v4, v2, v0

    const/16 v5, 0x31

    aput-char v5, v3, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_0
.end method

.method public static toAsciiString([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiChars([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    check-cast p1, [B

    check-cast p1, [B

    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([B)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, [C

    if-eqz v0, :cond_2

    check-cast p1, [C

    check-cast p1, [C

    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "argument not a byte array"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode([B)[B
    .locals 1

    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    instance-of v0, p1, [B

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "argument not a byte array"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, [B

    check-cast p1, [B

    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiChars([B)[C

    move-result-object v0

    return-object v0
.end method

.method public encode([B)[B
    .locals 1

    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiBytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    goto :goto_0
.end method
