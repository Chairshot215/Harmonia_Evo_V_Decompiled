.class public Lcom/htc/android/mail/ModifyBase64;
.super Ljava/lang/Object;
.source "ModifyBase64.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;


# static fields
.field static final BASELENGTH:I = 0xff

.field static final CHUNK_SEPARATOR:[B = null

.field static final CHUNK_SIZE:I = 0x4c

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field static final EIGHTBIT:I = 0x8

.field static final FOURBYTE:I = 0x4

.field static final LOOKUPLENGTH:I = 0x40

.field static final PAD:B = 0x3dt

.field static final SIGN:I = -0x80

.field static final SIXTEENBIT:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ModifyBase64"

.field static final TWENTYFOURBITGROUP:I = 0x18

.field private static base64Alphabet:[B

.field private static lookUpBase64Alphabet:[B


# instance fields
.field public size:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xff

    const/16 v7, 0x3f

    const/16 v6, 0x3e

    const/16 v5, 0x2f

    const/16 v4, 0x2b

    .line 39
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v2, Lcom/htc/android/mail/ModifyBase64;->DEBUG:Z

    .line 55
    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sput-object v2, Lcom/htc/android/mail/ModifyBase64;->CHUNK_SEPARATOR:[B

    .line 99
    new-array v2, v8, [B

    sput-object v2, Lcom/htc/android/mail/ModifyBase64;->base64Alphabet:[B

    .line 100
    const/16 v2, 0x40

    new-array v2, v2, [B

    sput-object v2, Lcom/htc/android/mail/ModifyBase64;->lookUpBase64Alphabet:[B

    .line 105
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 106
    sget-object v2, Lcom/htc/android/mail/ModifyBase64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    .line 109
    sget-object v2, Lcom/htc/android/mail/ModifyBase64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 108
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 111
    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    .line 112
    sget-object v2, Lcom/htc/android/mail/ModifyBase64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 111
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 114
    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    .line 115
    sget-object v2, Lcom/htc/android/mail/ModifyBase64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 114
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 118
    :cond_3
    sget-object v2, Lcom/htc/android/mail/ModifyBase64;->base64Alphabet:[B

    aput-byte v6, v2, v4

    .line 119
    sget-object v2, Lcom/htc/android/mail/ModifyBase64;->base64Alphabet:[B

    aput-byte v7, v2, v5

    .line 121
    const/4 v0, 0x0

    :goto_4
    const/16 v2, 0x19

    if-gt v0, v2, :cond_4

    .line 122
    sget-object v2, Lcom/htc/android/mail/ModifyBase64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v0, 0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 125
    :cond_4
    const/16 v0, 0x1a

    const/4 v1, 0x0

    .local v1, j:I
    :goto_5
    const/16 v2, 0x33

    if-gt v0, v2, :cond_5

    .line 126
    sget-object v2, Lcom/htc/android/mail/ModifyBase64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v1, 0x61

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 129
    :cond_5
    const/16 v0, 0x34

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x3d

    if-gt v0, v2, :cond_6

    .line 130
    sget-object v2, Lcom/htc/android/mail/ModifyBase64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v1, 0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 133
    :cond_6
    sget-object v2, Lcom/htc/android/mail/ModifyBase64;->lookUpBase64Alphabet:[B

    aput-byte v4, v2, v6

    .line 134
    sget-object v2, Lcom/htc/android/mail/ModifyBase64;->lookUpBase64Alphabet:[B

    aput-byte v5, v2, v7

    .line 135
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/ModifyBase64;->size:I

    return-void
.end method

.method public static decodeBase64([B[I)[B
    .locals 16
    .parameter "base64Data"
    .parameter "nResult"

    .prologue
    .line 443
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/ModifyBase64;->discardNonBase64([B)I

    move-result v9

    .line 444
    .local v9, len:I
    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, p1, v13

    .line 447
    if-nez v9, :cond_1

    .line 448
    const/4 v13, 0x0

    new-array v5, v13, [B

    .line 523
    :cond_0
    :goto_0
    return-object v5

    .line 450
    :cond_1
    div-int/lit8 v12, v9, 0x4

    .line 451
    .local v12, numberQuadruple:I
    const/4 v5, 0x0

    .line 452
    .local v5, decodedData:[B
    const/4 v0, 0x0

    .local v0, b1:B
    const/4 v1, 0x0

    .local v1, b2:B
    const/4 v2, 0x0

    .local v2, b3:B
    const/4 v3, 0x0

    .local v3, b4:B
    const/4 v10, 0x0

    .local v10, marker0:B
    const/4 v11, 0x0

    .line 456
    .local v11, marker1:B
    const/4 v6, 0x0

    .line 457
    .local v6, encodedIndex:I
    const/4 v4, 0x0

    .line 460
    .local v4, dataIndex:I
    move v8, v9

    .line 462
    .local v8, lastData:I
    :cond_2
    add-int/lit8 v13, v8, -0x1

    aget-byte v13, p0, v13

    const/16 v14, 0x3d

    if-ne v13, v14, :cond_3

    .line 463
    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_2

    .line 464
    const/4 v13, 0x0

    new-array v5, v13, [B

    goto :goto_0

    .line 468
    :cond_3
    const/4 v13, 0x0

    sub-int v14, v8, v12

    aput v14, p1, v13

    .line 469
    move-object/from16 v5, p0

    .line 472
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v12, :cond_0

    .line 473
    mul-int/lit8 v4, v7, 0x4

    .line 474
    add-int/lit8 v13, v4, 0x2

    aget-byte v10, p0, v13

    .line 475
    add-int/lit8 v13, v4, 0x3

    aget-byte v11, p0, v13

    .line 477
    sget-object v13, Lcom/htc/android/mail/ModifyBase64;->base64Alphabet:[B

    aget-byte v14, p0, v4

    aget-byte v0, v13, v14

    .line 478
    sget-object v13, Lcom/htc/android/mail/ModifyBase64;->base64Alphabet:[B

    add-int/lit8 v14, v4, 0x1

    aget-byte v14, p0, v14

    aget-byte v1, v13, v14

    .line 480
    const/16 v13, 0x3d

    if-eq v10, v13, :cond_5

    const/16 v13, 0x3d

    if-eq v11, v13, :cond_5

    .line 482
    sget-object v13, Lcom/htc/android/mail/ModifyBase64;->base64Alphabet:[B

    aget-byte v2, v13, v10

    .line 483
    sget-object v13, Lcom/htc/android/mail/ModifyBase64;->base64Alphabet:[B

    aget-byte v3, v13, v11

    .line 485
    shl-int/lit8 v13, v0, 0x2

    shr-int/lit8 v14, v1, 0x4

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v6

    .line 486
    add-int/lit8 v13, v6, 0x1

    and-int/lit8 v14, v1, 0xf

    shl-int/lit8 v14, v14, 0x4

    shr-int/lit8 v15, v2, 0x2

    and-int/lit8 v15, v15, 0xf

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v5, v13

    .line 488
    add-int/lit8 v13, v6, 0x2

    shl-int/lit8 v14, v2, 0x6

    or-int/2addr v14, v3

    int-to-byte v14, v14

    aput-byte v14, v5, v13

    .line 500
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x3

    .line 472
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 489
    :cond_5
    const/16 v13, 0x3d

    if-ne v10, v13, :cond_6

    .line 491
    shl-int/lit8 v13, v0, 0x2

    shr-int/lit8 v14, v1, 0x4

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v6

    goto :goto_2

    .line 492
    :cond_6
    const/16 v13, 0x3d

    if-ne v11, v13, :cond_4

    .line 494
    sget-object v13, Lcom/htc/android/mail/ModifyBase64;->base64Alphabet:[B

    aget-byte v2, v13, v10

    .line 496
    shl-int/lit8 v13, v0, 0x2

    shr-int/lit8 v14, v1, 0x4

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v6

    .line 497
    add-int/lit8 v13, v6, 0x1

    and-int/lit8 v14, v1, 0xf

    shl-int/lit8 v14, v14, 0x4

    shr-int/lit8 v15, v2, 0x2

    and-int/lit8 v15, v15, 0xf

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v5, v13

    goto :goto_2
.end method

.method static decodeBase64_old([B)[B
    .locals 16
    .parameter "base64Data"

    .prologue
    .line 377
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/ModifyBase64;->discardNonBase64([B)I

    move-result v9

    .line 380
    .local v9, len:I
    if-nez v9, :cond_1

    .line 381
    const/4 v13, 0x0

    new-array v5, v13, [B

    .line 433
    :cond_0
    :goto_0
    return-object v5

    .line 383
    :cond_1
    div-int/lit8 v12, v9, 0x4

    .line 384
    .local v12, numberQuadruple:I
    const/4 v5, 0x0

    .line 385
    .local v5, decodedData:[B
    const/4 v0, 0x0

    .local v0, b1:B
    const/4 v1, 0x0

    .local v1, b2:B
    const/4 v2, 0x0

    .local v2, b3:B
    const/4 v3, 0x0

    .local v3, b4:B
    const/4 v10, 0x0

    .local v10, marker0:B
    const/4 v11, 0x0

    .line 389
    .local v11, marker1:B
    const/4 v6, 0x0

    .line 390
    .local v6, encodedIndex:I
    const/4 v4, 0x0

    .line 393
    .local v4, dataIndex:I
    move v8, v9

    .line 395
    .local v8, lastData:I
    :cond_2
    add-int/lit8 v13, v8, -0x1

    aget-byte v13, p0, v13

    const/16 v14, 0x3d

    if-ne v13, v14, :cond_3

    .line 396
    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_2

    .line 397
    const/4 v13, 0x0

    new-array v5, v13, [B

    goto :goto_0

    .line 400
    :cond_3
    sub-int v13, v8, v12

    new-array v5, v13, [B

    .line 403
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v12, :cond_0

    .line 404
    mul-int/lit8 v4, v7, 0x4

    .line 405
    add-int/lit8 v13, v4, 0x2

    aget-byte v10, p0, v13

    .line 406
    add-int/lit8 v13, v4, 0x3

    aget-byte v11, p0, v13

    .line 408
    sget-object v13, Lcom/htc/android/mail/ModifyBase64;->base64Alphabet:[B

    aget-byte v14, p0, v4

    aget-byte v0, v13, v14

    .line 409
    sget-object v13, Lcom/htc/android/mail/ModifyBase64;->base64Alphabet:[B

    add-int/lit8 v14, v4, 0x1

    aget-byte v14, p0, v14

    aget-byte v1, v13, v14

    .line 411
    const/16 v13, 0x3d

    if-eq v10, v13, :cond_5

    const/16 v13, 0x3d

    if-eq v11, v13, :cond_5

    .line 413
    sget-object v13, Lcom/htc/android/mail/ModifyBase64;->base64Alphabet:[B

    aget-byte v2, v13, v10

    .line 414
    sget-object v13, Lcom/htc/android/mail/ModifyBase64;->base64Alphabet:[B

    aget-byte v3, v13, v11

    .line 416
    shl-int/lit8 v13, v0, 0x2

    shr-int/lit8 v14, v1, 0x4

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v6

    .line 417
    add-int/lit8 v13, v6, 0x1

    and-int/lit8 v14, v1, 0xf

    shl-int/lit8 v14, v14, 0x4

    shr-int/lit8 v15, v2, 0x2

    and-int/lit8 v15, v15, 0xf

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v5, v13

    .line 419
    add-int/lit8 v13, v6, 0x2

    shl-int/lit8 v14, v2, 0x6

    or-int/2addr v14, v3

    int-to-byte v14, v14

    aput-byte v14, v5, v13

    .line 431
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x3

    .line 403
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 420
    :cond_5
    const/16 v13, 0x3d

    if-ne v10, v13, :cond_6

    .line 422
    shl-int/lit8 v13, v0, 0x2

    shr-int/lit8 v14, v1, 0x4

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v6

    goto :goto_2

    .line 423
    :cond_6
    const/16 v13, 0x3d

    if-ne v11, v13, :cond_4

    .line 425
    sget-object v13, Lcom/htc/android/mail/ModifyBase64;->base64Alphabet:[B

    aget-byte v2, v13, v10

    .line 427
    shl-int/lit8 v13, v0, 0x2

    shr-int/lit8 v14, v1, 0x4

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v6

    .line 428
    add-int/lit8 v13, v6, 0x1

    and-int/lit8 v14, v1, 0xf

    shl-int/lit8 v14, v14, 0x4

    shr-int/lit8 v15, v2, 0x2

    and-int/lit8 v15, v15, 0xf

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v5, v13

    goto :goto_2
.end method

.method static discardNonBase64([B)I
    .locals 6
    .parameter "data"

    .prologue
    .line 566
    const/4 v0, 0x0

    .line 572
    .local v0, bytesCopied:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 573
    aget-byte v3, p0, v2

    invoke-static {v3}, Lcom/htc/android/mail/ModifyBase64;->isBase64(B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 574
    add-int/lit8 v1, v0, 0x1

    .end local v0           #bytesCopied:I
    .local v1, bytesCopied:I
    aget-byte v3, p0, v2

    aput-byte v3, p0, v0

    move v0, v1

    .line 572
    .end local v1           #bytesCopied:I
    .restart local v0       #bytesCopied:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 577
    :cond_1
    move v2, v0

    :goto_1
    if-lt v2, v0, :cond_2

    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 578
    const/4 v3, 0x0

    aput-byte v3, p0, v2

    .line 577
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 601
    :cond_2
    sget-boolean v3, Lcom/htc/android/mail/ModifyBase64;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "ModifyBase64"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end discard!:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_3
    return v0
.end method

.method static discardWhitespace([B)[B
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 534
    array-length v5, p0

    new-array v2, v5, [B

    .line 535
    .local v2, groomedData:[B
    const/4 v0, 0x0

    .line 537
    .local v0, bytesCopied:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_0

    .line 538
    aget-byte v5, p0, v3

    sparse-switch v5, :sswitch_data_0

    .line 545
    add-int/lit8 v1, v0, 0x1

    .end local v0           #bytesCopied:I
    .local v1, bytesCopied:I
    aget-byte v5, p0, v3

    aput-byte v5, v2, v0

    move v0, v1

    .line 537
    .end local v1           #bytesCopied:I
    .restart local v0       #bytesCopied:I
    :sswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 549
    :cond_0
    new-array v4, v0, [B

    .line 551
    .local v4, packedData:[B
    invoke-static {v2, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    return-object v4

    .line 538
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
    .line 181
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/android/mail/ModifyBase64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .locals 27
    .parameter "binaryData"
    .parameter "isChunked"

    .prologue
    .line 236
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v23, v0

    mul-int/lit8 v16, v23, 0x8

    .line 237
    .local v16, lengthDataBits:I
    rem-int/lit8 v12, v16, 0x18

    .line 238
    .local v12, fewerThan24bits:I
    div-int/lit8 v19, v16, 0x18

    .line 239
    .local v19, numberTriplets:I
    const/4 v9, 0x0

    .line 240
    .local v9, encodedData:[B
    const/4 v10, 0x0

    .line 241
    .local v10, encodedDataLength:I
    const/16 v17, 0x0

    .line 243
    .local v17, nbrChunks:I
    if-eqz v12, :cond_2

    .line 245
    add-int/lit8 v23, v19, 0x1

    mul-int/lit8 v10, v23, 0x4

    .line 254
    :goto_0
    if-eqz p1, :cond_0

    .line 256
    sget-object v23, Lcom/htc/android/mail/ModifyBase64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_3

    const/16 v17, 0x0

    .line 258
    :goto_1
    sget-object v23, Lcom/htc/android/mail/ModifyBase64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    mul-int v23, v23, v17

    add-int v10, v10, v23

    .line 261
    :cond_0
    new-array v9, v10, [B

    .line 263
    const/4 v14, 0x0

    .local v14, k:B
    const/4 v15, 0x0

    .local v15, l:B
    const/4 v4, 0x0

    .local v4, b1:B
    const/4 v5, 0x0

    .local v5, b2:B
    const/4 v6, 0x0

    .line 265
    .local v6, b3:B
    const/4 v11, 0x0

    .line 266
    .local v11, encodedIndex:I
    const/4 v8, 0x0

    .line 267
    .local v8, dataIndex:I
    const/4 v13, 0x0

    .line 268
    .local v13, i:I
    const/16 v18, 0x4c

    .line 269
    .local v18, nextSeparatorIndex:I
    const/4 v7, 0x0

    .line 272
    .local v7, chunksSoFar:I
    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v13, v0, :cond_7

    .line 273
    mul-int/lit8 v8, v13, 0x3

    .line 274
    aget-byte v4, p0, v8

    .line 275
    add-int/lit8 v23, v8, 0x1

    aget-byte v5, p0, v23

    .line 276
    add-int/lit8 v23, v8, 0x2

    aget-byte v6, p0, v23

    .line 280
    and-int/lit8 v23, v5, 0xf

    move/from16 v0, v23

    int-to-byte v15, v0

    .line 281
    and-int/lit8 v23, v4, 0x3

    move/from16 v0, v23

    int-to-byte v14, v0

    .line 283
    and-int/lit8 v23, v4, -0x80

    if-nez v23, :cond_4

    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 285
    .local v20, val1:B
    :goto_3
    and-int/lit8 v23, v5, -0x80

    if-nez v23, :cond_5

    shr-int/lit8 v23, v5, 0x4

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v21, v0

    .line 287
    .local v21, val2:B
    :goto_4
    and-int/lit8 v23, v6, -0x80

    if-nez v23, :cond_6

    shr-int/lit8 v23, v6, 0x6

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v22, v0

    .line 290
    .local v22, val3:B
    :goto_5
    sget-object v23, Lcom/htc/android/mail/ModifyBase64;->lookUpBase64Alphabet:[B

    aget-byte v23, v23, v20

    aput-byte v23, v9, v11

    .line 294
    add-int/lit8 v23, v11, 0x1

    sget-object v24, Lcom/htc/android/mail/ModifyBase64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v25, v14, 0x4

    or-int v25, v25, v21

    aget-byte v24, v24, v25

    aput-byte v24, v9, v23

    .line 296
    add-int/lit8 v23, v11, 0x2

    sget-object v24, Lcom/htc/android/mail/ModifyBase64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v25, v15, 0x2

    or-int v25, v25, v22

    aget-byte v24, v24, v25

    aput-byte v24, v9, v23

    .line 298
    add-int/lit8 v23, v11, 0x3

    sget-object v24, Lcom/htc/android/mail/ModifyBase64;->lookUpBase64Alphabet:[B

    and-int/lit8 v25, v6, 0x3f

    aget-byte v24, v24, v25

    aput-byte v24, v9, v23

    .line 300
    add-int/lit8 v11, v11, 0x4

    .line 303
    if-eqz p1, :cond_1

    .line 305
    move/from16 v0, v18

    if-ne v11, v0, :cond_1

    .line 306
    sget-object v23, Lcom/htc/android/mail/ModifyBase64;->CHUNK_SEPARATOR:[B

    const/16 v24, 0x0

    sget-object v25, Lcom/htc/android/mail/ModifyBase64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v9, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    add-int/lit8 v7, v7, 0x1

    .line 313
    add-int/lit8 v23, v7, 0x1

    mul-int/lit8 v23, v23, 0x4c

    sget-object v24, Lcom/htc/android/mail/ModifyBase64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    mul-int v24, v24, v7

    add-int v18, v23, v24

    .line 316
    sget-object v23, Lcom/htc/android/mail/ModifyBase64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int v11, v11, v23

    .line 272
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 248
    .end local v4           #b1:B
    .end local v5           #b2:B
    .end local v6           #b3:B
    .end local v7           #chunksSoFar:I
    .end local v8           #dataIndex:I
    .end local v11           #encodedIndex:I
    .end local v13           #i:I
    .end local v14           #k:B
    .end local v15           #l:B
    .end local v18           #nextSeparatorIndex:I
    .end local v20           #val1:B
    .end local v21           #val2:B
    .end local v22           #val3:B
    :cond_2
    mul-int/lit8 v10, v19, 0x4

    goto/16 :goto_0

    .line 256
    :cond_3
    int-to-float v0, v10

    move/from16 v23, v0

    const/high16 v24, 0x4298

    div-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v17, v0

    goto/16 :goto_1

    .line 283
    .restart local v4       #b1:B
    .restart local v5       #b2:B
    .restart local v6       #b3:B
    .restart local v7       #chunksSoFar:I
    .restart local v8       #dataIndex:I
    .restart local v11       #encodedIndex:I
    .restart local v13       #i:I
    .restart local v14       #k:B
    .restart local v15       #l:B
    .restart local v18       #nextSeparatorIndex:I
    :cond_4
    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    goto/16 :goto_3

    .line 285
    .restart local v20       #val1:B
    :cond_5
    shr-int/lit8 v23, v5, 0x4

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v21, v0

    goto/16 :goto_4

    .line 287
    .restart local v21       #val2:B
    :cond_6
    shr-int/lit8 v23, v6, 0x6

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xfc

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v22, v0

    goto/16 :goto_5

    .line 322
    .end local v20           #val1:B
    .end local v21           #val2:B
    :cond_7
    mul-int/lit8 v8, v13, 0x3

    .line 324
    const/16 v23, 0x8

    move/from16 v0, v23

    if-ne v12, v0, :cond_b

    .line 325
    aget-byte v4, p0, v8

    .line 326
    and-int/lit8 v23, v4, 0x3

    move/from16 v0, v23

    int-to-byte v14, v0

    .line 329
    and-int/lit8 v23, v4, -0x80

    if-nez v23, :cond_a

    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 331
    .restart local v20       #val1:B
    :goto_6
    sget-object v23, Lcom/htc/android/mail/ModifyBase64;->lookUpBase64Alphabet:[B

    aget-byte v23, v23, v20

    aput-byte v23, v9, v11

    .line 332
    add-int/lit8 v23, v11, 0x1

    sget-object v24, Lcom/htc/android/mail/ModifyBase64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v25, v14, 0x4

    aget-byte v24, v24, v25

    aput-byte v24, v9, v23

    .line 333
    add-int/lit8 v23, v11, 0x2

    const/16 v24, 0x3d

    aput-byte v24, v9, v23

    .line 334
    add-int/lit8 v23, v11, 0x3

    const/16 v24, 0x3d

    aput-byte v24, v9, v23

    .line 354
    .end local v20           #val1:B
    :cond_8
    :goto_7
    if-eqz p1, :cond_9

    .line 356
    move/from16 v0, v17

    if-ge v7, v0, :cond_9

    .line 357
    sget-object v23, Lcom/htc/android/mail/ModifyBase64;->CHUNK_SEPARATOR:[B

    const/16 v24, 0x0

    sget-object v25, Lcom/htc/android/mail/ModifyBase64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    sub-int v25, v10, v25

    sget-object v26, Lcom/htc/android/mail/ModifyBase64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    :cond_9
    return-object v9

    .line 329
    :cond_a
    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    goto :goto_6

    .line 335
    :cond_b
    const/16 v23, 0x10

    move/from16 v0, v23

    if-ne v12, v0, :cond_8

    .line 337
    aget-byte v4, p0, v8

    .line 338
    add-int/lit8 v23, v8, 0x1

    aget-byte v5, p0, v23

    .line 339
    and-int/lit8 v23, v5, 0xf

    move/from16 v0, v23

    int-to-byte v15, v0

    .line 340
    and-int/lit8 v23, v4, 0x3

    move/from16 v0, v23

    int-to-byte v14, v0

    .line 342
    and-int/lit8 v23, v4, -0x80

    if-nez v23, :cond_c

    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 344
    .restart local v20       #val1:B
    :goto_8
    and-int/lit8 v23, v5, -0x80

    if-nez v23, :cond_d

    shr-int/lit8 v23, v5, 0x4

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v21, v0

    .line 347
    .restart local v21       #val2:B
    :goto_9
    sget-object v23, Lcom/htc/android/mail/ModifyBase64;->lookUpBase64Alphabet:[B

    aget-byte v23, v23, v20

    aput-byte v23, v9, v11

    .line 348
    add-int/lit8 v23, v11, 0x1

    sget-object v24, Lcom/htc/android/mail/ModifyBase64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v25, v14, 0x4

    or-int v25, v25, v21

    aget-byte v24, v24, v25

    aput-byte v24, v9, v23

    .line 350
    add-int/lit8 v23, v11, 0x2

    sget-object v24, Lcom/htc/android/mail/ModifyBase64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v25, v15, 0x2

    aget-byte v24, v24, v25

    aput-byte v24, v9, v23

    .line 351
    add-int/lit8 v23, v11, 0x3

    const/16 v24, 0x3d

    aput-byte v24, v9, v23

    goto/16 :goto_7

    .line 342
    .end local v20           #val1:B
    .end local v21           #val2:B
    :cond_c
    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    goto :goto_8

    .line 344
    .restart local v20       #val1:B
    :cond_d
    shr-int/lit8 v23, v5, 0x4

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v21, v0

    goto :goto_9
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1
    .parameter "binaryData"

    .prologue
    .line 192
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/android/mail/ModifyBase64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 4
    .parameter "arrayOctect"

    .prologue
    const/4 v2, 0x1

    .line 157
    invoke-static {p0}, Lcom/htc/android/mail/ModifyBase64;->discardWhitespace([B)[B

    move-result-object p0

    .line 159
    array-length v1, p0

    .line 160
    .local v1, length:I
    if-nez v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v2

    .line 165
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 166
    aget-byte v3, p0, v0

    invoke-static {v3}, Lcom/htc/android/mail/ModifyBase64;->isBase64(B)Z

    move-result v3

    if-nez v3, :cond_2

    .line 167
    const/4 v2, 0x0

    goto :goto_0

    .line 165
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static isBase64(B)Z
    .locals 3
    .parameter "octect"

    .prologue
    const/4 v0, 0x1

    .line 138
    const/16 v1, 0x3d

    if-ne p0, v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    sget-object v1, Lcom/htc/android/mail/ModifyBase64;->base64Alphabet:[B

    aget-byte v1, v1, p0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 141
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "pObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 209
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "Parameter supplied to Base64 decode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ModifyBase64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .locals 1
    .parameter "pArray"

    .prologue
    .line 223
    invoke-static {p1}, Lcom/htc/android/mail/ModifyBase64;->decodeBase64_old([B)[B

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
    .line 638
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    .line 639
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Base64 encode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_0
    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ModifyBase64;->encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode([B)[B
    .locals 1
    .parameter "pArray"

    .prologue
    .line 653
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/htc/android/mail/ModifyBase64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method
