.class Lcom/google/android/gsf/loginservice/PasswordEncrypter;
.super Ljava/lang/Object;
.source "PasswordEncrypter.java"


# static fields
.field private static HEX_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->HEX_CHARS:[C

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
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeSha1Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 89
    :try_start_0
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 90
    .local v4, sha1:Ljava/security/MessageDigest;
    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 91
    .local v1, hash:[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 93
    sget-object v5, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->HEX_CHARS:[C

    aget-byte v6, v1, v2

    and-int/lit16 v6, v6, 0xff

    ushr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    sget-object v5, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->HEX_CHARS:[C

    aget-byte v6, v1, v2

    and-int/lit16 v6, v6, 0xff

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    return-object v5

    .line 97
    .end local v1           #hash:[B
    .end local v2           #i:I
    .end local v3           #sb:Ljava/lang/StringBuffer;
    .end local v4           #sha1:Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 99
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 100
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static createKeyFromString(Ljava/lang/String;[B)Ljava/security/PublicKey;
    .locals 12
    .parameter "keyStr"
    .parameter "ciphertextHeader"

    .prologue
    .line 106
    const/4 v9, 0x0

    :try_start_0
    invoke-static {p0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 108
    .local v0, data:[B
    const/4 v9, 0x0

    invoke-static {v0, v9}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->readInt([BI)I

    move-result v6

    .line 109
    .local v6, modulusLength:I
    new-array v8, v6, [B

    .line 110
    .local v8, temp:[B
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static {v0, v9, v8, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    new-instance v5, Ljava/math/BigInteger;

    const/4 v9, 0x1

    invoke-direct {v5, v9, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 113
    .local v5, modulus:Ljava/math/BigInteger;
    add-int/lit8 v9, v6, 0x4

    invoke-static {v0, v9}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->readInt([BI)I

    move-result v3

    .line 114
    .local v3, exponentLength:I
    new-array v8, v3, [B

    .line 115
    add-int/lit8 v9, v6, 0x8

    const/4 v10, 0x0

    invoke-static {v0, v9, v8, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    new-instance v2, Ljava/math/BigInteger;

    const/4 v9, 0x1

    invoke-direct {v2, v9, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 118
    .local v2, exponent:Ljava/math/BigInteger;
    const-string v9, "SHA-1"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 119
    .local v7, sha1:Ljava/security/MessageDigest;
    invoke-virtual {v7, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 121
    .local v4, hash:[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-byte v10, p1, v9

    .line 122
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x4

    invoke-static {v4, v9, p1, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    const-string v9, "RSA"

    invoke-static {v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v9

    new-instance v10, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v10, v5, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v9, v10}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 141
    .end local v0           #data:[B
    .end local v2           #exponent:Ljava/math/BigInteger;
    .end local v3           #exponentLength:I
    .end local v4           #hash:[B
    .end local v5           #modulus:Ljava/math/BigInteger;
    .end local v6           #modulusLength:I
    .end local v7           #sha1:Ljava/security/MessageDigest;
    .end local v8           #temp:[B
    :goto_0
    return-object v9

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 139
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 140
    .local v1, e:Ljava/security/spec/InvalidKeySpecException;
    const-string v9, "GoogleLoginService.PasswordEncrypter"

    const-string v10, "received bad google_login_public_key: "

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static encryptPassword(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "resolver"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->encryptPassword(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encryptPassword(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "username"
    .parameter "password"
    .parameter "resolver"
    .parameter "publicKeyData"

    .prologue
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, combined:Ljava/lang/String;
    invoke-static {v0, p2, p3}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->encryptString(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static encryptString(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "plain"
    .parameter "resolver"
    .parameter "publicKeyData"

    .prologue
    .line 176
    if-eqz p2, :cond_1

    move-object v6, p2

    .line 179
    .local v6, keyStr:Ljava/lang/String;
    :goto_0
    if-nez v6, :cond_0

    .line 180
    const-string v10, "GoogleLoginService.PasswordEncrypter"

    const-string v11, "no public key available, using default"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v6, "AAAAgMom/1a/v0lblO2Ubrt60J2gcuXSljGFQXgcyZWveWLEwo6prwgi3iJIZdodyhKZQrNWp5nKJ3srRXcUW+F1BD3baEVGcmEgqaLZUNBjm057pKRI16kB0YppeGx5qIQ5QjKzsR8ETQbKLNWgRY0QRNVz34kMJR3P/LgHax/6rmf5AAAAAwEAAQ=="

    .line 184
    :cond_0
    const/4 v10, 0x5

    new-array v3, v10, [B

    .line 185
    .local v3, ciphertextHeader:[B
    invoke-static {v6, v3}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->createKeyFromString(Ljava/lang/String;[B)Ljava/security/PublicKey;

    move-result-object v9

    .line 187
    .local v9, publicKey:Ljava/security/PublicKey;
    if-nez v9, :cond_2

    const/4 v10, 0x0

    .line 223
    :goto_1
    return-object v10

    .line 176
    .end local v3           #ciphertextHeader:[B
    .end local v6           #keyStr:Ljava/lang/String;
    .end local v9           #publicKey:Ljava/security/PublicKey;
    :cond_1
    const-string v10, "google_login_public_key"

    invoke-static {p1, v10}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 189
    .restart local v3       #ciphertextHeader:[B
    .restart local v6       #keyStr:Ljava/lang/String;
    .restart local v9       #publicKey:Ljava/security/PublicKey;
    :cond_2
    :try_start_0
    const-string v10, "RSA/ECB/OAEPWITHSHA1ANDMGF1PADDING"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 191
    .local v0, c:Ljavax/crypto/Cipher;
    const-string v10, "UTF-8"

    invoke-virtual {p0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 192
    .local v8, plaintext:[B
    array-length v10, v8

    add-int/lit8 v10, v10, -0x1

    div-int/lit8 v10, v10, 0x56

    add-int/lit8 v1, v10, 0x1

    .line 196
    .local v1, chunks:I
    mul-int/lit16 v10, v1, 0x85

    new-array v7, v10, [B

    .line 198
    .local v7, output:[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v1, :cond_4

    .line 199
    const/4 v10, 0x1

    invoke-virtual {v0, v10, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 200
    mul-int/lit8 v11, v5, 0x56

    add-int/lit8 v10, v1, -0x1

    if-ne v5, v10, :cond_3

    array-length v10, v8

    mul-int/lit8 v12, v5, 0x56

    sub-int/2addr v10, v12

    :goto_3
    invoke-virtual {v0, v8, v11, v10}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    .line 204
    .local v2, ciphertext:[B
    const/4 v10, 0x0

    mul-int/lit16 v11, v5, 0x85

    array-length v12, v3

    invoke-static {v3, v10, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    const/4 v10, 0x0

    mul-int/lit16 v11, v5, 0x85

    array-length v12, v3

    add-int/2addr v11, v12

    array-length v12, v2

    invoke-static {v2, v10, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 200
    .end local v2           #ciphertext:[B
    :cond_3
    const/16 v10, 0x56

    goto :goto_3

    .line 209
    :cond_4
    const/16 v10, 0xa

    invoke-static {v7, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v10

    goto :goto_1

    .line 210
    .end local v0           #c:Ljavax/crypto/Cipher;
    .end local v1           #chunks:I
    .end local v5           #i:I
    .end local v7           #output:[B
    .end local v8           #plaintext:[B
    :catch_0
    move-exception v4

    .line 211
    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 212
    .end local v4           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v4

    .line 213
    .local v4, e:Ljavax/crypto/NoSuchPaddingException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 214
    .end local v4           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v4

    .line 215
    .local v4, e:Ljavax/crypto/BadPaddingException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 216
    .end local v4           #e:Ljavax/crypto/BadPaddingException;
    :catch_3
    move-exception v4

    .line 217
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 218
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v4

    .line 219
    .local v4, e:Ljavax/crypto/IllegalBlockSizeException;
    const-string v10, "GoogleLoginService.PasswordEncrypter"

    const-string v11, "error encrypting password: "

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    const/4 v10, 0x0

    goto :goto_1

    .line 221
    .end local v4           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v4

    .line 222
    .local v4, e:Ljava/security/InvalidKeyException;
    const-string v10, "GoogleLoginService.PasswordEncrypter"

    const-string v11, "received bad google_login_public_key: "

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public static hashPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "username"
    .parameter "password"

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 63
    const-string v3, "GoogleLoginService.PasswordEncrypter"

    const-string v4, "attempt to hash null username"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    const-string v3, "null"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    const-string v3, "GoogleLoginService.PasswordEncrypter"

    const-string v4, "attempt to hash \"null\" username"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    if-nez p1, :cond_2

    .line 69
    const-string v3, "GoogleLoginService.PasswordEncrypter"

    const-string v4, "attempt to hash null password"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_2
    const-string v3, "null"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    const-string v3, "GoogleLoginService.PasswordEncrypter"

    const-string v4, "attempt to hash \"null\" password"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, input:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->computeSha1Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, hash:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "AAAAgMom/1a/v0lblO2Ubrt60J2gcuXSljGFQXgcyZWveWLEwo6prwgi3iJIZdodyhKZQrNWp5nKJ3srRXcUW+F1BD3baEVGcmEgqaLZUNBjm057pKRI16kB0YppeGx5qIQ5QjKzsR8ETQbKLNWgRY0QRNVz34kMJR3P/LgHax/6rmf5AAAAAwEAAQ=="

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->encryptString(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, crypt:Ljava/lang/String;
    if-nez v0, :cond_4

    .line 80
    .end local v1           #hash:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1       #hash:Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static readInt([BI)I
    .locals 2
    .parameter "src"
    .parameter "offset"

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 232
    .local v0, i:I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 233
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 234
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 235
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 236
    return v0
.end method
