.class public final Lcom/google/android/finsky/ads/Crypto;
.super Ljava/lang/Object;
.source "Crypto.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 4
    .parameter "arr"

    .prologue
    .line 33
    const/16 v3, 0x10

    new-array v0, v3, [C

    fill-array-data v0, :array_0

    .line 36
    .local v0, hexChars:[C
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 37
    .local v2, str:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 38
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 33
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public static calculateCrc([BII)V
    .locals 8
    .parameter "arr"
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    const v7, 0xfff1

    .line 58
    const v0, 0xfff1

    .line 63
    .local v0, MOD_ADLER:I
    const/4 v4, 0x0

    .line 64
    .local v4, sum1:I
    const/4 v5, 0x0

    .line 65
    .local v5, sum2:I
    move v3, p1

    .line 66
    .local v3, index:I
    :goto_0
    add-int/lit8 v6, v3, 0x10

    if-gt v6, p2, :cond_1

    .line 67
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v6, 0x10

    if-ge v2, v6, :cond_0

    .line 68
    add-int v6, v3, v2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    .line 69
    add-int/2addr v5, v4

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 71
    :cond_0
    add-int/lit8 v3, v3, 0x10

    goto :goto_0

    .line 73
    .end local v2           #i:I
    :cond_1
    :goto_2
    if-ge v3, p2, :cond_2

    .line 74
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    .line 75
    add-int/2addr v5, v4

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 78
    :cond_2
    rem-int/2addr v4, v7

    .line 79
    rem-int/2addr v5, v7

    .line 80
    shl-int/lit8 v6, v5, 0x10

    or-int v1, v6, v4

    .line 83
    .local v1, crc:I
    invoke-static {v1, p0, p2}, Lcom/google/android/finsky/ads/Crypto;->loadInt(I[BI)V

    .line 84
    return-void
.end method

.method public static calculateMd5(Ljava/lang/String;)[B
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 102
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 103
    .local v0, md5:Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 105
    .local v1, md5Bytes:[B
    return-object v1
.end method

.method public static encryptMobileId(IILjava/lang/String;)[B
    .locals 17
    .parameter "appVersion"
    .parameter "timestamp"
    .parameter "mobileId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v7, 0x0

    .line 142
    .local v7, VERSION_OFFSET:I
    const/4 v6, 0x4

    .line 143
    .local v6, TIMESTAMP_OFFSET:I
    const/16 v4, 0x8

    .line 144
    .local v4, MOBILE_ID_OFFSET:I
    const/16 v3, 0x28

    .line 145
    .local v3, FAILED_CAPTCHA_OFFSET:I
    const/16 v2, 0x2c

    .line 146
    .local v2, CRC_OFFSET:I
    const/16 v5, 0x30

    .line 148
    .local v5, PAYLOAD_SIZE:I
    const/16 v1, 0x100

    .line 151
    .local v1, BLOCK_SIZE:I
    const/16 v15, 0x100

    new-array v13, v15, [B

    .line 153
    .local v13, payload:[B
    const/4 v15, 0x0

    move/from16 v0, p0

    invoke-static {v0, v13, v15}, Lcom/google/android/finsky/ads/Crypto;->loadInt(I[BI)V

    .line 155
    const/4 v15, 0x4

    move/from16 v0, p1

    invoke-static {v0, v13, v15}, Lcom/google/android/finsky/ads/Crypto;->loadInt(I[BI)V

    .line 157
    invoke-static/range {p2 .. p2}, Lcom/google/android/finsky/ads/Crypto;->calculateMd5(Ljava/lang/String;)[B

    move-result-object v11

    .line 158
    .local v11, mobileIdMd5:[B
    invoke-static {v11}, Lcom/google/android/finsky/ads/Crypto;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v12

    .line 159
    .local v12, mobileIdString:Ljava/lang/String;
    const-string v15, "UTF-8"

    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 160
    .local v10, mobileIdBytes:[B
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    array-length v15, v10

    if-ge v9, v15, :cond_0

    .line 161
    add-int/lit8 v15, v9, 0x8

    aget-byte v16, v10, v9

    aput-byte v16, v13, v15

    .line 160
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 165
    :cond_0
    const/4 v15, 0x0

    const/16 v16, 0x28

    move/from16 v0, v16

    invoke-static {v15, v13, v0}, Lcom/google/android/finsky/ads/Crypto;->loadInt(I[BI)V

    .line 167
    const/4 v15, 0x0

    const/16 v16, 0x2c

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Lcom/google/android/finsky/ads/Crypto;->calculateCrc([BII)V

    .line 170
    new-instance v14, Ljava/util/Random;

    invoke-direct {v14}, Ljava/util/Random;-><init>()V

    .line 171
    .local v14, rand:Ljava/util/Random;
    const/16 v9, 0x30

    :goto_1
    const/16 v15, 0x100

    if-ge v9, v15, :cond_1

    .line 172
    const/16 v15, 0x100

    invoke-virtual {v14, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v13, v9

    .line 171
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 176
    :cond_1
    const/16 v15, 0x100

    new-array v8, v15, [B

    .line 177
    .local v8, encryptedData:[B
    new-instance v15, Lcom/google/android/finsky/ads/Encryptor;

    invoke-direct {v15}, Lcom/google/android/finsky/ads/Encryptor;-><init>()V

    invoke-virtual {v15, v13, v8}, Lcom/google/android/finsky/ads/Encryptor;->encrypt([B[B)V

    .line 180
    return-object v8
.end method

.method private static loadInt(I[BI)V
    .locals 2
    .parameter "num"
    .parameter "payload"
    .parameter "index"

    .prologue
    .line 199
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 200
    add-int/lit8 v0, p2, 0x1

    const v1, 0xff00

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 201
    add-int/lit8 v0, p2, 0x2

    const/high16 v1, 0xff

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 202
    add-int/lit8 v0, p2, 0x3

    const/high16 v1, -0x100

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 203
    return-void
.end method
