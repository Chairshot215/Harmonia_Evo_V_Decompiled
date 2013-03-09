.class Lcom/android/providers/htcCheckin/RSA_Sign;
.super Ljava/lang/Object;
.source "RSA_Sign.java"


# static fields
.field private static final HEXDIGITS:[C = null

.field public static final TAG:Ljava/lang/String; = "Fota.Encrypt"


# instance fields
.field private final SHA256_PADDING:[B

.field public final VERBOSE:Z

.field private pri_key_file:Ljava/lang/String;

.field private pub_key_file:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 246
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/htcCheckin/RSA_Sign;->HEXDIGITS:[C

    return-void

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

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/htcCheckin/RSA_Sign;->VERBOSE:Z

    .line 35
    iput-object v1, p0, Lcom/android/providers/htcCheckin/RSA_Sign;->pri_key_file:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/android/providers/htcCheckin/RSA_Sign;->pub_key_file:Ljava/lang/String;

    .line 38
    const/16 v0, 0xe0

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/providers/htcCheckin/RSA_Sign;->SHA256_PADDING:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x1t
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
        0x0t
        0x30t
        0x31t
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        0x86t
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x1t
        0x5t
        0x0t
        0x4t
        0x20t
    .end array-data
.end method

.method private compareArrays([B[B)Z
    .locals 5
    .parameter "sign"
    .parameter "dec"

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, isMatch:Z
    const/4 v0, 0x0

    .line 174
    .local v0, i:I
    array-length v0, p2

    :goto_0
    if-lez v0, :cond_0

    .line 175
    array-length v2, p1

    sub-int/2addr v2, v0

    aget-byte v2, p1, v2

    array-length v3, p2

    sub-int/2addr v3, v0

    aget-byte v3, p2, v3

    if-ne v2, v3, :cond_0

    .line 174
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 187
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 188
    :goto_1
    const-string v3, "Fota.Encrypt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compared result is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_2

    const-string v2, "pass"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return v1

    .line 187
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 188
    :cond_2
    const-string v2, "FAILED"

    goto :goto_2
.end method

.method private static get_PrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 8
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 219
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v1, f:Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 221
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 222
    .local v0, dis:Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v3, v6, [B

    .line 223
    .local v3, keyBytes:[B
    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 224
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 226
    new-instance v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v5, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 228
    .local v5, spec:Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v6, "RSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 229
    .local v4, kf:Ljava/security/KeyFactory;
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v6

    return-object v6
.end method

.method private static get_PublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 8
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, f:Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 235
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 236
    .local v0, dis:Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v3, v6, [B

    .line 237
    .local v3, keyBytes:[B
    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 238
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 240
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 242
    .local v5, spec:Ljava/security/spec/X509EncodedKeySpec;
    const-string v6, "RSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 243
    .local v4, kf:Ljava/security/KeyFactory;
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    return-object v6
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 7
    .parameter "bytes"

    .prologue
    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x3

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 252
    .local v4, sb:Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 253
    .local v1, b:I
    and-int/lit16 v1, v1, 0xff

    .line 254
    sget-object v5, Lcom/android/providers/htcCheckin/RSA_Sign;->HEXDIGITS:[C

    shr-int/lit8 v6, v1, 0x4

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    sget-object v5, Lcom/android/providers/htcCheckin/RSA_Sign;->HEXDIGITS:[C

    and-int/lit8 v6, v1, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    .end local v1           #b:I
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static writeByteArrayToFile([BLjava/lang/String;)V
    .locals 6
    .parameter "outData"
    .parameter "filePath"

    .prologue
    .line 263
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 270
    .local v1, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 276
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 282
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, ex:Ljava/io/FileNotFoundException;
    const-string v3, "Fota.Encrypt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "catch FileNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 280
    .local v2, ioe:Ljava/io/IOException;
    const-string v3, "Fota.Encrypt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "catch IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public RSA_Dec([B)[B
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v2, p0, Lcom/android/providers/htcCheckin/RSA_Sign;->pub_key_file:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/providers/htcCheckin/RSA_Sign;->get_PublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    .line 204
    .local v1, publicKey:Ljava/security/PublicKey;
    const-string v2, "RSA/ECB/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 205
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 207
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    return-object v2
.end method

.method public RSA_Enc([B)[B
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v2, p0, Lcom/android/providers/htcCheckin/RSA_Sign;->pri_key_file:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/providers/htcCheckin/RSA_Sign;->get_PrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 195
    .local v1, privateKey:Ljava/security/PrivateKey;
    const-string v2, "RSA/ECB/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 196
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 198
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    return-object v2
.end method

.method public Sign_func(Ljava/lang/String;II)[B
    .locals 23
    .parameter "filePath"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 77
    const/16 v11, 0x1000

    .line 78
    .local v11, readBuf_size:I
    const/4 v4, 0x0

    .line 79
    .local v4, dig:[B
    new-array v10, v11, [B

    .line 80
    .local v10, readBuf:[B
    const/16 v18, 0x100

    move/from16 v0, v18

    new-array v13, v0, [B

    .line 81
    .local v13, sign:[B
    const-wide/16 v7, 0x0

    .line 82
    .local v7, finish_count:J
    const-wide/16 v16, 0x0

    .line 83
    .local v16, total_count:J
    const-wide/16 v14, 0x0

    .line 84
    .local v14, skip_count:J
    const/4 v12, 0x0

    .line 87
    .local v12, read_count:I
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 88
    .local v6, fin:Ljava/io/FileInputStream;
    const-string v18, "SHA-256"

    invoke-static/range {v18 .. v18}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 90
    .local v9, md:Ljava/security/MessageDigest;
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 93
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v14

    .line 94
    add-long/2addr v7, v14

    .line 96
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v14, v18

    if-nez v18, :cond_0

    .line 97
    invoke-virtual {v6, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    .line 98
    :goto_0
    if-lez v12, :cond_0

    .line 99
    int-to-long v0, v12

    move-wide/from16 v18, v0

    add-long v7, v7, v18

    .line 101
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v10, v0, v12}, Ljava/security/MessageDigest;->update([BII)V

    .line 102
    invoke-virtual {v6, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/RSA_Sign;->SHA256_PADDING:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/RSA_Sign;->SHA256_PADDING:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v13, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/RSA_Sign;->SHA256_PADDING:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    array-length v0, v13

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/RSA_Sign;->SHA256_PADDING:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v13, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v6           #fin:Ljava/io/FileInputStream;
    .end local v9           #md:Ljava/security/MessageDigest;
    :goto_1
    return-object v13

    .line 109
    :catch_0
    move-exception v5

    .line 110
    .local v5, e:Ljava/lang/Exception;
    const-string v18, "Fota.Encrypt"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "read file error: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public Sign_func([B)[B
    .locals 8
    .parameter "indata"

    .prologue
    .line 117
    const/16 v3, 0x100

    new-array v2, v3, [B

    .line 120
    .local v2, sign:[B
    :try_start_0
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 121
    .local v1, md:Ljava/security/MessageDigest;
    const/4 v3, 0x0

    array-length v4, p1

    invoke-virtual {v1, p1, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 123
    iget-object v3, p0, Lcom/android/providers/htcCheckin/RSA_Sign;->SHA256_PADDING:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/providers/htcCheckin/RSA_Sign;->SHA256_PADDING:[B

    array-length v6, v6

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/providers/htcCheckin/RSA_Sign;->SHA256_PADDING:[B

    array-length v5, v5

    array-length v6, v2

    iget-object v7, p0, Lcom/android/providers/htcCheckin/RSA_Sign;->SHA256_PADDING:[B

    array-length v7, v7

    sub-int/2addr v6, v7

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v1           #md:Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Fota.Encrypt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "catch exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public do_sign([B)[B
    .locals 2
    .parameter "indata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/providers/htcCheckin/RSA_Sign;->Sign_func([B)[B

    move-result-object v1

    .line 71
    .local v1, sign:[B
    invoke-virtual {p0, v1}, Lcom/android/providers/htcCheckin/RSA_Sign;->RSA_Enc([B)[B

    move-result-object v0

    .line 73
    .local v0, enc:[B
    return-object v0
.end method

.method public do_verify(Ljava/lang/String;)Z
    .locals 8
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 154
    const/16 v4, 0x100

    .line 155
    .local v4, verify_size:I
    new-array v3, v4, [B

    .line 156
    .local v3, verify:[B
    const/4 v0, 0x0

    .line 157
    .local v0, dec:[B
    const/4 v2, 0x0

    .line 159
    .local v2, sign:[B
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, fin:Ljava/io/FileInputStream;
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    array-length v6, v3

    if-ne v5, v6, :cond_0

    .line 162
    invoke-virtual {p0, v3}, Lcom/android/providers/htcCheckin/RSA_Sign;->RSA_Dec([B)[B

    move-result-object v0

    .line 163
    array-length v5, v3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v6

    array-length v7, v3

    add-int/2addr v6, v7

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/providers/htcCheckin/RSA_Sign;->Sign_func(Ljava/lang/String;II)[B

    move-result-object v2

    .line 165
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/android/providers/htcCheckin/RSA_Sign;->compareArrays([B[B)Z

    move-result v5

    return v5
.end method

.method public do_verify([B)Z
    .locals 8
    .parameter "indata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 136
    const/16 v4, 0x100

    .line 137
    .local v4, verify_size:I
    new-array v3, v4, [B

    .line 138
    .local v3, verify:[B
    const/4 v1, 0x0

    .line 139
    .local v1, dec:[B
    const/4 v2, 0x0

    .line 141
    .local v2, sign:[B
    array-length v5, v3

    invoke-static {p1, v7, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    invoke-virtual {p0, v3}, Lcom/android/providers/htcCheckin/RSA_Sign;->RSA_Dec([B)[B

    move-result-object v1

    .line 144
    array-length v5, p1

    array-length v6, v3

    sub-int/2addr v5, v6

    new-array v0, v5, [B

    .line 145
    .local v0, data:[B
    array-length v5, v3

    array-length v6, v0

    invoke-static {p1, v5, v0, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/providers/htcCheckin/RSA_Sign;->Sign_func([B)[B

    move-result-object v2

    .line 148
    invoke-direct {p0, v2, v1}, Lcom/android/providers/htcCheckin/RSA_Sign;->compareArrays([B[B)Z

    move-result v5

    return v5
.end method

.method public loadFileToByteArray(Ljava/lang/String;)[B
    .locals 9
    .parameter "strPath"

    .prologue
    const/4 v7, 0x0

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, arrayFile:[B
    const/16 v6, 0x1000

    new-array v4, v6, [B

    .line 288
    .local v4, readBuf:[B
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 289
    :cond_0
    new-array v6, v7, [B

    .line 309
    :goto_0
    return-object v6

    .line 293
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 294
    .local v1, bout:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 296
    .local v3, fin:Ljava/io/FileInputStream;
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 297
    .local v5, readCnt:I
    :goto_1
    if-lez v5, :cond_2

    .line 298
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 299
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    goto :goto_1

    .line 302
    :cond_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 303
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v1           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v5           #readCnt:I
    :goto_2
    move-object v6, v0

    .line 309
    goto :goto_0

    .line 304
    :catch_0
    move-exception v2

    .line 305
    .local v2, e:Ljava/lang/Exception;
    new-array v0, v7, [B

    .line 306
    const-string v6, "Fota.Encrypt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read file error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public set_EncSignKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "Pri"
    .parameter "Pub"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/providers/htcCheckin/RSA_Sign;->pri_key_file:Ljava/lang/String;

    .line 213
    iput-object p2, p0, Lcom/android/providers/htcCheckin/RSA_Sign;->pub_key_file:Ljava/lang/String;

    .line 215
    return-void
.end method
