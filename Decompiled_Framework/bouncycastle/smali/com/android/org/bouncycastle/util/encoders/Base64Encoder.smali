.class public Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final decodingTable:[B

.field protected final encodingTable:[B

.field protected padding:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    const/16 v0, 0x3d

    iput-byte v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->initialiseDecodingTable()V

    return-void

    :array_0
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
.end method

.method private decodeLastBlock(Ljava/io/OutputStream;CCCC)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    if-ne p4, v4, :cond_0

    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v0, v4, p2

    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v4, p3

    shl-int/lit8 v4, v0, 0x2

    shr-int/lit8 v5, v1, 0x4

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    iget-byte v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    if-ne p5, v4, :cond_1

    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v0, v4, p2

    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v4, p3

    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v4, p4

    shl-int/lit8 v4, v0, 0x2

    shr-int/lit8 v5, v1, 0x4

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v4, v1, 0x4

    shr-int/lit8 v5, v2, 0x2

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v0, v4, p2

    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v4, p3

    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v4, p4

    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v3, v4, p5

    shl-int/lit8 v4, v0, 0x2

    shr-int/lit8 v5, v1, 0x4

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v4, v1, 0x4

    shr-int/lit8 v5, v2, 0x2

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v4, v2, 0x6

    or-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    const/4 v4, 0x3

    goto :goto_0
.end method

.method private ignore(C)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextI(Ljava/lang/String;II)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method private nextI([BII)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_0

    aget-byte v0, p1, p2

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    :goto_0
    if-lez v12, :cond_0

    add-int/lit8 v2, v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v14, 0x0

    add-int/lit8 v13, v12, -0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v14

    move v15, v14

    :goto_1
    if-ge v15, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v14, v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v8, v2, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v9, v2, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v10, v2, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v11, v2, v3

    shl-int/lit8 v2, v8, 0x2

    shr-int/lit8 v3, v9, 0x4

    or-int/2addr v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v2, v9, 0x4

    shr-int/lit8 v3, v10, 0x2

    or-int/2addr v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v2, v10, 0x6

    or-int/2addr v2, v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v16, v16, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v14

    move v15, v14

    goto :goto_1

    :cond_1
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v2, v12, -0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v2, v12, -0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v2, v12, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v2, v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v2

    add-int v16, v16, v2

    return v16
.end method

.method public decode([BIILjava/io/OutputStream;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v16, 0x0

    add-int v12, p2, p3

    :goto_0
    move/from16 v0, p2

    if-le v12, v0, :cond_0

    add-int/lit8 v2, v12, -0x1

    aget-byte v2, p1, v2

    int-to-char v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move/from16 v14, p2

    add-int/lit8 v13, v12, -0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v14

    move v15, v14

    :goto_1
    if-ge v15, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v14, v15, 0x1

    aget-byte v3, p1, v15

    aget-byte v8, v2, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v14, 0x1

    aget-byte v3, p1, v14

    aget-byte v9, v2, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v14, 0x1

    aget-byte v3, p1, v14

    aget-byte v10, v2, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v14, 0x1

    aget-byte v3, p1, v14

    aget-byte v11, v2, v3

    shl-int/lit8 v2, v8, 0x2

    shr-int/lit8 v3, v9, 0x4

    or-int/2addr v2, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v2, v9, 0x4

    shr-int/lit8 v3, v10, 0x2

    or-int/2addr v2, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v2, v10, 0x6

    or-int/2addr v2, v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v16, v16, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v14

    move v15, v14

    goto :goto_1

    :cond_1
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v2, v12, -0x4

    aget-byte v2, p1, v2

    int-to-char v4, v2

    add-int/lit8 v2, v12, -0x3

    aget-byte v2, p1, v2

    int-to-char v5, v2

    add-int/lit8 v2, v12, -0x2

    aget-byte v2, p1, v2

    int-to-char v6, v2

    add-int/lit8 v2, v12, -0x1

    aget-byte v2, p1, v2

    int-to-char v7, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v2

    add-int v16, v16, v2

    return v16
.end method

.method public encode([BIILjava/io/OutputStream;)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    rem-int/lit8 v11, p3, 0x3

    sub-int v9, p3, v11

    move/from16 v10, p2

    :goto_0
    add-int v12, p2, v9

    if-ge v10, v12, :cond_0

    aget-byte v12, p1, v10

    and-int/lit16 v1, v12, 0xff

    add-int/lit8 v12, v10, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v2, v12, 0xff

    add-int/lit8 v12, v10, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v3, v12, 0xff

    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v13, v1, 0x2

    and-int/lit8 v13, v13, 0x3f

    aget-byte v12, v12, v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v13, v1, 0x4

    ushr-int/lit8 v14, v2, 0x4

    or-int/2addr v13, v14

    and-int/lit8 v13, v13, 0x3f

    aget-byte v12, v12, v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v13, v2, 0x2

    ushr-int/lit8 v14, v3, 0x6

    or-int/2addr v13, v14

    and-int/lit8 v13, v13, 0x3f

    aget-byte v12, v12, v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    and-int/lit8 v13, v3, 0x3f

    aget-byte v12, v12, v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v10, v10, 0x3

    goto :goto_0

    :cond_0
    packed-switch v11, :pswitch_data_0

    :goto_1
    :pswitch_0
    div-int/lit8 v12, v9, 0x3

    mul-int/lit8 v13, v12, 0x4

    if-nez v11, :cond_1

    const/4 v12, 0x0

    :goto_2
    add-int/2addr v12, v13

    return v12

    :pswitch_1
    add-int v12, p2, v9

    aget-byte v12, p1, v12

    and-int/lit16 v7, v12, 0xff

    ushr-int/lit8 v12, v7, 0x2

    and-int/lit8 v4, v12, 0x3f

    shl-int/lit8 v12, v7, 0x4

    and-int/lit8 v5, v12, 0x3f

    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v12, v12, v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v12, v12, v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    iget-byte v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    iget-byte v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :pswitch_2
    add-int v12, p2, v9

    aget-byte v12, p1, v12

    and-int/lit16 v7, v12, 0xff

    add-int v12, p2, v9

    add-int/lit8 v12, v12, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v8, v12, 0xff

    ushr-int/lit8 v12, v7, 0x2

    and-int/lit8 v4, v12, 0x3f

    shl-int/lit8 v12, v7, 0x4

    ushr-int/lit8 v13, v8, 0x4

    or-int/2addr v12, v13

    and-int/lit8 v5, v12, 0x3f

    shl-int/lit8 v12, v8, 0x2

    and-int/lit8 v6, v12, 0x3f

    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v12, v12, v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v12, v12, v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v12, v12, v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    iget-byte v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_1
    const/4 v12, 0x4

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initialiseDecodingTable()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
