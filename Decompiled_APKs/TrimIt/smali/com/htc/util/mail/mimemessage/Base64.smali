.class public Lcom/htc/util/mail/mimemessage/Base64;
.super Ljava/lang/Object;
.source "Base64.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;


# static fields
.field static final CHUNK_SEPARATOR:[B = null

.field static final CHUNK_SIZE:I = 0x4c

.field private static final MASK_6BITS:I = 0x3f

.field private static final MASK_8BITS:I = 0xff

.field private static final PAD:B = 0x3dt

.field private static final base64ToInt:[B

.field private static final intToBase64:[B


# instance fields
.field private buf:[B

.field private currentLinePos:I

.field private final decodeSize:I

.field private final encodeSize:I

.field private eof:Z

.field private final lineLength:I

.field private final lineSeparator:[B

.field private modulus:I

.field private pos:I

.field private readPos:I

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/mail/mimemessage/Base64;->CHUNK_SEPARATOR:[B

    .line 69
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/util/mail/mimemessage/Base64;->intToBase64:[B

    .line 92
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/util/mail/mimemessage/Base64;->base64ToInt:[B

    return-void

    .line 59
    nop

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    .line 69
    nop

    :array_1
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 92
    :array_2
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x3et
        0xfft
        0xfft
        0xfft
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 182
    const/16 v0, 0x4c

    sget-object v1, Lcom/htc/util/mail/mimemessage/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1}, Lcom/htc/util/mail/mimemessage/Base64;-><init>(I[B)V

    .line 183
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "lineLength"

    .prologue
    .line 201
    sget-object v0, Lcom/htc/util/mail/mimemessage/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/mimemessage/Base64;-><init>(I[B)V

    .line 202
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 5
    .parameter "lineLength"
    .parameter "lineSeparator"

    .prologue
    const/4 v4, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput p1, p0, Lcom/htc/util/mail/mimemessage/Base64;->lineLength:I

    .line 224
    array-length v2, p2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/htc/util/mail/mimemessage/Base64;->lineSeparator:[B

    .line 225
    iget-object v2, p0, Lcom/htc/util/mail/mimemessage/Base64;->lineSeparator:[B

    array-length v3, p2

    invoke-static {p2, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    if-lez p1, :cond_0

    .line 227
    array-length v2, p2

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/htc/util/mail/mimemessage/Base64;->encodeSize:I

    .line 231
    :goto_0
    iget v2, p0, Lcom/htc/util/mail/mimemessage/Base64;->encodeSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/util/mail/mimemessage/Base64;->decodeSize:I

    .line 232
    invoke-static {p2}, Lcom/htc/util/mail/mimemessage/Base64;->containsBase64Byte([B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .local v0, sep:Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lineSeperator must not contain base64 characters: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    .end local v0           #sep:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x4

    iput v2, p0, Lcom/htc/util/mail/mimemessage/Base64;->encodeSize:I

    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .restart local v0       #sep:Ljava/lang/String;
    goto :goto_1

    .line 241
    .end local v0           #sep:Ljava/lang/String;
    .end local v1           #uee:Ljava/io/UnsupportedEncodingException;
    :cond_1
    return-void
.end method

.method private static containsBase64Byte([B)Z
    .locals 2
    .parameter "arrayOctet"

    .prologue
    .line 495
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 496
    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/htc/util/mail/mimemessage/Base64;->isBase64(B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    const/4 v1, 0x1

    .line 500
    :goto_1
    return v1

    .line 495
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static decodeBase64([B)[B
    .locals 7
    .parameter "base64Data"

    .prologue
    const/4 v6, 0x0

    .line 615
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    :cond_0
    move-object v4, p0

    .line 630
    :goto_0
    return-object v4

    .line 618
    :cond_1
    new-instance v0, Lcom/htc/util/mail/mimemessage/Base64;

    invoke-direct {v0}, Lcom/htc/util/mail/mimemessage/Base64;-><init>()V

    .line 620
    .local v0, b64:Lcom/htc/util/mail/mimemessage/Base64;
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    int-to-long v2, v5

    .line 621
    .local v2, len:J
    long-to-int v5, v2

    new-array v1, v5, [B

    .line 622
    .local v1, buf:[B
    array-length v5, v1

    invoke-virtual {v0, v1, v6, v5}, Lcom/htc/util/mail/mimemessage/Base64;->setInitialBuffer([BII)V

    .line 623
    array-length v5, p0

    invoke-virtual {v0, p0, v6, v5}, Lcom/htc/util/mail/mimemessage/Base64;->decode([BII)V

    .line 624
    const/4 v5, -0x1

    invoke-virtual {v0, p0, v6, v5}, Lcom/htc/util/mail/mimemessage/Base64;->decode([BII)V

    .line 628
    iget v5, v0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    new-array v4, v5, [B

    .line 629
    .local v4, result:[B
    array-length v5, v4

    invoke-virtual {v0, v4, v6, v5}, Lcom/htc/util/mail/mimemessage/Base64;->readResults([BII)I

    goto :goto_0
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .locals 3
    .parameter "pArray"

    .prologue
    .line 747
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/htc/util/mail/mimemessage/Base64;->decodeBase64([B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method static discardNonBase64([B)[B
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 692
    array-length v5, p0

    new-array v2, v5, [B

    .line 693
    .local v2, groomedData:[B
    const/4 v0, 0x0

    .line 695
    .local v0, bytesCopied:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_1

    .line 696
    aget-byte v5, p0, v3

    invoke-static {v5}, Lcom/htc/util/mail/mimemessage/Base64;->isBase64(B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 697
    add-int/lit8 v1, v0, 0x1

    .end local v0           #bytesCopied:I
    .local v1, bytesCopied:I
    aget-byte v5, p0, v3

    aput-byte v5, v2, v0

    move v0, v1

    .line 695
    .end local v1           #bytesCopied:I
    .restart local v0       #bytesCopied:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 701
    :cond_1
    new-array v4, v0, [B

    .line 703
    .local v4, packedData:[B
    invoke-static {v2, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 705
    return-object v4
.end method

.method static discardWhitespace([B)[B
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 642
    array-length v5, p0

    new-array v2, v5, [B

    .line 643
    .local v2, groomedData:[B
    const/4 v0, 0x0

    .line 645
    .local v0, bytesCopied:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_0

    .line 646
    aget-byte v5, p0, v3

    sparse-switch v5, :sswitch_data_0

    .line 653
    add-int/lit8 v1, v0, 0x1

    .end local v0           #bytesCopied:I
    .local v1, bytesCopied:I
    aget-byte v5, p0, v3

    aput-byte v5, v2, v0

    move v0, v1

    .line 645
    .end local v1           #bytesCopied:I
    .restart local v0       #bytesCopied:I
    :sswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 657
    :cond_0
    new-array v4, v0, [B

    .line 659
    .local v4, packedData:[B
    invoke-static {v2, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 661
    return-object v4

    .line 646
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static encodeBase64([B)[B
    .locals 1
    .parameter "binaryData"

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/util/mail/mimemessage/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .locals 13
    .parameter "binaryData"
    .parameter "isChunked"

    .prologue
    const-wide/16 v11, 0x4c

    const-wide/16 v8, 0x4

    const/4 v10, 0x0

    .line 565
    if-eqz p0, :cond_0

    array-length v6, p0

    if-nez v6, :cond_2

    :cond_0
    move-object v1, p0

    .line 605
    :cond_1
    :goto_0
    return-object v1

    .line 568
    :cond_2
    if-eqz p1, :cond_5

    new-instance v0, Lcom/htc/util/mail/mimemessage/Base64;

    invoke-direct {v0}, Lcom/htc/util/mail/mimemessage/Base64;-><init>()V

    .line 570
    .local v0, b64:Lcom/htc/util/mail/mimemessage/Base64;
    :goto_1
    array-length v6, p0

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x3

    int-to-long v2, v6

    .line 571
    .local v2, len:J
    rem-long v4, v2, v8

    .line 572
    .local v4, mod:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    .line 573
    sub-long v6, v8, v4

    add-long/2addr v2, v6

    .line 588
    :cond_3
    if-eqz p1, :cond_4

    .line 589
    add-long v6, v2, v11

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    div-long/2addr v6, v11

    sget-object v8, Lcom/htc/util/mail/mimemessage/Base64;->CHUNK_SEPARATOR:[B

    array-length v8, v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 592
    :cond_4
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v2, v6

    if-lez v6, :cond_6

    .line 593
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Input array too big, output array would be bigger than Integer.MAX_VALUE=2147483647"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 568
    .end local v0           #b64:Lcom/htc/util/mail/mimemessage/Base64;
    .end local v2           #len:J
    .end local v4           #mod:J
    :cond_5
    new-instance v0, Lcom/htc/util/mail/mimemessage/Base64;

    invoke-direct {v0, v10}, Lcom/htc/util/mail/mimemessage/Base64;-><init>(I)V

    goto :goto_1

    .line 596
    .restart local v0       #b64:Lcom/htc/util/mail/mimemessage/Base64;
    .restart local v2       #len:J
    .restart local v4       #mod:J
    :cond_6
    long-to-int v6, v2

    new-array v1, v6, [B

    .line 597
    .local v1, buf:[B
    array-length v6, v1

    invoke-virtual {v0, v1, v10, v6}, Lcom/htc/util/mail/mimemessage/Base64;->setInitialBuffer([BII)V

    .line 598
    array-length v6, p0

    invoke-virtual {v0, p0, v10, v6}, Lcom/htc/util/mail/mimemessage/Base64;->encode([BII)V

    .line 599
    const/4 v6, -0x1

    invoke-virtual {v0, p0, v10, v6}, Lcom/htc/util/mail/mimemessage/Base64;->encode([BII)V

    .line 602
    iget-object v6, v0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    if-eq v6, v1, :cond_1

    .line 603
    array-length v6, v1

    invoke-virtual {v0, v1, v10, v6}, Lcom/htc/util/mail/mimemessage/Base64;->readResults([BII)I

    goto :goto_0
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1
    .parameter "binaryData"

    .prologue
    .line 522
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/util/mail/mimemessage/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .locals 2
    .parameter "bigInt"

    .prologue
    .line 759
    if-nez p0, :cond_0

    .line 760
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodeInteger called with null parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :cond_0
    invoke-static {p0}, Lcom/htc/util/mail/mimemessage/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/util/mail/mimemessage/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 2
    .parameter "arrayOctet"

    .prologue
    .line 479
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 480
    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/htc/util/mail/mimemessage/Base64;->isBase64(B)Z

    move-result v1

    if-nez v1, :cond_0

    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/htc/util/mail/mimemessage/Base64;->isWhiteSpace(B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 481
    const/4 v1, 0x0

    .line 484
    :goto_1
    return v1

    .line 479
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isBase64(B)Z
    .locals 2
    .parameter "octet"

    .prologue
    .line 466
    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    if-ltz p0, :cond_1

    sget-object v0, Lcom/htc/util/mail/mimemessage/Base64;->base64ToInt:[B

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Lcom/htc/util/mail/mimemessage/Base64;->base64ToInt:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWhiteSpace(B)Z
    .locals 1
    .parameter "byteToCheck"

    .prologue
    .line 672
    sparse-switch p0, :sswitch_data_0

    .line 679
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 677
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 672
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private resizeBuf()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 259
    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    if-nez v1, :cond_0

    .line 260
    const/16 v1, 0x2000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    .line 261
    iput v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    .line 262
    iput v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->readPos:I

    .line 268
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 265
    .local v0, b:[B
    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget-object v2, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iput-object v0, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    goto :goto_0
.end method

.method static toIntegerBytes(Ljava/math/BigInteger;)[B
    .locals 8
    .parameter "bigInt"

    .prologue
    .line 774
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 776
    .local v1, bitlen:I
    add-int/lit8 v6, v1, 0x7

    shr-int/lit8 v6, v6, 0x3

    shl-int/lit8 v1, v6, 0x3

    .line 777
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 779
    .local v0, bigBytes:[B
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v7, v1, 0x8

    if-ne v6, v7, :cond_0

    .line 799
    .end local v0           #bigBytes:[B
    :goto_0
    return-object v0

    .line 785
    .restart local v0       #bigBytes:[B
    :cond_0
    const/4 v5, 0x0

    .line 786
    .local v5, startSrc:I
    array-length v2, v0

    .line 789
    .local v2, len:I
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_1

    .line 790
    const/4 v5, 0x1

    .line 791
    add-int/lit8 v2, v2, -0x1

    .line 794
    :cond_1
    div-int/lit8 v6, v1, 0x8

    sub-int v4, v6, v2

    .line 795
    .local v4, startDst:I
    div-int/lit8 v6, v1, 0x8

    new-array v3, v6, [B

    .line 797
    .local v3, resizedBytes:[B
    invoke-static {v0, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    .line 799
    goto :goto_0
.end method


# virtual methods
.method avail()I
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    iget v1, p0, Lcom/htc/util/mail/mimemessage/Base64;->readPos:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "pObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 536
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    .line 537
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "Parameter supplied to Base64 decode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_0
    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/htc/util/mail/mimemessage/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method decode([BII)V
    .locals 8
    .parameter "in"
    .parameter "inPos"
    .parameter "inAvail"

    .prologue
    const/4 v7, 0x1

    .line 415
    iget-boolean v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->eof:Z

    if-eqz v4, :cond_0

    .line 456
    :goto_0
    return-void

    .line 418
    :cond_0
    if-gez p3, :cond_1

    .line 419
    iput-boolean v7, p0, Lcom/htc/util/mail/mimemessage/Base64;->eof:Z

    .line 421
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    move v2, p2

    .end local p2
    .local v2, inPos:I
    :goto_1
    if-ge v1, p3, :cond_6

    .line 422
    iget-object v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    array-length v4, v4

    iget v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->decodeSize:I

    if-ge v4, v5, :cond_3

    .line 423
    :cond_2
    invoke-direct {p0}, Lcom/htc/util/mail/mimemessage/Base64;->resizeBuf()V

    .line 425
    :cond_3
    add-int/lit8 p2, v2, 0x1

    .end local v2           #inPos:I
    .restart local p2
    aget-byte v0, p1, v2

    .line 426
    .local v0, b:B
    const/16 v4, 0x3d

    if-ne v0, v4, :cond_4

    .line 427
    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    .line 428
    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->modulus:I

    packed-switch v4, :pswitch_data_0

    .line 439
    :goto_2
    iput-boolean v7, p0, Lcom/htc/util/mail/mimemessage/Base64;->eof:Z

    goto :goto_0

    .line 430
    :pswitch_0
    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    .line 431
    iget-object v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    iget v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_2

    .line 434
    :pswitch_1
    iget-object v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    iget v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 435
    iget-object v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    iget v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_2

    .line 442
    :cond_4
    if-ltz v0, :cond_5

    sget-object v4, Lcom/htc/util/mail/mimemessage/Base64;->base64ToInt:[B

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 443
    sget-object v4, Lcom/htc/util/mail/mimemessage/Base64;->base64ToInt:[B

    aget-byte v3, v4, v0

    .line 444
    .local v3, result:I
    if-ltz v3, :cond_5

    .line 445
    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->modulus:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->modulus:I

    rem-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->modulus:I

    .line 446
    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v3

    iput v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    .line 447
    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->modulus:I

    if-nez v4, :cond_5

    .line 448
    iget-object v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    iget v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 449
    iget-object v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    iget v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 450
    iget-object v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    iget v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 421
    .end local v3           #result:I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2
    .restart local v2       #inPos:I
    goto/16 :goto_1

    .end local v0           #b:B
    :cond_6
    move p2, v2

    .line 456
    .end local v2           #inPos:I
    .restart local p2
    goto/16 :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public decode([B)[B
    .locals 1
    .parameter "pArray"

    .prologue
    .line 550
    invoke-static {p1}, Lcom/htc/util/mail/mimemessage/Base64;->decodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "pObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 721
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    .line 722
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Base64 encode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_0
    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/htc/util/mail/mimemessage/Base64;->encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method encode([BII)V
    .locals 9
    .parameter "in"
    .parameter "inPos"
    .parameter "inAvail"

    .prologue
    const/16 v8, 0x3d

    const/4 v7, 0x0

    .line 338
    iget-boolean v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->eof:Z

    if-eqz v3, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    if-gez p3, :cond_4

    .line 345
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->eof:Z

    .line 346
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    array-length v3, v3

    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->encodeSize:I

    if-ge v3, v4, :cond_3

    .line 347
    :cond_2
    invoke-direct {p0}, Lcom/htc/util/mail/mimemessage/Base64;->resizeBuf()V

    .line 349
    :cond_3
    iget v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->modulus:I

    packed-switch v3, :pswitch_data_0

    .line 364
    :goto_1
    iget v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->lineLength:I

    if-lez v3, :cond_0

    .line 365
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->lineSeparator:[B

    iget-object v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    iget-object v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    iget v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    iget-object v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    goto :goto_0

    .line 351
    :pswitch_0
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    sget-object v5, Lcom/htc/util/mail/mimemessage/Base64;->intToBase64:[B

    iget v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 352
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    sget-object v5, Lcom/htc/util/mail/mimemessage/Base64;->intToBase64:[B

    iget v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 353
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    aput-byte v8, v3, v4

    .line 354
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    aput-byte v8, v3, v4

    goto :goto_1

    .line 358
    :pswitch_1
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    sget-object v5, Lcom/htc/util/mail/mimemessage/Base64;->intToBase64:[B

    iget v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    shr-int/lit8 v6, v6, 0xa

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 359
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    sget-object v5, Lcom/htc/util/mail/mimemessage/Base64;->intToBase64:[B

    iget v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 360
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    sget-object v5, Lcom/htc/util/mail/mimemessage/Base64;->intToBase64:[B

    iget v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    shl-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 361
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    aput-byte v8, v3, v4

    goto/16 :goto_1

    .line 369
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    move v2, p2

    .end local p2
    .local v2, inPos:I
    :goto_2
    if-ge v1, p3, :cond_9

    .line 370
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    array-length v3, v3

    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->encodeSize:I

    if-ge v3, v4, :cond_6

    .line 371
    :cond_5
    invoke-direct {p0}, Lcom/htc/util/mail/mimemessage/Base64;->resizeBuf()V

    .line 373
    :cond_6
    iget v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->modulus:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->modulus:I

    rem-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->modulus:I

    .line 374
    add-int/lit8 p2, v2, 0x1

    .end local v2           #inPos:I
    .restart local p2
    aget-byte v0, p1, v2

    .line 375
    .local v0, b:I
    if-gez v0, :cond_7

    add-int/lit16 v0, v0, 0x100

    .line 376
    :cond_7
    iget v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v0

    iput v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    .line 377
    iget v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->modulus:I

    if-nez v3, :cond_8

    .line 378
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    sget-object v5, Lcom/htc/util/mail/mimemessage/Base64;->intToBase64:[B

    iget v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 379
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    sget-object v5, Lcom/htc/util/mail/mimemessage/Base64;->intToBase64:[B

    iget v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 380
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    sget-object v5, Lcom/htc/util/mail/mimemessage/Base64;->intToBase64:[B

    iget v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 381
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    sget-object v5, Lcom/htc/util/mail/mimemessage/Base64;->intToBase64:[B

    iget v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->x:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 382
    iget v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->currentLinePos:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->currentLinePos:I

    .line 383
    iget v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->lineLength:I

    if-lez v3, :cond_8

    iget v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->lineLength:I

    iget v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->currentLinePos:I

    if-gt v3, v4, :cond_8

    .line 384
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->lineSeparator:[B

    iget-object v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget v5, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    iget-object v6, p0, Lcom/htc/util/mail/mimemessage/Base64;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    iget v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    iget-object v4, p0, Lcom/htc/util/mail/mimemessage/Base64;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    .line 386
    iput v7, p0, Lcom/htc/util/mail/mimemessage/Base64;->currentLinePos:I

    .line 369
    :cond_8
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2
    .restart local v2       #inPos:I
    goto/16 :goto_2

    .end local v0           #b:I
    :cond_9
    move p2, v2

    .end local v2           #inPos:I
    .restart local p2
    goto/16 :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public encode([B)[B
    .locals 1
    .parameter "pArray"

    .prologue
    .line 735
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/htc/util/mail/mimemessage/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method hasData()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method readResults([BII)I
    .locals 4
    .parameter "b"
    .parameter "bPos"
    .parameter "bAvail"

    .prologue
    const/4 v3, 0x0

    .line 283
    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    if-eqz v1, :cond_2

    .line 284
    invoke-virtual {p0}, Lcom/htc/util/mail/mimemessage/Base64;->avail()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 285
    .local v0, len:I
    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    if-eq v1, p1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    iget v2, p0, Lcom/htc/util/mail/mimemessage/Base64;->readPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    iget v1, p0, Lcom/htc/util/mail/mimemessage/Base64;->readPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/htc/util/mail/mimemessage/Base64;->readPos:I

    .line 288
    iget v1, p0, Lcom/htc/util/mail/mimemessage/Base64;->readPos:I

    iget v2, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    if-lt v1, v2, :cond_0

    .line 289
    iput-object v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    .line 298
    .end local v0           #len:I
    :cond_0
    :goto_0
    return v0

    .line 294
    .restart local v0       #len:I
    :cond_1
    iput-object v3, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    goto :goto_0

    .line 298
    .end local v0           #len:I
    :cond_2
    iget-boolean v1, p0, Lcom/htc/util/mail/mimemessage/Base64;->eof:Z

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method setInitialBuffer([BII)V
    .locals 1
    .parameter "out"
    .parameter "outPos"
    .parameter "outAvail"

    .prologue
    .line 314
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, p3, :cond_0

    .line 315
    iput-object p1, p0, Lcom/htc/util/mail/mimemessage/Base64;->buf:[B

    .line 316
    iput p2, p0, Lcom/htc/util/mail/mimemessage/Base64;->pos:I

    .line 317
    iput p2, p0, Lcom/htc/util/mail/mimemessage/Base64;->readPos:I

    .line 319
    :cond_0
    return-void
.end method
