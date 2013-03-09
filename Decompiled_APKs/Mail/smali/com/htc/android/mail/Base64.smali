.class public Lcom/htc/android/mail/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final BASE_64_ALPHABET:[C = null

.field private static final BASE_64_DECODE:[B = null

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final PAD:C = '='

.field private static final TAG:Ljava/lang/String; = "Base64"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/htc/android/mail/Base64;->BASE_64_ALPHABET:[C

    .line 48
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v1, Lcom/htc/android/mail/Base64;->DEBUG:Z

    .line 51
    const/16 v1, 0x7b

    new-array v1, v1, [B

    sput-object v1, Lcom/htc/android/mail/Base64;->BASE_64_DECODE:[B

    .line 53
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 54
    sget-object v1, Lcom/htc/android/mail/Base64;->BASE_64_DECODE:[B

    add-int/lit8 v2, v0, 0x41

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 55
    sget-object v1, Lcom/htc/android/mail/Base64;->BASE_64_DECODE:[B

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 59
    sget-object v1, Lcom/htc/android/mail/Base64;->BASE_64_DECODE:[B

    add-int/lit8 v2, v0, 0x30

    add-int/lit8 v3, v0, 0x34

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_1
    sget-object v1, Lcom/htc/android/mail/Base64;->BASE_64_DECODE:[B

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    .line 63
    sget-object v1, Lcom/htc/android/mail/Base64;->BASE_64_DECODE:[B

    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    .line 65
    sget-object v1, Lcom/htc/android/mail/Base64;->BASE_64_DECODE:[B

    const/16 v2, 0x3d

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final ModifiedUtf7decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "codedText"

    .prologue
    const/16 v10, 0x2d

    const/16 v9, 0x26

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 559
    const-string v0, ""

    .line 560
    .local v0, decodedStr:Ljava/lang/String;
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 561
    .local v2, shift_start_idx:I
    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 562
    .local v1, shift_end_idx:I
    :goto_0
    if-eq v2, v7, :cond_3

    if-eq v1, v7, :cond_3

    .line 564
    if-ge v2, v1, :cond_5

    .line 567
    if-eqz v2, :cond_0

    .line 569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    :cond_0
    add-int/lit8 v4, v2, 0x1

    if-ne v4, v1, :cond_1

    .line 575
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 589
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    .line 591
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 606
    :goto_2
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 607
    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    goto :goto_0

    .line 579
    :cond_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 585
    .local v3, tmpstr:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2c

    const/16 v6, 0x2f

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/mail/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 595
    .end local v3           #tmpstr:Ljava/lang/String;
    :cond_2
    const-string p0, ""

    .line 610
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 611
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    :cond_4
    return-object v0

    .line 602
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method

.method public static final ModifiedUtf7encode(Ljava/lang/String;Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 11
    .parameter "codedText"
    .parameter "byteOrder"

    .prologue
    const/16 v10, 0x2f

    const/16 v9, 0x2c

    const/16 v8, 0x7e

    const/16 v7, 0x20

    .line 626
    const-string v0, ""

    .line 628
    .local v0, encodedStr:Ljava/lang/String;
    const-string v5, "&"

    const-string v6, "&-"

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 632
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 634
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-le v5, v8, :cond_4

    .line 636
    :cond_0
    const/4 v1, 0x0

    .line 638
    .local v1, found:Z
    add-int/lit8 v3, v2, 0x1

    .local v3, j:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 640
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-gt v5, v8, :cond_3

    .line 642
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/htc/android/mail/Base64;->encode(Ljava/lang/String;Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v4

    .line 648
    .local v4, tmpstr:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    add-int/lit8 v2, v3, -0x1

    .line 652
    const/4 v1, 0x1

    .line 657
    .end local v4           #tmpstr:Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_8

    .line 660
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/htc/android/mail/Base64;->encode(Ljava/lang/String;Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v4

    .line 666
    .restart local v4       #tmpstr:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 696
    .end local v1           #found:Z
    .end local v3           #j:I
    .end local v4           #tmpstr:Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v0

    .line 638
    .restart local v1       #found:Z
    .restart local v3       #j:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 672
    .end local v1           #found:Z
    .end local v3           #j:I
    :cond_4
    const/4 v1, 0x0

    .line 674
    .restart local v1       #found:Z
    add-int/lit8 v3, v2, 0x1

    .restart local v3       #j:I
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 676
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_5

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-le v5, v8, :cond_7

    .line 678
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 681
    add-int/lit8 v2, v3, -0x1

    .line 682
    const/4 v1, 0x1

    .line 687
    :cond_6
    if-nez v1, :cond_8

    .line 690
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    goto :goto_2

    .line 674
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 632
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public static final ModifiedUtf7encodeBigEndian(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "codedText"

    .prologue
    .line 701
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, v0}, Lcom/htc/android/mail/Base64;->ModifiedUtf7encode(Ljava/lang/String;Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final ModifiedUtf7encodeLittleEndian(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "codedText"

    .prologue
    .line 706
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, v0}, Lcom/htc/android/mail/Base64;->ModifiedUtf7encode(Ljava/lang/String;Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "instr"

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v5, v6, 0x4

    .line 112
    .local v5, pad_len:I
    if-lez v5, :cond_0

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==="

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 117
    :cond_0
    const/4 v4, 0x0

    .line 118
    .local v4, outstr:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 119
    .local v0, bytes:[B
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v1

    .line 120
    .local v1, decodedBytes:[B
    array-length v3, v1

    .line 121
    .local v3, len:I
    :goto_0
    if-lez v3, :cond_1

    add-int/lit8 v6, v3, -0x1

    aget-byte v6, v1, v6

    if-nez v6, :cond_1

    .line 123
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 126
    :cond_1
    if-lez v3, :cond_2

    .line 130
    :try_start_0
    new-instance v4, Ljava/lang/String;

    .end local v4           #outstr:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "unicode"

    invoke-direct {v4, v1, v6, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .restart local v4       #outstr:Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v4

    .line 132
    .end local v4           #outstr:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 134
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    .restart local v4       #outstr:Ljava/lang/String;
    goto :goto_1
.end method

.method public static final decode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 12
    .parameter "source"
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 472
    new-array v4, v8, [B

    .line 473
    .local v4, data:[B
    sget-object v5, Lcom/htc/android/mail/Base64;->BASE_64_DECODE:[B

    .line 479
    .local v5, decode:[B
    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x4

    :try_start_0
    invoke-virtual {p0, v4, v8, v9}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 486
    .local v7, numRead:I
    if-ne v7, v10, :cond_0

    .line 488
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 544
    :goto_1
    return-void

    .line 480
    .end local v7           #numRead:I
    :catch_0
    move-exception v6

    .line 481
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 483
    throw v6

    .line 494
    .end local v6           #e:Ljava/io/IOException;
    .restart local v7       #numRead:I
    :cond_0
    aget-byte v8, v4, v11

    aget-byte v0, v5, v8

    .line 495
    .local v0, b1:B
    const/4 v8, 0x1

    aget-byte v8, v4, v8

    aget-byte v1, v5, v8

    .line 496
    .local v1, b2:B
    const/4 v8, 0x2

    aget-byte v8, v4, v8

    aget-byte v2, v5, v8

    .line 497
    .local v2, b3:B
    const/4 v8, 0x3

    aget-byte v8, v4, v8

    aget-byte v3, v5, v8

    .line 500
    .local v3, b4:B
    if-ne v2, v10, :cond_2

    .line 501
    const/4 v7, 0x2

    .line 515
    :cond_1
    :goto_2
    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 540
    :pswitch_0
    shl-int/lit8 v8, v0, 0x2

    ushr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 502
    :cond_2
    if-ne v3, v10, :cond_1

    .line 503
    const/4 v7, 0x3

    goto :goto_2

    .line 521
    :pswitch_1
    shl-int/lit8 v8, v0, 0x2

    ushr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write(I)V

    .line 522
    shl-int/lit8 v8, v1, 0x4

    ushr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write(I)V

    .line 523
    shl-int/lit8 v8, v2, 0x6

    or-int/2addr v8, v3

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 531
    :pswitch_2
    shl-int/lit8 v8, v0, 0x2

    ushr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write(I)V

    .line 532
    shl-int/lit8 v8, v1, 0x4

    ushr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final decode(Ljava/io/InputStream;)[B
    .locals 2
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 430
    .local v0, result:Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/htc/android/mail/Base64;->decode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 432
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static final decodeImapFile(Ljava/io/BufferedInputStream;Ljava/io/OutputStream;Ljava/lang/String;Lcom/htc/android/mail/Account;Ljava/lang/String;Lcom/htc/android/mail/AbsRequestController;Ljava/lang/ref/WeakReference;)Z
    .locals 29
    .parameter "source"
    .parameter "dest"
    .parameter "uid"
    .parameter "account"
    .parameter "filereference"
    .parameter "controller"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedInputStream;",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            "Lcom/htc/android/mail/Account;",
            "Ljava/lang/String;",
            "Lcom/htc/android/mail/AbsRequestController;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    .local p6, handler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/Base64;->readLine(Ljava/io/BufferedInputStream;)Lcom/htc/android/mail/ByteString;

    move-result-object v23

    .line 224
    .local v23, response:Lcom/htc/android/mail/ByteString;
    const/4 v4, 0x0

    .line 225
    .local v4, attachment_size:I
    const/16 v22, 0x0

    .line 226
    .local v22, read_count:I
    const/16 v21, 0x0

    .line 227
    .local v21, percentage:F
    const/4 v10, 0x0

    .line 228
    .local v10, current_percentage:I
    const/4 v9, 0x0

    .line 229
    .local v9, check_percentage:I
    const/16 v19, 0x0

    .line 230
    .local v19, msg:Landroid/os/Message;
    const/4 v5, 0x0

    .line 232
    .local v5, bundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/htc/android/mail/Regex;->getInstance()Lcom/htc/android/mail/Regex;

    move-result-object v26

    const/16 v27, 0x7

    invoke-virtual/range {v26 .. v27}, Lcom/htc/android/mail/Regex;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v26

    invoke-virtual/range {v23 .. v23}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 233
    .local v18, m:Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 234
    const/16 v26, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 237
    :cond_0
    const/4 v13, 0x0

    .line 238
    .local v13, decodedbytes_count:I
    const/16 v25, 0x400

    .line 239
    .local v25, retrieve_window:I
    move/from16 v0, v25

    new-array v11, v0, [B

    .line 240
    .local v11, data:[B
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 241
    .local v16, inputdata:[B
    const/16 v24, 0x0

    .line 242
    .local v24, result:Z
    const/16 v17, 0x0

    .line 243
    .local v17, isReadFinished:Z
    :cond_1
    :goto_0
    if-nez v17, :cond_d

    .line 244
    const/16 v20, 0x0

    .line 245
    .local v20, numRead:I
    const/4 v6, 0x0

    .line 246
    .local v6, bytefilled:I
    const/4 v7, 0x0

    .line 248
    .local v7, bytesread_count:I
    :goto_1
    move/from16 v0, v25

    if-ge v6, v0, :cond_3

    .line 249
    const/16 v20, 0x0

    .line 250
    :goto_2
    if-nez v20, :cond_2

    .line 251
    const/16 v26, 0x0

    const/16 v27, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    goto :goto_2

    .line 254
    :cond_2
    const/16 v26, -0x1

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 256
    const/16 v17, 0x1

    .line 288
    :cond_3
    :goto_3
    if-eqz v17, :cond_9

    .line 290
    sub-int v15, v6, v7

    .local v15, i:I
    :goto_4
    move/from16 v0, v25

    if-ge v15, v0, :cond_9

    .line 291
    const/16 v26, 0x0

    aput-byte v26, v11, v15

    .line 290
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 260
    .end local v15           #i:I
    :cond_4
    const/16 v26, 0x0

    :try_start_1
    aget-byte v26, v16, v26

    const/16 v27, 0x29

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 262
    new-instance v8, Ljava/lang/String;

    sub-int v26, v6, v7

    move/from16 v0, v26

    invoke-direct {v8, v11, v0, v7}, Ljava/lang/String;-><init>([BII)V

    .line 263
    .local v8, checkUID:Ljava/lang/String;
    const-string v26, "Base64"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "uid="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " checkUID="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Bytesread_count="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Bytefilled="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_5

    .line 265
    const/4 v7, 0x0

    .line 267
    :cond_5
    const/16 v17, 0x1

    .line 268
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/Base64;->readLine(Ljava/io/BufferedInputStream;)Lcom/htc/android/mail/ByteString;

    move-result-object v23

    .line 269
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/Base64;->readLine(Ljava/io/BufferedInputStream;)Lcom/htc/android/mail/ByteString;

    move-result-object v23

    .line 270
    invoke-virtual/range {v23 .. v23}, Lcom/htc/android/mail/ByteString;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v27, "OK"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 271
    const/16 v24, 0x1

    goto/16 :goto_3

    .line 273
    .end local v8           #checkUID:Ljava/lang/String;
    :cond_6
    const/16 v26, 0x0

    aget-byte v26, v16, v26

    const/16 v27, 0xd

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    const/16 v26, 0x0

    aget-byte v26, v16, v26

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 274
    :cond_7
    const/4 v7, 0x0

    .line 275
    goto/16 :goto_1

    .line 277
    :cond_8
    const/16 v26, 0x0

    aget-byte v26, v16, v26

    aput-byte v26, v11, v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    add-int/lit8 v6, v6, 0x1

    .line 279
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 282
    :catch_0
    move-exception v14

    .line 283
    .local v14, e:Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    .line 284
    const-string v26, "Base64"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "IOException:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v14}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    throw v14

    .line 294
    .end local v14           #e:Ljava/io/IOException;
    :cond_9
    invoke-static {v11}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v12

    .line 295
    .local v12, decodedBytes:[B
    array-length v0, v12

    move/from16 v26, v0

    if-lez v26, :cond_a

    .line 296
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write([B)V

    .line 299
    :cond_a
    if-nez v17, :cond_c

    .line 300
    array-length v0, v12

    move/from16 v26, v0

    add-int v22, v22, v26

    .line 304
    :goto_5
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v4

    move/from16 v27, v0

    div-float v26, v26, v27

    const/high16 v27, 0x42c8

    mul-float v21, v26, v27

    .line 305
    const/high16 v26, 0x4120

    div-float v26, v21, v26

    const/high16 v27, 0x4120

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v9, v0

    .line 306
    rem-int/lit8 v26, v9, 0xa

    sub-int v26, v9, v26

    invoke-static/range {v26 .. v26}, Lcom/htc/android/mail/Base64;->needBroadcastBack(I)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 307
    if-eq v10, v9, :cond_1

    .line 310
    move v10, v9

    .line 311
    new-instance v19, Landroid/os/Message;

    .end local v19           #msg:Landroid/os/Message;
    invoke-direct/range {v19 .. v19}, Landroid/os/Message;-><init>()V

    .line 312
    .restart local v19       #msg:Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    .end local v5           #bundle:Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 313
    .restart local v5       #bundle:Landroid/os/Bundle;
    const-string v26, "accountId"

    invoke-virtual/range {p3 .. p3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v27

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 314
    const-string v26, "percentage"

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 315
    const-string v26, "filereference"

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 318
    if-eqz p5, :cond_b

    if-eqz p6, :cond_b

    .line 319
    move-object/from16 v0, p5

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/AbsRequestController;->broadcastAttachmentDownloadChange(Lcom/htc/android/mail/Account;Landroid/os/Message;Ljava/lang/ref/WeakReference;)V

    .line 323
    :cond_b
    move/from16 v0, v22

    if-ne v0, v4, :cond_1

    .line 324
    new-instance v19, Landroid/os/Message;

    .end local v19           #msg:Landroid/os/Message;
    invoke-direct/range {v19 .. v19}, Landroid/os/Message;-><init>()V

    .line 325
    .restart local v19       #msg:Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    .end local v5           #bundle:Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 326
    .restart local v5       #bundle:Landroid/os/Bundle;
    const-string v26, "accountId"

    invoke-virtual/range {p3 .. p3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v27

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 327
    const-string v26, "ret"

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 328
    const-string v26, "filereference"

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 331
    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    .line 332
    move-object/from16 v0, p5

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/AbsRequestController;->broadcastAttachmentDownloadComplete(Lcom/htc/android/mail/Account;Landroid/os/Message;Ljava/lang/ref/WeakReference;)V

    goto/16 :goto_0

    .line 302
    :cond_c
    move/from16 v22, v4

    goto/16 :goto_5

    .line 344
    .end local v6           #bytefilled:I
    .end local v7           #bytesread_count:I
    .end local v12           #decodedBytes:[B
    .end local v20           #numRead:I
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->close()V

    .line 345
    return v24
.end method

.method public static final decodeToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "codedText"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 438
    .local v0, bytes:[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 441
    .local v2, in:Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-static {v2}, Lcom/htc/android/mail/Base64;->decode(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 446
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_0
    return-object v3

    .line 442
    :catch_0
    move-exception v1

    .line 443
    .local v1, e:Ljava/io/IOException;
    const-string v3, ""

    goto :goto_0
.end method

.method public static final decodepopFile(Ljava/io/BufferedInputStream;Ljava/io/OutputStream;)Z
    .locals 14
    .parameter "source"
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    const/4 v1, 0x0

    .line 367
    .local v1, bytesread_count:I
    const/4 v4, 0x0

    .line 368
    .local v4, decodedbytes_count:I
    const/16 v11, 0x400

    .line 369
    .local v11, retrieve_window:I
    new-array v2, v11, [B

    .line 370
    .local v2, data:[B
    const/4 v12, 0x1

    new-array v7, v12, [B

    .line 371
    .local v7, inputdata:[B
    const/4 v10, 0x0

    .line 372
    .local v10, result:Z
    const/4 v8, 0x0

    .line 373
    .local v8, isReadFinished:Z
    :cond_0
    :goto_0
    if-nez v8, :cond_8

    .line 374
    const/4 v9, 0x0

    .line 375
    .local v9, numRead:I
    const/4 v0, 0x0

    .line 377
    .local v0, bytefilled:I
    :cond_1
    :goto_1
    if-ge v0, v11, :cond_3

    .line 378
    const/4 v9, 0x0

    .line 379
    :goto_2
    if-nez v9, :cond_2

    .line 380
    const/4 v12, 0x0

    const/4 v13, 0x1

    :try_start_0
    invoke-virtual {p0, v7, v12, v13}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    goto :goto_2

    .line 383
    :cond_2
    const/4 v12, -0x1

    if-ne v9, v12, :cond_4

    .line 385
    const/4 v8, 0x1

    .line 407
    :cond_3
    :goto_3
    if-eqz v8, :cond_7

    .line 409
    move v6, v0

    .local v6, i:I
    :goto_4
    if-ge v6, v11, :cond_7

    .line 410
    const/4 v12, 0x0

    aput-byte v12, v2, v6

    .line 409
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 388
    .end local v6           #i:I
    :cond_4
    const/4 v12, 0x0

    :try_start_1
    aget-byte v12, v7, v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_5

    .line 389
    const/4 v10, 0x1

    .line 390
    const/4 v8, 0x1

    .line 391
    goto :goto_3

    .line 392
    :cond_5
    const/4 v12, 0x0

    aget-byte v12, v7, v12

    const/16 v13, 0xd

    if-eq v12, v13, :cond_1

    const/4 v12, 0x0

    aget-byte v12, v7, v12

    const/16 v13, 0xa

    if-eq v12, v13, :cond_1

    .line 394
    const/4 v12, 0x0

    aget-byte v12, v7, v12

    const/16 v13, 0x2e

    if-ne v12, v13, :cond_6

    .line 395
    const/4 v8, 0x1

    .line 396
    goto :goto_3

    .line 398
    :cond_6
    const/4 v12, 0x0

    aget-byte v12, v7, v12

    aput-byte v12, v2, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 402
    :catch_0
    move-exception v5

    .line 403
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 405
    throw v5

    .line 413
    .end local v5           #e:Ljava/io/IOException;
    :cond_7
    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v3

    .line 414
    .local v3, decodedBytes:[B
    array-length v12, v3

    if-lez v12, :cond_0

    .line 415
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 423
    .end local v0           #bytefilled:I
    .end local v3           #decodedBytes:[B
    .end local v9           #numRead:I
    :cond_8
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 424
    return v10
.end method

.method public static final encode(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 12
    .parameter "source"

    .prologue
    const/4 v8, 0x3

    const/4 v11, 0x0

    const/16 v10, 0x3d

    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v7, result:Ljava/lang/StringBuilder;
    new-array v4, v8, [B

    .line 144
    .local v4, data:[B
    sget-object v0, Lcom/htc/android/mail/Base64;->BASE_64_ALPHABET:[C

    .line 146
    .local v0, alphabet:[C
    const/4 v6, 0x0

    .line 150
    .local v6, numRead:I
    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x3

    :try_start_0
    invoke-virtual {p0, v4, v8, v9}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 159
    aget-byte v1, v4, v11

    .line 160
    .local v1, b1:B
    const/4 v8, 0x1

    aget-byte v2, v4, v8

    .line 161
    .local v2, b2:B
    const/4 v8, 0x2

    aget-byte v3, v4, v8

    .line 171
    .local v3, b3:B
    packed-switch v6, :pswitch_data_0

    .line 211
    :goto_0
    if-gtz v6, :cond_0

    .line 213
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v1           #b1:B
    .end local v2           #b2:B
    .end local v3           #b3:B
    :goto_1
    return-object v8

    .line 151
    :catch_0
    move-exception v5

    .line 152
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 179
    .end local v5           #e:Ljava/io/IOException;
    .restart local v1       #b1:B
    .restart local v2       #b2:B
    .restart local v3       #b3:B
    :pswitch_0
    ushr-int/lit8 v8, v1, 0x2

    aget-char v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    and-int/lit8 v8, v1, 0x3

    shl-int/lit8 v8, v8, 0x4

    ushr-int/lit8 v9, v2, 0x4

    or-int/2addr v8, v9

    aget-char v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    and-int/lit8 v8, v2, 0xf

    shl-int/lit8 v8, v8, 0x2

    ushr-int/lit8 v9, v3, 0x6

    or-int/2addr v8, v9

    aget-char v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    and-int/lit8 v8, v3, 0x3f

    aget-char v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 192
    :pswitch_1
    ushr-int/lit8 v8, v1, 0x2

    aget-char v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    and-int/lit8 v8, v1, 0x3

    shl-int/lit8 v8, v8, 0x4

    ushr-int/lit8 v9, v2, 0x4

    or-int/2addr v8, v9

    aget-char v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    and-int/lit8 v8, v2, 0xf

    shl-int/lit8 v8, v8, 0x2

    aget-char v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 205
    :pswitch_2
    ushr-int/lit8 v8, v1, 0x2

    aget-char v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    and-int/lit8 v8, v1, 0x3

    shl-int/lit8 v8, v8, 0x4

    aget-char v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final encode(Ljava/lang/String;Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 8
    .parameter "instr"
    .parameter "byteOrder"

    .prologue
    .line 72
    const/4 v5, 0x0

    .line 76
    .local v5, outstr:Ljava/lang/String;
    :try_start_0
    const-string v6, "unicode"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 77
    .local v0, bytes1:[B
    array-length v6, v0

    add-int/lit8 v6, v6, -0x2

    new-array v1, v6, [B

    .line 78
    .local v1, bytes2:[B
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    .line 79
    .local v4, natvieOrder:Ljava/nio/ByteOrder;
    invoke-virtual {p1}, Ljava/nio/ByteOrder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/nio/ByteOrder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 81
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v1

    div-int/lit8 v6, v6, 0x2

    if-ge v3, v6, :cond_1

    .line 83
    mul-int/lit8 v6, v3, 0x2

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x3

    aget-byte v7, v0, v7

    aput-byte v7, v1, v6

    .line 84
    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, v0, v7

    aput-byte v7, v1, v6

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    .end local v3           #i:I
    :cond_0
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    array-length v6, v1

    if-ge v3, v6, :cond_1

    .line 91
    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v0, v6

    aput-byte v6, v1, v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 95
    .end local v0           #bytes1:[B
    .end local v1           #bytes2:[B
    .end local v3           #i:I
    .end local v4           #natvieOrder:Ljava/nio/ByteOrder;
    :catch_0
    move-exception v2

    .line 97
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 100
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #bytes2:[B
    :cond_1
    new-instance v5, Ljava/lang/String;

    .end local v5           #outstr:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 102
    .restart local v5       #outstr:Ljava/lang/String;
    return-object v5
.end method

.method public static needBroadcastBack(I)Z
    .locals 7
    .parameter "percent"

    .prologue
    .line 350
    const/16 v6, 0xa

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 351
    .local v5, p_table:[I
    const/4 v1, 0x0

    .line 353
    .local v1, bNeed:Z
    move-object v0, v5

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v2, v0, v3

    .line 354
    .local v2, i:I
    if-ne v2, p0, :cond_1

    .line 355
    const/4 v1, 0x1

    .line 360
    .end local v2           #i:I
    :cond_0
    return v1

    .line 353
    .restart local v2       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 350
    :array_0
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static readLine(Ljava/io/BufferedInputStream;)Lcom/htc/android/mail/ByteString;
    .locals 5
    .parameter "mIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 450
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 452
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    sget-boolean v2, Lcom/htc/android/mail/Base64;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Base64"

    const-string v3, "enter readLine"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .local v0, d:I
    if-eq v0, v4, :cond_2

    .line 454
    int-to-char v2, v0

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 455
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 457
    :cond_1
    int-to-char v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 458
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 464
    :cond_2
    if-ne v0, v4, :cond_4

    .line 465
    const/4 v2, 0x0

    .line 467
    :goto_1
    return-object v2

    .line 461
    :cond_3
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 467
    :cond_4
    new-instance v2, Lcom/htc/android/mail/ByteString;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/android/mail/ByteString;-><init>([B)V

    goto :goto_1
.end method
