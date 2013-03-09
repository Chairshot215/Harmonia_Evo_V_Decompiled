.class public Lcom/amazon/thirdparty/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/thirdparty/Base64$OutputStream;,
        Lcom/amazon/thirdparty/Base64$InputStream;
    }
.end annotation


# static fields
.field private static final ALPHABET:[B = null

.field private static final DECODABET:[B = null

.field public static final DECODE:I = 0x0

.field public static final DONT_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field public static final GZIP:I = 0x2

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field public static final NO_OPTIONS:I = 0x0

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final _NATIVE_ALPHABET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 94
    const/16 v2, 0x40

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    sput-object v2, Lcom/amazon/thirdparty/Base64;->_NATIVE_ALPHABET:[B

    .line 116
    :try_start_0
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 122
    .local v0, __bytes:[B
    :goto_0
    sput-object v0, Lcom/amazon/thirdparty/Base64;->ALPHABET:[B

    .line 129
    const/16 v2, 0x7f

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    sput-object v2, Lcom/amazon/thirdparty/Base64;->DECODABET:[B

    return-void

    .line 119
    .end local v0           #__bytes:[B
    :catch_0
    move-exception v1

    .line 120
    .local v1, use:Ljava/io/UnsupportedEncodingException;
    sget-object v0, Lcom/amazon/thirdparty/Base64;->_NATIVE_ALPHABET:[B

    .restart local v0       #__bytes:[B
    goto :goto_0

    .line 94
    nop

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

    .line 129
    :array_1
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0xf7t
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
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
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
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
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
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 180
    return-void
.end method

.method static synthetic access$000([BII[BI)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 59
    invoke-static {p0, p1, p2, p3, p4}, Lcom/amazon/thirdparty/Base64;->encode3to4([BII[BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()[B
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/amazon/thirdparty/Base64;->DECODABET:[B

    return-object v0
.end method

.method static synthetic access$200([BI[BI)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 59
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/thirdparty/Base64;->decode4to3([BI[BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$300([B[BI)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lcom/amazon/thirdparty/Base64;->encode3to4([B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 14
    .parameter "s"

    .prologue
    const/4 v13, 0x0

    .line 712
    :try_start_0
    const-string v11, "UTF-8"

    invoke-virtual {p0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 720
    .local v5, bytes:[B
    :goto_0
    array-length v11, v5

    invoke-static {v5, v13, v11}, Lcom/amazon/thirdparty/Base64;->decode([BII)[B

    move-result-object v5

    .line 724
    if-eqz v5, :cond_0

    array-length v11, v5

    const/4 v12, 0x4

    if-lt v11, v12, :cond_0

    .line 726
    aget-byte v11, v5, v13

    and-int/lit16 v11, v11, 0xff

    const/4 v12, 0x1

    aget-byte v12, v5, v12

    shl-int/lit8 v12, v12, 0x8

    const v13, 0xff00

    and-int/2addr v12, v13

    or-int v8, v11, v12

    .line 727
    .local v8, head:I
    const v11, 0x8b1f

    if-ne v11, v8, :cond_0

    .line 728
    const/4 v0, 0x0

    .line 729
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    const/4 v6, 0x0

    .line 730
    .local v6, gzis:Ljava/util/zip/GZIPInputStream;
    const/4 v2, 0x0

    .line 731
    .local v2, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x800

    new-array v4, v11, [B

    .line 732
    .local v4, buffer:[B
    const/4 v9, 0x0

    .line 735
    .local v9, length:I
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    .line 736
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .local v3, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    .line 737
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    :try_start_3
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d

    .line 739
    .end local v6           #gzis:Ljava/util/zip/GZIPInputStream;
    .local v7, gzis:Ljava/util/zip/GZIPInputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v7, v4}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v9

    if-ltz v9, :cond_1

    .line 740
    const/4 v11, 0x0

    invoke-virtual {v3, v4, v11, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 747
    :catch_0
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v6       #gzis:Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .line 752
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 756
    :goto_3
    :try_start_6
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 760
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 768
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #buffer:[B
    .end local v6           #gzis:Ljava/util/zip/GZIPInputStream;
    .end local v8           #head:I
    .end local v9           #length:I
    :cond_0
    :goto_5
    return-object v5

    .line 714
    .end local v5           #bytes:[B
    :catch_1
    move-exception v10

    .line 715
    .local v10, uee:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .restart local v5       #bytes:[B
    goto :goto_0

    .line 744
    .end local v10           #uee:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #buffer:[B
    .restart local v7       #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v8       #head:I
    .restart local v9       #length:I
    :cond_1
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v5

    .line 752
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 756
    :goto_6
    :try_start_a
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 760
    :goto_7
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_5

    .line 761
    :catch_2
    move-exception v11

    goto :goto_5

    .line 751
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #gzis:Ljava/util/zip/GZIPInputStream;
    :catchall_0
    move-exception v11

    .line 752
    :goto_8
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 756
    :goto_9
    :try_start_d
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 760
    :goto_a
    :try_start_e
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 762
    :goto_b
    throw v11

    .line 753
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #gzis:Ljava/util/zip/GZIPInputStream;
    :catch_3
    move-exception v11

    goto :goto_6

    .line 757
    :catch_4
    move-exception v11

    goto :goto_7

    .line 753
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #gzis:Ljava/util/zip/GZIPInputStream;
    :catch_5
    move-exception v11

    goto :goto_3

    .line 757
    :catch_6
    move-exception v11

    goto :goto_4

    .line 761
    :catch_7
    move-exception v11

    goto :goto_5

    .line 753
    :catch_8
    move-exception v12

    goto :goto_9

    .line 757
    :catch_9
    move-exception v12

    goto :goto_a

    .line 761
    :catch_a
    move-exception v12

    goto :goto_b

    .line 751
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_8

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_8

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #gzis:Ljava/util/zip/GZIPInputStream;
    :catchall_3
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v6       #gzis:Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_8

    .line 747
    :catch_b
    move-exception v11

    goto :goto_2

    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_c
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_d
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_2
.end method

.method public static decode([BII)[B
    .locals 13
    .parameter "source"
    .parameter "off"
    .parameter "len"

    .prologue
    const/4 v11, 0x0

    .line 658
    mul-int/lit8 v10, p2, 0x3

    div-int/lit8 v4, v10, 0x4

    .line 659
    .local v4, len34:I
    new-array v6, v4, [B

    .line 660
    .local v6, outBuff:[B
    const/4 v7, 0x0

    .line 662
    .local v7, outBuffPosn:I
    const/4 v10, 0x4

    new-array v0, v10, [B

    .line 663
    .local v0, b4:[B
    const/4 v1, 0x0

    .line 664
    .local v1, b4Posn:I
    const/4 v3, 0x0

    .line 665
    .local v3, i:I
    const/4 v8, 0x0

    .line 666
    .local v8, sbiCrop:B
    const/4 v9, 0x0

    .line 667
    .local v9, sbiDecode:B
    move v3, p1

    move v2, v1

    .end local v1           #b4Posn:I
    .local v2, b4Posn:I
    :goto_0
    add-int v10, p1, p2

    if-ge v3, v10, :cond_3

    .line 668
    aget-byte v10, p0, v3

    and-int/lit8 v10, v10, 0x7f

    int-to-byte v8, v10

    .line 669
    sget-object v10, Lcom/amazon/thirdparty/Base64;->DECODABET:[B

    aget-byte v9, v10, v8

    .line 671
    const/4 v10, -0x5

    if-lt v9, v10, :cond_0

    .line 674
    const/4 v10, -0x1

    if-lt v9, v10, :cond_1

    .line 675
    add-int/lit8 v1, v2, 0x1

    .end local v2           #b4Posn:I
    .restart local v1       #b4Posn:I
    aput-byte v8, v0, v2

    .line 676
    const/4 v10, 0x3

    if-le v1, v10, :cond_2

    .line 677
    invoke-static {v0, v11, v6, v7}, Lcom/amazon/thirdparty/Base64;->decode4to3([BI[BI)I

    move-result v10

    add-int/2addr v7, v10

    .line 678
    const/4 v1, 0x0

    .line 681
    const/16 v10, 0x3d

    if-ne v8, v10, :cond_2

    .line 695
    :goto_1
    new-array v5, v7, [B

    .line 696
    .local v5, out:[B
    invoke-static {v6, v11, v5, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 697
    .end local v5           #out:[B
    :goto_2
    return-object v5

    .line 689
    .end local v1           #b4Posn:I
    .restart local v2       #b4Posn:I
    :cond_0
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad Base64 input character at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-byte v12, p0, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "(decimal)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 691
    const/4 v5, 0x0

    move v1, v2

    .end local v2           #b4Posn:I
    .restart local v1       #b4Posn:I
    goto :goto_2

    .end local v1           #b4Posn:I
    .restart local v2       #b4Posn:I
    :cond_1
    move v1, v2

    .line 667
    .end local v2           #b4Posn:I
    .restart local v1       #b4Posn:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #b4Posn:I
    .restart local v2       #b4Posn:I
    goto :goto_0

    :cond_3
    move v1, v2

    .end local v2           #b4Posn:I
    .restart local v1       #b4Posn:I
    goto :goto_1
.end method

.method private static decode4to3([BI[BI)I
    .locals 6
    .parameter "source"
    .parameter "srcOffset"
    .parameter "destination"
    .parameter "destOffset"

    .prologue
    const/16 v3, 0x3d

    .line 581
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    if-ne v2, v3, :cond_0

    .line 586
    sget-object v2, Lcom/amazon/thirdparty/Base64;->DECODABET:[B

    aget-byte v3, p0, p1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    sget-object v3, Lcom/amazon/thirdparty/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int v1, v2, v3

    .line 589
    .local v1, outBuff:I
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 590
    const/4 v2, 0x1

    .line 638
    .end local v1           #outBuff:I
    :goto_0
    return v2

    .line 594
    :cond_0
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    if-ne v2, v3, :cond_1

    .line 600
    sget-object v2, Lcom/amazon/thirdparty/Base64;->DECODABET:[B

    aget-byte v3, p0, p1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    sget-object v3, Lcom/amazon/thirdparty/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    sget-object v3, Lcom/amazon/thirdparty/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    or-int v1, v2, v3

    .line 604
    .restart local v1       #outBuff:I
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 605
    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 606
    const/4 v2, 0x2

    goto :goto_0

    .line 619
    .end local v1           #outBuff:I
    :cond_1
    :try_start_0
    sget-object v2, Lcom/amazon/thirdparty/Base64;->DECODABET:[B

    aget-byte v3, p0, p1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    sget-object v3, Lcom/amazon/thirdparty/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    sget-object v3, Lcom/amazon/thirdparty/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    sget-object v3, Lcom/amazon/thirdparty/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 624
    .restart local v1       #outBuff:I
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 625
    add-int/lit8 v2, p3, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 626
    add-int/lit8 v2, p3, 0x2

    int-to-byte v3, v1

    aput-byte v3, p2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    const/4 v2, 0x3

    goto :goto_0

    .line 629
    .end local v1           #outBuff:I
    :catch_0
    move-exception v0

    .line 630
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p0, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/amazon/thirdparty/Base64;->DECODABET:[B

    aget-byte v5, p0, p1

    aget-byte v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 632
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/amazon/thirdparty/Base64;->DECODABET:[B

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p0, v5

    aget-byte v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 634
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/amazon/thirdparty/Base64;->DECODABET:[B

    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    aget-byte v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 636
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/amazon/thirdparty/Base64;->DECODABET:[B

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, p0, v5

    aget-byte v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 638
    const/4 v2, -0x1

    goto/16 :goto_0
.end method

.method public static decodeFromFile(Ljava/lang/String;)[B
    .locals 12
    .parameter "filename"

    .prologue
    .line 893
    const/4 v3, 0x0

    .line 894
    .local v3, decodedData:[B
    const/4 v0, 0x0

    .line 897
    .local v0, bis:Lcom/amazon/thirdparty/Base64$InputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 898
    .local v5, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 899
    .local v2, buffer:[B
    const/4 v6, 0x0

    .line 900
    .local v6, length:I
    const/4 v7, 0x0

    .line 903
    .local v7, numBytes:I
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 904
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File is too big for this convenience method ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes)."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 907
    const/4 v8, 0x0

    .line 929
    :try_start_1
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 934
    .end local v2           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:I
    .end local v7           #numBytes:I
    :goto_0
    return-object v8

    .line 909
    .restart local v2       #buffer:[B
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v7       #numBytes:I
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v2, v8, [B

    .line 912
    new-instance v1, Lcom/amazon/thirdparty/Base64$InputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Lcom/amazon/thirdparty/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 916
    .end local v0           #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    .local v1, bis:Lcom/amazon/thirdparty/Base64$InputStream;
    :goto_1
    const/16 v8, 0x1000

    :try_start_3
    invoke-virtual {v1, v2, v6, v8}, Lcom/amazon/thirdparty/Base64$InputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_1

    .line 917
    add-int/2addr v6, v7

    goto :goto_1

    .line 920
    :cond_1
    new-array v3, v6, [B

    .line 921
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v8, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 929
    :try_start_4
    invoke-virtual {v1}, Lcom/amazon/thirdparty/Base64$InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v1

    .end local v1           #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    .end local v2           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:I
    .end local v7           #numBytes:I
    .restart local v0       #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    :goto_2
    move-object v8, v3

    .line 934
    goto :goto_0

    .line 930
    .end local v0           #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    .restart local v1       #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    .restart local v2       #buffer:[B
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v7       #numBytes:I
    :catch_0
    move-exception v8

    move-object v0, v1

    .line 932
    .end local v1           #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    .restart local v0       #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    goto :goto_2

    .line 924
    .end local v2           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:I
    .end local v7           #numBytes:I
    :catch_1
    move-exception v4

    .line 925
    .local v4, e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error decoding from file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 929
    :try_start_6
    invoke-virtual {v0}, Lcom/amazon/thirdparty/Base64$InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 930
    :catch_2
    move-exception v8

    goto :goto_2

    .line 928
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 929
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Lcom/amazon/thirdparty/Base64$InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 931
    :goto_5
    throw v8

    .line 930
    .restart local v2       #buffer:[B
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v7       #numBytes:I
    :catch_3
    move-exception v9

    goto :goto_0

    .end local v2           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:I
    .end local v7           #numBytes:I
    :catch_4
    move-exception v9

    goto :goto_5

    .line 928
    .end local v0           #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    .restart local v1       #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    .restart local v2       #buffer:[B
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v7       #numBytes:I
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1           #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    .restart local v0       #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    goto :goto_4

    .line 924
    .end local v0           #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    .restart local v1       #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    :catch_5
    move-exception v4

    move-object v0, v1

    .end local v1           #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    .restart local v0       #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    goto :goto_3
.end method

.method public static decodeToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "dataToDecode"
    .parameter "filename"

    .prologue
    .line 862
    const/4 v3, 0x0

    .line 863
    .local v3, success:Z
    const/4 v0, 0x0

    .line 865
    .local v0, bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    :try_start_0
    new-instance v1, Lcom/amazon/thirdparty/Base64$OutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/amazon/thirdparty/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 867
    .end local v0           #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    .local v1, bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    :try_start_1
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazon/thirdparty/Base64$OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 868
    const/4 v3, 0x1

    .line 875
    :try_start_2
    invoke-virtual {v1}, Lcom/amazon/thirdparty/Base64$OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 880
    .end local v1           #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v0       #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    :goto_0
    return v3

    .line 876
    .end local v0           #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v1       #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 878
    .end local v1           #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v0       #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    goto :goto_0

    .line 870
    :catch_1
    move-exception v2

    .line 871
    .local v2, e:Ljava/io/IOException;
    :goto_1
    const/4 v3, 0x0

    .line 875
    :try_start_3
    invoke-virtual {v0}, Lcom/amazon/thirdparty/Base64$OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 876
    :catch_2
    move-exception v4

    goto :goto_0

    .line 874
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 875
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lcom/amazon/thirdparty/Base64$OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 877
    :goto_3
    throw v4

    .line 876
    :catch_3
    move-exception v5

    goto :goto_3

    .line 874
    .end local v0           #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v1       #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v0       #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    goto :goto_2

    .line 870
    .end local v0           #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v1       #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v0       #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    goto :goto_1
.end method

.method public static decodeToObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .parameter "encodedObject"

    .prologue
    .line 782
    invoke-static {p0}, Lcom/amazon/thirdparty/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    .line 784
    .local v4, objBytes:[B
    const/4 v0, 0x0

    .line 785
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x0

    .line 786
    .local v5, ois:Ljava/io/ObjectInputStream;
    const/4 v3, 0x0

    .line 789
    .local v3, obj:Ljava/lang/Object;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 790
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_a

    .line 792
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .local v6, ois:Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_b

    move-result-object v3

    .line 804
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 808
    :goto_0
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v5, v6

    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .line 813
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #obj:Ljava/lang/Object;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    :goto_1
    return-object v3

    .line 809
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #obj:Ljava/lang/Object;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v7

    move-object v5, v6

    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .line 811
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_1

    .line 794
    :catch_1
    move-exception v2

    .line 795
    .local v2, e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 796
    const/4 v3, 0x0

    .line 804
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 808
    :goto_3
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 809
    :catch_2
    move-exception v7

    goto :goto_1

    .line 798
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 799
    .local v2, e:Ljava/lang/ClassNotFoundException;
    :goto_4
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 800
    const/4 v3, 0x0

    .line 804
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 808
    :goto_5
    :try_start_a
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_1

    .line 809
    :catch_4
    move-exception v7

    goto :goto_1

    .line 803
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v7

    .line 804
    :goto_6
    :try_start_b
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 808
    :goto_7
    :try_start_c
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 810
    :goto_8
    throw v7

    .line 805
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v7

    goto :goto_0

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v7

    goto :goto_3

    .local v2, e:Ljava/lang/ClassNotFoundException;
    :catch_7
    move-exception v7

    goto :goto_5

    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_8
    move-exception v8

    goto :goto_7

    .line 809
    :catch_9
    move-exception v8

    goto :goto_8

    .line 803
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .line 798
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    :catch_a
    move-exception v2

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    :catch_b
    move-exception v2

    move-object v5, v6

    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 794
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    :catch_c
    move-exception v2

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    :catch_d
    move-exception v2

    move-object v5, v6

    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_2
.end method

.method private static encode3to4([BII[BI)[B
    .locals 5
    .parameter "source"
    .parameter "srcOffset"
    .parameter "numSigBytes"
    .parameter "destination"
    .parameter "destOffset"

    .prologue
    const/16 v4, 0x3d

    const/4 v1, 0x0

    .line 245
    if-lez p2, :cond_1

    aget-byte v2, p0, p1

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x8

    move v3, v2

    :goto_0
    const/4 v2, 0x1

    if-le p2, v2, :cond_2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x10

    :goto_1
    or-int/2addr v2, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_0

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    :cond_0
    or-int v0, v2, v1

    .line 249
    .local v0, inBuff:I
    packed-switch p2, :pswitch_data_0

    .line 272
    :goto_2
    return-object p3

    .end local v0           #inBuff:I
    :cond_1
    move v3, v1

    .line 245
    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    .line 251
    .restart local v0       #inBuff:I
    :pswitch_0
    sget-object v1, Lcom/amazon/thirdparty/Base64;->ALPHABET:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 252
    add-int/lit8 v1, p4, 0x1

    sget-object v2, Lcom/amazon/thirdparty/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 253
    add-int/lit8 v1, p4, 0x2

    sget-object v2, Lcom/amazon/thirdparty/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 254
    add-int/lit8 v1, p4, 0x3

    sget-object v2, Lcom/amazon/thirdparty/Base64;->ALPHABET:[B

    and-int/lit8 v3, v0, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    goto :goto_2

    .line 258
    :pswitch_1
    sget-object v1, Lcom/amazon/thirdparty/Base64;->ALPHABET:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 259
    add-int/lit8 v1, p4, 0x1

    sget-object v2, Lcom/amazon/thirdparty/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 260
    add-int/lit8 v1, p4, 0x2

    sget-object v2, Lcom/amazon/thirdparty/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 261
    add-int/lit8 v1, p4, 0x3

    aput-byte v4, p3, v1

    goto :goto_2

    .line 265
    :pswitch_2
    sget-object v1, Lcom/amazon/thirdparty/Base64;->ALPHABET:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 266
    add-int/lit8 v1, p4, 0x1

    sget-object v2, Lcom/amazon/thirdparty/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 267
    add-int/lit8 v1, p4, 0x2

    aput-byte v4, p3, v1

    .line 268
    add-int/lit8 v1, p4, 0x3

    aput-byte v4, p3, v1

    goto :goto_2

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static encode3to4([B[BI)[B
    .locals 1
    .parameter "b4"
    .parameter "threeBytes"
    .parameter "numSigBytes"

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-static {p1, v0, p2, p0, v0}, Lcom/amazon/thirdparty/Base64;->encode3to4([BII[BI)[B

    .line 204
    return-object p0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 386
    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Lcom/amazon/thirdparty/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BI)Ljava/lang/String;
    .locals 2
    .parameter "source"
    .parameter "options"

    .prologue
    .line 415
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/amazon/thirdparty/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .locals 1
    .parameter "source"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 430
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/amazon/thirdparty/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .locals 23
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "options"

    .prologue
    .line 465
    and-int/lit8 v10, p3, 0x8

    .line 466
    .local v10, dontBreakLines:I
    and-int/lit8 v12, p3, 0x2

    .line 469
    .local v12, gzip:I
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v12, v0, :cond_0

    .line 470
    const/4 v6, 0x0

    .line 471
    .local v6, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v13, 0x0

    .line 472
    .local v13, gzos:Ljava/util/zip/GZIPOutputStream;
    const/4 v4, 0x0

    .line 476
    .local v4, b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    :try_start_0
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .local v7, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v5, Lcom/amazon/thirdparty/Base64$OutputStream;

    or-int/lit8 v20, v10, 0x1

    move/from16 v0, v20

    invoke-direct {v5, v7, v0}, Lcom/amazon/thirdparty/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c

    .line 478
    .end local v4           #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    .local v5, b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    :try_start_2
    new-instance v14, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v14, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d

    .line 480
    .end local v13           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local v14, gzos:Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v14, v0, v1, v2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 481
    invoke-virtual {v14}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e

    .line 489
    :try_start_4
    invoke-virtual {v14}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 493
    :goto_0
    :try_start_5
    invoke-virtual {v5}, Lcom/amazon/thirdparty/Base64$OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 497
    :goto_1
    :try_start_6
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 504
    :goto_2
    :try_start_7
    new-instance v20, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v21

    const-string v22, "UTF-8"

    invoke-direct/range {v20 .. v22}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_2

    .line 546
    .end local v5           #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    .end local v7           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v14           #gzos:Ljava/util/zip/GZIPOutputStream;
    :goto_3
    return-object v20

    .line 483
    .restart local v4       #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v11

    .line 484
    .local v11, e:Ljava/io/IOException;
    :goto_4
    :try_start_8
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 485
    const/16 v20, 0x0

    .line 489
    :try_start_9
    invoke-virtual {v13}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 493
    :goto_5
    :try_start_a
    invoke-virtual {v4}, Lcom/amazon/thirdparty/Base64$OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 497
    :goto_6
    :try_start_b
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_3

    .line 498
    :catch_1
    move-exception v21

    goto :goto_3

    .line 488
    .end local v11           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v20

    .line 489
    :goto_7
    :try_start_c
    invoke-virtual {v13}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 493
    :goto_8
    :try_start_d
    invoke-virtual {v4}, Lcom/amazon/thirdparty/Base64$OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 497
    :goto_9
    :try_start_e
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 499
    :goto_a
    throw v20

    .line 506
    .end local v4           #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v13           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v5       #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v7       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_2
    move-exception v19

    .line 507
    .local v19, uue:Ljava/io/UnsupportedEncodingException;
    new-instance v20, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>([B)V

    goto :goto_3

    .line 514
    .end local v5           #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    .end local v7           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v14           #gzos:Ljava/util/zip/GZIPOutputStream;
    .end local v19           #uue:Ljava/io/UnsupportedEncodingException;
    :cond_0
    if-nez v10, :cond_2

    const/4 v8, 0x1

    .line 516
    .local v8, breakLines:Z
    :goto_b
    mul-int/lit8 v20, p2, 0x4

    div-int/lit8 v16, v20, 0x3

    .line 517
    .local v16, len43:I
    rem-int/lit8 v20, p2, 0x3

    if-lez v20, :cond_3

    const/16 v20, 0x4

    :goto_c
    add-int v21, v16, v20

    if-eqz v8, :cond_4

    div-int/lit8 v20, v16, 0x4c

    :goto_d
    add-int v20, v20, v21

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 521
    .local v18, outBuff:[B
    const/4 v9, 0x0

    .line 522
    .local v9, d:I
    const/4 v11, 0x0

    .line 523
    .local v11, e:I
    add-int/lit8 v15, p2, -0x2

    .line 524
    .local v15, len2:I
    const/16 v17, 0x0

    .line 525
    .local v17, lineLength:I
    :goto_e
    if-ge v9, v15, :cond_5

    .line 526
    add-int v20, v9, p1

    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v11}, Lcom/amazon/thirdparty/Base64;->encode3to4([BII[BI)[B

    .line 528
    add-int/lit8 v17, v17, 0x4

    .line 529
    if-eqz v8, :cond_1

    const/16 v20, 0x4c

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 530
    add-int/lit8 v20, v11, 0x4

    const/16 v21, 0xa

    aput-byte v21, v18, v20

    .line 531
    add-int/lit8 v11, v11, 0x1

    .line 532
    const/16 v17, 0x0

    .line 525
    :cond_1
    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v11, v11, 0x4

    goto :goto_e

    .line 514
    .end local v8           #breakLines:Z
    .end local v9           #d:I
    .end local v11           #e:I
    .end local v15           #len2:I
    .end local v16           #len43:I
    .end local v17           #lineLength:I
    .end local v18           #outBuff:[B
    :cond_2
    const/4 v8, 0x0

    goto :goto_b

    .line 517
    .restart local v8       #breakLines:Z
    .restart local v16       #len43:I
    :cond_3
    const/16 v20, 0x0

    goto :goto_c

    :cond_4
    const/16 v20, 0x0

    goto :goto_d

    .line 536
    .restart local v9       #d:I
    .restart local v11       #e:I
    .restart local v15       #len2:I
    .restart local v17       #lineLength:I
    .restart local v18       #outBuff:[B
    :cond_5
    move/from16 v0, p2

    if-ge v9, v0, :cond_6

    .line 537
    add-int v20, v9, p1

    sub-int v21, p2, v9

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v11}, Lcom/amazon/thirdparty/Base64;->encode3to4([BII[BI)[B

    .line 538
    add-int/lit8 v11, v11, 0x4

    .line 543
    :cond_6
    :try_start_f
    new-instance v20, Ljava/lang/String;

    const/16 v21, 0x0

    const-string v22, "UTF-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v11, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_3

    .line 545
    :catch_3
    move-exception v19

    .line 546
    .restart local v19       #uue:Ljava/io/UnsupportedEncodingException;
    new-instance v20, Ljava/lang/String;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v11}, Ljava/lang/String;-><init>([BII)V

    goto/16 :goto_3

    .line 490
    .end local v8           #breakLines:Z
    .end local v9           #d:I
    .end local v11           #e:I
    .end local v15           #len2:I
    .end local v16           #len43:I
    .end local v17           #lineLength:I
    .end local v18           #outBuff:[B
    .end local v19           #uue:Ljava/io/UnsupportedEncodingException;
    .restart local v5       #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v7       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_4
    move-exception v20

    goto/16 :goto_0

    .line 494
    :catch_5
    move-exception v20

    goto/16 :goto_1

    .line 498
    :catch_6
    move-exception v20

    goto/16 :goto_2

    .line 490
    .end local v5           #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    .end local v7           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v14           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v4       #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    .local v11, e:Ljava/io/IOException;
    .restart local v13       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_7
    move-exception v21

    goto/16 :goto_5

    .line 494
    :catch_8
    move-exception v21

    goto/16 :goto_6

    .line 490
    .end local v11           #e:Ljava/io/IOException;
    :catch_9
    move-exception v21

    goto/16 :goto_8

    .line 494
    :catch_a
    move-exception v21

    goto/16 :goto_9

    .line 498
    :catch_b
    move-exception v21

    goto/16 :goto_a

    .line 488
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v20

    move-object v6, v7

    .end local v7           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_7

    .end local v4           #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v7       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v20

    move-object v4, v5

    .end local v5           #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v4       #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    move-object v6, v7

    .end local v7           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_7

    .end local v4           #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v13           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v5       #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v7       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v20

    move-object v4, v5

    .end local v5           #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v4       #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    move-object v13, v14

    .end local v14           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v13       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_7

    .line 483
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_c
    move-exception v11

    move-object v6, v7

    .end local v7           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4

    .end local v4           #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v7       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_d
    move-exception v11

    move-object v4, v5

    .end local v5           #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v4       #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    move-object v6, v7

    .end local v7           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4

    .end local v4           #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v13           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v5       #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v7       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_e
    move-exception v11

    move-object v4, v5

    .end local v5           #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v4       #b64os:Lcom/amazon/thirdparty/Base64$OutputStream;
    move-object v13, v14

    .end local v14           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v13       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4
.end method

.method public static encodeFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "filename"

    .prologue
    .line 947
    const/4 v4, 0x0

    .line 948
    .local v4, encodedData:Ljava/lang/String;
    const/4 v0, 0x0

    .line 951
    .local v0, bis:Lcom/amazon/thirdparty/Base64$InputStream;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 952
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-double v9, v9

    const-wide v11, 0x3ff6666666666666L

    mul-double/2addr v9, v11

    double-to-int v9, v9

    new-array v2, v9, [B

    .line 953
    .local v2, buffer:[B
    const/4 v7, 0x0

    .line 954
    .local v7, length:I
    const/4 v8, 0x0

    .line 957
    .local v8, numBytes:I
    new-instance v1, Lcom/amazon/thirdparty/Base64$InputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v10, 0x1

    invoke-direct {v1, v9, v10}, Lcom/amazon/thirdparty/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 961
    .end local v0           #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    .local v1, bis:Lcom/amazon/thirdparty/Base64$InputStream;
    :goto_0
    const/16 v9, 0x1000

    :try_start_1
    invoke-virtual {v1, v2, v7, v9}, Lcom/amazon/thirdparty/Base64$InputStream;->read([BII)I

    move-result v8

    if-ltz v8, :cond_0

    .line 962
    add-int/2addr v7, v8

    goto :goto_0

    .line 965
    :cond_0
    new-instance v5, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "UTF-8"

    invoke-direct {v5, v2, v9, v7, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 974
    .end local v4           #encodedData:Ljava/lang/String;
    .local v5, encodedData:Ljava/lang/String;
    :try_start_2
    invoke-virtual {v1}, Lcom/amazon/thirdparty/Base64$InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .end local v1           #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    .restart local v0       #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    move-object v4, v5

    .line 979
    .end local v2           #buffer:[B
    .end local v5           #encodedData:Ljava/lang/String;
    .end local v6           #file:Ljava/io/File;
    .end local v7           #length:I
    .end local v8           #numBytes:I
    .restart local v4       #encodedData:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 975
    .end local v0           #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    .end local v4           #encodedData:Ljava/lang/String;
    .restart local v1       #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    .restart local v2       #buffer:[B
    .restart local v5       #encodedData:Ljava/lang/String;
    .restart local v6       #file:Ljava/io/File;
    .restart local v7       #length:I
    .restart local v8       #numBytes:I
    :catch_0
    move-exception v9

    move-object v0, v1

    .end local v1           #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    .restart local v0       #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    move-object v4, v5

    .line 977
    .end local v5           #encodedData:Ljava/lang/String;
    .restart local v4       #encodedData:Ljava/lang/String;
    goto :goto_1

    .line 969
    .end local v2           #buffer:[B
    .end local v6           #file:Ljava/io/File;
    .end local v7           #length:I
    .end local v8           #numBytes:I
    :catch_1
    move-exception v3

    .line 970
    .local v3, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error encoding from file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 974
    :try_start_4
    invoke-virtual {v0}, Lcom/amazon/thirdparty/Base64$InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 975
    :catch_2
    move-exception v9

    goto :goto_1

    .line 973
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 974
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Lcom/amazon/thirdparty/Base64$InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 976
    :goto_4
    throw v9

    .line 975
    :catch_3
    move-exception v10

    goto :goto_4

    .line 973
    .end local v0           #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    .restart local v1       #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    .restart local v2       #buffer:[B
    .restart local v6       #file:Ljava/io/File;
    .restart local v7       #length:I
    .restart local v8       #numBytes:I
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1           #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    .restart local v0       #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    goto :goto_3

    .line 969
    .end local v0           #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    .restart local v1       #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    .restart local v0       #bis:Lcom/amazon/thirdparty/Base64$InputStream;
    goto :goto_2
.end method

.method public static encodeObject(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 1
    .parameter "serializableObject"

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amazon/thirdparty/Base64;->encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;
    .locals 15
    .parameter "serializableObject"
    .parameter "options"

    .prologue
    .line 321
    const/4 v2, 0x0

    .line 322
    .local v2, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 323
    .local v0, b64os:Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 324
    .local v9, oos:Ljava/io/ObjectOutputStream;
    const/4 v7, 0x0

    .line 327
    .local v7, gzos:Ljava/util/zip/GZIPOutputStream;
    and-int/lit8 v6, p1, 0x2

    .line 328
    .local v6, gzip:I
    and-int/lit8 v4, p1, 0x8

    .line 332
    .local v4, dontBreakLines:I
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .local v3, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v1, Lcom/amazon/thirdparty/Base64$OutputStream;

    or-int/lit8 v12, v4, 0x1

    invoke-direct {v1, v3, v12}, Lcom/amazon/thirdparty/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e

    .line 336
    .end local v0           #b64os:Ljava/io/OutputStream;
    .local v1, b64os:Ljava/io/OutputStream;
    const/4 v12, 0x2

    if-ne v6, v12, :cond_0

    .line 337
    :try_start_2
    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v8, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f

    .line 338
    .end local v7           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local v8, gzos:Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    new-instance v10, Ljava/io/ObjectOutputStream;

    invoke-direct {v10, v8}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10

    .end local v9           #oos:Ljava/io/ObjectOutputStream;
    .local v10, oos:Ljava/io/ObjectOutputStream;
    move-object v7, v8

    .end local v8           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v7       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object v9, v10

    .line 343
    .end local v10           #oos:Ljava/io/ObjectOutputStream;
    .restart local v9       #oos:Ljava/io/ObjectOutputStream;
    :goto_0
    :try_start_4
    invoke-virtual {v9, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f

    .line 351
    :try_start_5
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 355
    :goto_1
    :try_start_6
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 359
    :goto_2
    :try_start_7
    invoke-virtual {v1}, Lcom/amazon/thirdparty/Base64$OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 363
    :goto_3
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 370
    :goto_4
    :try_start_9
    new-instance v12, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-direct {v12, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_2

    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .line 373
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    :goto_5
    return-object v12

    .line 341
    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :cond_0
    :try_start_a
    new-instance v10, Ljava/io/ObjectOutputStream;

    invoke-direct {v10, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f

    .end local v9           #oos:Ljava/io/ObjectOutputStream;
    .restart local v10       #oos:Ljava/io/ObjectOutputStream;
    move-object v9, v10

    .end local v10           #oos:Ljava/io/ObjectOutputStream;
    .restart local v9       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 345
    .end local v1           #b64os:Ljava/io/OutputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v5

    .line 346
    .local v5, e:Ljava/io/IOException;
    :goto_6
    :try_start_b
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 347
    const/4 v12, 0x0

    .line 351
    :try_start_c
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 355
    :goto_7
    :try_start_d
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 359
    :goto_8
    :try_start_e
    invoke-virtual {v0}, Lcom/amazon/thirdparty/Base64$OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    .line 363
    :goto_9
    :try_start_f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_5

    .line 364
    :catch_1
    move-exception v13

    goto :goto_5

    .line 350
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 351
    :goto_a
    :try_start_10
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    .line 355
    :goto_b
    :try_start_11
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    .line 359
    :goto_c
    :try_start_12
    invoke-virtual {v0}, Lcom/amazon/thirdparty/Base64$OutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    .line 363
    :goto_d
    :try_start_13
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    .line 365
    :goto_e
    throw v12

    .line 372
    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v11

    .line 373
    .local v11, uue:Ljava/io/UnsupportedEncodingException;
    new-instance v12, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 352
    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v11           #uue:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v12

    goto :goto_1

    .line 356
    :catch_4
    move-exception v12

    goto :goto_2

    .line 360
    :catch_5
    move-exception v12

    goto :goto_3

    .line 364
    :catch_6
    move-exception v12

    goto :goto_4

    .line 352
    .end local v1           #b64os:Ljava/io/OutputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #e:Ljava/io/IOException;
    :catch_7
    move-exception v13

    goto :goto_7

    .line 356
    :catch_8
    move-exception v13

    goto :goto_8

    .line 360
    :catch_9
    move-exception v13

    goto :goto_9

    .line 352
    .end local v5           #e:Ljava/io/IOException;
    :catch_a
    move-exception v13

    goto :goto_b

    .line 356
    :catch_b
    move-exception v13

    goto :goto_c

    .line 360
    :catch_c
    move-exception v13

    goto :goto_d

    .line 364
    :catch_d
    move-exception v13

    goto :goto_e

    .line 350
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v12

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_a

    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v12

    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_a

    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v12

    move-object v7, v8

    .end local v8           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v7       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_a

    .line 345
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_e
    move-exception v5

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_f
    move-exception v5

    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_10
    move-exception v5

    move-object v7, v8

    .end local v8           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v7       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_6
.end method

.method public static encodeToFile([BLjava/lang/String;)Z
    .locals 6
    .parameter "dataToEncode"
    .parameter "filename"

    .prologue
    .line 828
    const/4 v3, 0x0

    .line 829
    .local v3, success:Z
    const/4 v0, 0x0

    .line 831
    .local v0, bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    :try_start_0
    new-instance v1, Lcom/amazon/thirdparty/Base64$OutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Lcom/amazon/thirdparty/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 833
    .end local v0           #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    .local v1, bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/amazon/thirdparty/Base64$OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 834
    const/4 v3, 0x1

    .line 842
    :try_start_2
    invoke-virtual {v1}, Lcom/amazon/thirdparty/Base64$OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 847
    .end local v1           #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v0       #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    :goto_0
    return v3

    .line 843
    .end local v0           #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v1       #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 845
    .end local v1           #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v0       #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    goto :goto_0

    .line 836
    :catch_1
    move-exception v2

    .line 838
    .local v2, e:Ljava/io/IOException;
    :goto_1
    const/4 v3, 0x0

    .line 842
    :try_start_3
    invoke-virtual {v0}, Lcom/amazon/thirdparty/Base64$OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 843
    :catch_2
    move-exception v4

    goto :goto_0

    .line 841
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 842
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lcom/amazon/thirdparty/Base64$OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 844
    :goto_3
    throw v4

    .line 843
    :catch_3
    move-exception v5

    goto :goto_3

    .line 841
    .end local v0           #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v1       #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v0       #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    goto :goto_2

    .line 836
    .end local v0           #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v1       #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    .restart local v0       #bos:Lcom/amazon/thirdparty/Base64$OutputStream;
    goto :goto_1
.end method
