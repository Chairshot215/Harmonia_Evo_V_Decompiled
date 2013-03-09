.class public Lcom/htc/android/mail/pim/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final decodingTable:[B

.field private static final encodingTable:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 6
    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/htc/android/mail/pim/util/Base64;->encodingTable:[B

    .line 93
    new-array v1, v3, [B

    sput-object v1, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    .line 95
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 96
    sget-object v1, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 100
    sget-object v1, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :cond_1
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    .line 104
    sget-object v1, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 107
    :cond_2
    const/16 v0, 0x30

    :goto_3
    const/16 v1, 0x39

    if-gt v0, v1, :cond_3

    .line 108
    sget-object v1, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 111
    :cond_3
    sget-object v1, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    .line 112
    sget-object v1, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    .line 113
    return-void

    .line 6
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
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "data"
    .parameter "charset"

    .prologue
    .line 242
    if-nez p1, :cond_0

    .line 244
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/htc/android/mail/pim/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 252
    :goto_0
    return-object v1

    .line 248
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/htc/android/mail/pim/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 252
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/htc/android/mail/pim/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static decode([BLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "data"
    .parameter "charset"

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 264
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/htc/android/mail/pim/util/Base64;->decode([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 272
    :goto_0
    return-object v1

    .line 268
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/htc/android/mail/pim/util/Base64;->decode([B)[B

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 272
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/htc/android/mail/pim/util/Base64;->decode([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 11
    .parameter "data"

    .prologue
    const/16 v10, 0x3d

    .line 184
    if-nez p0, :cond_0

    .line 185
    const/4 v4, 0x0

    .line 233
    :goto_0
    return-object v4

    .line 189
    :cond_0
    invoke-static {p0}, Lcom/htc/android/mail/pim/util/Base64;->discardNonBase64Chars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 191
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_1

    .line 192
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x1

    new-array v4, v7, [B

    .line 199
    .local v4, bytes:[B
    :goto_1
    const/4 v5, 0x0

    .local v5, i:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    if-ge v5, v7, :cond_3

    .line 200
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v0, v7, v8

    .line 201
    .local v0, b1:B
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v1, v7, v8

    .line 202
    .local v1, b2:B
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    add-int/lit8 v8, v5, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v2, v7, v8

    .line 203
    .local v2, b3:B
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    add-int/lit8 v8, v5, 0x3

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v3, v7, v8

    .line 205
    .local v3, b4:B
    shl-int/lit8 v7, v0, 0x2

    shr-int/lit8 v8, v1, 0x4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 206
    add-int/lit8 v7, v6, 0x1

    shl-int/lit8 v8, v1, 0x4

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 207
    add-int/lit8 v7, v6, 0x2

    shl-int/lit8 v8, v2, 0x6

    or-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 199
    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v6, 0x3

    goto :goto_2

    .line 193
    .end local v0           #b1:B
    .end local v1           #b2:B
    .end local v2           #b3:B
    .end local v3           #b4:B
    .end local v4           #bytes:[B
    .end local v5           #i:I
    .end local v6           #j:I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_2

    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x2

    new-array v4, v7, [B

    .restart local v4       #bytes:[B
    goto :goto_1

    .line 196
    .end local v4           #bytes:[B
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v7, v7, 0x3

    new-array v4, v7, [B

    .restart local v4       #bytes:[B
    goto :goto_1

    .line 210
    .restart local v5       #i:I
    .restart local v6       #j:I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_4

    .line 211
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v0, v7, v8

    .line 212
    .restart local v0       #b1:B
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v1, v7, v8

    .line 214
    .restart local v1       #b2:B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v0, 0x2

    shr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    goto/16 :goto_0

    .line 215
    .end local v0           #b1:B
    .end local v1           #b2:B
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_5

    .line 216
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v0, v7, v8

    .line 217
    .restart local v0       #b1:B
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v1, v7, v8

    .line 218
    .restart local v1       #b2:B
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v2, v7, v8

    .line 220
    .restart local v2       #b3:B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x2

    shl-int/lit8 v8, v0, 0x2

    shr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 221
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v1, 0x4

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    goto/16 :goto_0

    .line 223
    .end local v0           #b1:B
    .end local v1           #b2:B
    .end local v2           #b3:B
    :cond_5
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v0, v7, v8

    .line 224
    .restart local v0       #b1:B
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v1, v7, v8

    .line 225
    .restart local v1       #b2:B
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v2, v7, v8

    .line 226
    .restart local v2       #b3:B
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v3, v7, v8

    .line 228
    .restart local v3       #b4:B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x3

    shl-int/lit8 v8, v0, 0x2

    shr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 229
    array-length v7, v4

    add-int/lit8 v7, v7, -0x2

    shl-int/lit8 v8, v1, 0x4

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 230
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v2, 0x6

    or-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    goto/16 :goto_0
.end method

.method public static decode([B)[B
    .locals 11
    .parameter "data"

    .prologue
    const/16 v10, 0x3d

    .line 122
    if-nez p0, :cond_0

    .line 123
    const/4 v4, 0x0

    .line 172
    :goto_0
    return-object v4

    .line 128
    :cond_0
    invoke-static {p0}, Lcom/htc/android/mail/pim/util/Base64;->discardNonBase64Bytes([B)[B

    move-result-object p0

    .line 130
    array-length v7, p0

    add-int/lit8 v7, v7, -0x2

    aget-byte v7, p0, v7

    if-ne v7, v10, :cond_1

    .line 131
    array-length v7, p0

    div-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x1

    new-array v4, v7, [B

    .line 138
    .local v4, bytes:[B
    :goto_1
    const/4 v5, 0x0

    .local v5, i:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    array-length v7, p0

    add-int/lit8 v7, v7, -0x4

    if-ge v5, v7, :cond_3

    .line 139
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    aget-byte v8, p0, v5

    aget-byte v0, v7, v8

    .line 140
    .local v0, b1:B
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, p0, v8

    aget-byte v1, v7, v8

    .line 141
    .local v1, b2:B
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    add-int/lit8 v8, v5, 0x2

    aget-byte v8, p0, v8

    aget-byte v2, v7, v8

    .line 142
    .local v2, b3:B
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    add-int/lit8 v8, v5, 0x3

    aget-byte v8, p0, v8

    aget-byte v3, v7, v8

    .line 144
    .local v3, b4:B
    shl-int/lit8 v7, v0, 0x2

    shr-int/lit8 v8, v1, 0x4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 145
    add-int/lit8 v7, v6, 0x1

    shl-int/lit8 v8, v1, 0x4

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 146
    add-int/lit8 v7, v6, 0x2

    shl-int/lit8 v8, v2, 0x6

    or-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 138
    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v6, 0x3

    goto :goto_2

    .line 132
    .end local v0           #b1:B
    .end local v1           #b2:B
    .end local v2           #b3:B
    .end local v3           #b4:B
    .end local v4           #bytes:[B
    .end local v5           #i:I
    .end local v6           #j:I
    :cond_1
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, p0, v7

    if-ne v7, v10, :cond_2

    .line 133
    array-length v7, p0

    div-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x2

    new-array v4, v7, [B

    .restart local v4       #bytes:[B
    goto :goto_1

    .line 135
    .end local v4           #bytes:[B
    :cond_2
    array-length v7, p0

    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v7, v7, 0x3

    new-array v4, v7, [B

    .restart local v4       #bytes:[B
    goto :goto_1

    .line 149
    .restart local v5       #i:I
    .restart local v6       #j:I
    :cond_3
    array-length v7, p0

    add-int/lit8 v7, v7, -0x2

    aget-byte v7, p0, v7

    if-ne v7, v10, :cond_4

    .line 150
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x4

    aget-byte v8, p0, v8

    aget-byte v0, v7, v8

    .line 151
    .restart local v0       #b1:B
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x3

    aget-byte v8, p0, v8

    aget-byte v1, v7, v8

    .line 153
    .restart local v1       #b2:B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v0, 0x2

    shr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    goto/16 :goto_0

    .line 154
    .end local v0           #b1:B
    .end local v1           #b2:B
    :cond_4
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, p0, v7

    if-ne v7, v10, :cond_5

    .line 155
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x4

    aget-byte v8, p0, v8

    aget-byte v0, v7, v8

    .line 156
    .restart local v0       #b1:B
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x3

    aget-byte v8, p0, v8

    aget-byte v1, v7, v8

    .line 157
    .restart local v1       #b2:B
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x2

    aget-byte v8, p0, v8

    aget-byte v2, v7, v8

    .line 159
    .restart local v2       #b3:B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x2

    shl-int/lit8 v8, v0, 0x2

    shr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 160
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v1, 0x4

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    goto/16 :goto_0

    .line 162
    .end local v0           #b1:B
    .end local v1           #b2:B
    .end local v2           #b3:B
    :cond_5
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x4

    aget-byte v8, p0, v8

    aget-byte v0, v7, v8

    .line 163
    .restart local v0       #b1:B
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x3

    aget-byte v8, p0, v8

    aget-byte v1, v7, v8

    .line 164
    .restart local v1       #b2:B
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x2

    aget-byte v8, p0, v8

    aget-byte v2, v7, v8

    .line 165
    .restart local v2       #b3:B
    sget-object v7, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, p0, v8

    aget-byte v3, v7, v8

    .line 167
    .restart local v3       #b4:B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x3

    shl-int/lit8 v8, v0, 0x2

    shr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 168
    array-length v7, v4

    add-int/lit8 v7, v7, -0x2

    shl-int/lit8 v8, v1, 0x4

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 169
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v2, 0x6

    or-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    goto/16 :goto_0
.end method

.method private static discardNonBase64Bytes([B)[B
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 288
    array-length v5, p0

    new-array v4, v5, [B

    .line 289
    .local v4, temp:[B
    const/4 v0, 0x0

    .line 291
    .local v0, bytesCopied:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_1

    .line 292
    aget-byte v5, p0, v2

    invoke-static {v5}, Lcom/htc/android/mail/pim/util/Base64;->isValidBase64Byte(B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 293
    add-int/lit8 v1, v0, 0x1

    .end local v0           #bytesCopied:I
    .local v1, bytesCopied:I
    aget-byte v5, p0, v2

    aput-byte v5, v4, v0

    move v0, v1

    .line 291
    .end local v1           #bytesCopied:I
    .restart local v0       #bytesCopied:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    :cond_1
    new-array v3, v0, [B

    .line 299
    .local v3, newData:[B
    invoke-static {v4, v6, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    return-object v3
.end method

.method private static discardNonBase64Chars(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "data"

    .prologue
    .line 316
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 318
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 320
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 321
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Lcom/htc/android/mail/pim/util/Base64;->isValidBase64Byte(B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 320
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static encode([B)[B
    .locals 18
    .parameter "data"

    .prologue
    .line 30
    move-object/from16 v0, p0

    array-length v14, v0

    rem-int/lit8 v13, v14, 0x3

    .line 31
    .local v13, modulus:I
    if-nez v13, :cond_0

    .line 32
    move-object/from16 v0, p0

    array-length v14, v0

    mul-int/lit8 v14, v14, 0x4

    div-int/lit8 v14, v14, 0x3

    new-array v7, v14, [B

    .line 37
    .local v7, bytes:[B
    :goto_0
    move-object/from16 v0, p0

    array-length v14, v0

    sub-int v10, v14, v13

    .line 39
    .local v10, dataLength:I
    const/4 v11, 0x0

    .local v11, i:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1
    if-ge v11, v10, :cond_1

    .line 40
    aget-byte v14, p0, v11

    and-int/lit16 v1, v14, 0xff

    .line 41
    .local v1, a1:I
    add-int/lit8 v14, v11, 0x1

    aget-byte v14, p0, v14

    and-int/lit16 v2, v14, 0xff

    .line 42
    .local v2, a2:I
    add-int/lit8 v14, v11, 0x2

    aget-byte v14, p0, v14

    and-int/lit16 v3, v14, 0xff

    .line 44
    .local v3, a3:I
    sget-object v14, Lcom/htc/android/mail/pim/util/Base64;->encodingTable:[B

    ushr-int/lit8 v15, v1, 0x2

    and-int/lit8 v15, v15, 0x3f

    aget-byte v14, v14, v15

    aput-byte v14, v7, v12

    .line 45
    add-int/lit8 v14, v12, 0x1

    sget-object v15, Lcom/htc/android/mail/pim/util/Base64;->encodingTable:[B

    shl-int/lit8 v16, v1, 0x4

    ushr-int/lit8 v17, v2, 0x4

    or-int v16, v16, v17

    and-int/lit8 v16, v16, 0x3f

    aget-byte v15, v15, v16

    aput-byte v15, v7, v14

    .line 46
    add-int/lit8 v14, v12, 0x2

    sget-object v15, Lcom/htc/android/mail/pim/util/Base64;->encodingTable:[B

    shl-int/lit8 v16, v2, 0x2

    ushr-int/lit8 v17, v3, 0x6

    or-int v16, v16, v17

    and-int/lit8 v16, v16, 0x3f

    aget-byte v15, v15, v16

    aput-byte v15, v7, v14

    .line 47
    add-int/lit8 v14, v12, 0x3

    sget-object v15, Lcom/htc/android/mail/pim/util/Base64;->encodingTable:[B

    and-int/lit8 v16, v3, 0x3f

    aget-byte v15, v15, v16

    aput-byte v15, v7, v14

    .line 39
    add-int/lit8 v11, v11, 0x3

    add-int/lit8 v12, v12, 0x4

    goto :goto_1

    .line 34
    .end local v1           #a1:I
    .end local v2           #a2:I
    .end local v3           #a3:I
    .end local v7           #bytes:[B
    .end local v10           #dataLength:I
    .end local v11           #i:I
    .end local v12           #j:I
    :cond_0
    move-object/from16 v0, p0

    array-length v14, v0

    div-int/lit8 v14, v14, 0x3

    add-int/lit8 v14, v14, 0x1

    mul-int/lit8 v14, v14, 0x4

    new-array v7, v14, [B

    .restart local v7       #bytes:[B
    goto :goto_0

    .line 56
    .restart local v10       #dataLength:I
    .restart local v11       #i:I
    .restart local v12       #j:I
    :cond_1
    packed-switch v13, :pswitch_data_0

    .line 84
    :goto_2
    :pswitch_0
    return-object v7

    .line 60
    :pswitch_1
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    aget-byte v14, p0, v14

    and-int/lit16 v8, v14, 0xff

    .line 61
    .local v8, d1:I
    ushr-int/lit8 v14, v8, 0x2

    and-int/lit8 v4, v14, 0x3f

    .line 62
    .local v4, b1:I
    shl-int/lit8 v14, v8, 0x4

    and-int/lit8 v5, v14, 0x3f

    .line 64
    .local v5, b2:I
    array-length v14, v7

    add-int/lit8 v14, v14, -0x4

    sget-object v15, Lcom/htc/android/mail/pim/util/Base64;->encodingTable:[B

    aget-byte v15, v15, v4

    aput-byte v15, v7, v14

    .line 65
    array-length v14, v7

    add-int/lit8 v14, v14, -0x3

    sget-object v15, Lcom/htc/android/mail/pim/util/Base64;->encodingTable:[B

    aget-byte v15, v15, v5

    aput-byte v15, v7, v14

    .line 66
    array-length v14, v7

    add-int/lit8 v14, v14, -0x2

    const/16 v15, 0x3d

    aput-byte v15, v7, v14

    .line 67
    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    const/16 v15, 0x3d

    aput-byte v15, v7, v14

    goto :goto_2

    .line 70
    .end local v4           #b1:I
    .end local v5           #b2:I
    .end local v8           #d1:I
    :pswitch_2
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x2

    aget-byte v14, p0, v14

    and-int/lit16 v8, v14, 0xff

    .line 71
    .restart local v8       #d1:I
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    aget-byte v14, p0, v14

    and-int/lit16 v9, v14, 0xff

    .line 73
    .local v9, d2:I
    ushr-int/lit8 v14, v8, 0x2

    and-int/lit8 v4, v14, 0x3f

    .line 74
    .restart local v4       #b1:I
    shl-int/lit8 v14, v8, 0x4

    ushr-int/lit8 v15, v9, 0x4

    or-int/2addr v14, v15

    and-int/lit8 v5, v14, 0x3f

    .line 75
    .restart local v5       #b2:I
    shl-int/lit8 v14, v9, 0x2

    and-int/lit8 v6, v14, 0x3f

    .line 77
    .local v6, b3:I
    array-length v14, v7

    add-int/lit8 v14, v14, -0x4

    sget-object v15, Lcom/htc/android/mail/pim/util/Base64;->encodingTable:[B

    aget-byte v15, v15, v4

    aput-byte v15, v7, v14

    .line 78
    array-length v14, v7

    add-int/lit8 v14, v14, -0x3

    sget-object v15, Lcom/htc/android/mail/pim/util/Base64;->encodingTable:[B

    aget-byte v15, v15, v5

    aput-byte v15, v7, v14

    .line 79
    array-length v14, v7

    add-int/lit8 v14, v14, -0x2

    sget-object v15, Lcom/htc/android/mail/pim/util/Base64;->encodingTable:[B

    aget-byte v15, v15, v6

    aput-byte v15, v7, v14

    .line 80
    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    const/16 v15, 0x3d

    aput-byte v15, v7, v14

    goto :goto_2

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static isValidBase64Byte(B)Z
    .locals 4
    .parameter "b"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 338
    const/16 v2, 0x3d

    if-ne p0, v2, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v0

    .line 340
    :cond_1
    if-ltz p0, :cond_2

    const/16 v2, 0x80

    if-lt p0, v2, :cond_3

    :cond_2
    move v0, v1

    .line 341
    goto :goto_0

    .line 342
    :cond_3
    sget-object v2, Lcom/htc/android/mail/pim/util/Base64;->decodingTable:[B

    aget-byte v2, v2, p0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 343
    goto :goto_0
.end method
