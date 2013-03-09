.class public Lcom/htc/xps/pomelo/log/HexCrypto;
.super Ljava/lang/Object;
.source "HexCrypto.java"

# interfaces
.implements Lcom/htc/xps/pomelo/log/IStringEncryption;


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "seed"
    .parameter "encryptedText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    const-string v8, "AES"

    invoke-static {v8}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 52
    .local v2, keyGen:Ljavax/crypto/KeyGenerator;
    const-string v8, "SHA1PRNG"

    invoke-static {v8}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v4

    .line 53
    .local v4, random:Ljava/security/SecureRandom;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 54
    const/16 v8, 0x80

    invoke-virtual {v2, v8, v4}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 55
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v8

    invoke-interface {v8}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    .line 57
    .local v5, rawKey:[B
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v3, v8, 0x2

    .line 58
    .local v3, len:I
    new-array v6, v3, [B

    .line 59
    .local v6, result:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 60
    mul-int/lit8 v8, v1, 0x2

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->byteValue()B

    move-result v8

    aput-byte v8, v6, v1

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v7, v5, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 63
    .local v7, secKeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v8, "AES"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 64
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 66
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    return-object v8
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "seed"
    .parameter "originText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 22
    const-string v9, "AES"

    invoke-static {v9}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    .line 23
    .local v3, keyGen:Ljavax/crypto/KeyGenerator;
    const-string v9, "SHA1PRNG"

    invoke-static {v9}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v4

    .line 24
    .local v4, random:Ljava/security/SecureRandom;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 25
    const/16 v9, 0x80

    invoke-virtual {v3, v9, v4}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 26
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v9

    invoke-interface {v9}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    .line 28
    .local v5, rawKey:[B
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "AES"

    invoke-direct {v8, v5, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 29
    .local v8, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v9, "AES"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 30
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v9, 0x1

    invoke-virtual {v0, v9, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 33
    .local v6, result:[B
    if-nez v6, :cond_0

    .line 34
    const-string v9, ""

    .line 41
    :goto_0
    return-object v9

    .line 36
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v9, v6

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v1, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 37
    .local v1, finalResult:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v9, v6

    if-ge v2, v9, :cond_1

    .line 38
    aget-byte v7, v6, v2

    .line 39
    .local v7, resultByte:B
    const-string v9, "0123456789ABCDEF"

    shr-int/lit8 v10, v7, 0x4

    and-int/lit8 v10, v10, 0xf

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "0123456789ABCDEF"

    and-int/lit8 v11, v7, 0xf

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 41
    .end local v7           #resultByte:B
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method
