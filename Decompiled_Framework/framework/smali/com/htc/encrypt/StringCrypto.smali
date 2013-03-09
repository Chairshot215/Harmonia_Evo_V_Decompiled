.class public Lcom/htc/encrypt/StringCrypto;
.super Ljava/lang/Object;
.source "StringCrypto.java"


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"


# instance fields
.field private final password:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/encrypt/StringCrypto;->password:Ljava/lang/String;

    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;B)V
    .locals 3

    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static convertFileToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/htc/encrypt/StringCrypto;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string v4, ""

    :goto_0
    return-object v4

    :cond_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    const/16 v4, 0x400

    new-array v0, v4, [C

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v4

    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getCipherGeneratorVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/encrypt/StringCrypto;->password:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/htc/encrypt/StringCrypto;
    .locals 1

    new-instance v0, Lcom/htc/encrypt/StringCrypto;

    invoke-direct {v0, p0}, Lcom/htc/encrypt/StringCrypto;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private prefixWithCipherGeneratorVersion(Lcom/htc/encrypt/CipherGenerator;[B)[B
    .locals 4

    const/4 v3, 0x0

    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    invoke-interface {p1}, Lcom/htc/encrypt/CipherGenerator;->getVersion()B

    move-result v1

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private removeCipherGeneratorVersion([B)[B
    .locals 4

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    new-array v0, v1, [B

    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static toByte(Ljava/lang/String;)[B
    .locals 5

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string v5, ""

    :goto_0
    return-object v5

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-byte v1, v0, v2

    invoke-static {v4, v1}, Lcom/htc/encrypt/StringCrypto;->appendHex(Ljava/lang/StringBuilder;B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-static {p1}, Lcom/htc/encrypt/StringCrypto;->toByte(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v6, 0x0

    aget-byte v5, v3, v6

    invoke-direct {p0, v3}, Lcom/htc/encrypt/StringCrypto;->removeCipherGeneratorVersion([B)[B

    move-result-object v2

    invoke-static {v5}, Lcom/htc/encrypt/CipherGeneratorFactory;->getCipherGeneratorByVersion(I)Lcom/htc/encrypt/CipherGenerator;

    move-result-object v6

    invoke-direct {p0}, Lcom/htc/encrypt/StringCrypto;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/htc/encrypt/CipherGenerator;->getDecryptCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :goto_0
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    return-object v6

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-direct {p0}, Lcom/htc/encrypt/StringCrypto;->getCipherGeneratorVersion()I

    move-result v5

    invoke-static {v5}, Lcom/htc/encrypt/CipherGeneratorFactory;->getCipherGeneratorByVersion(I)Lcom/htc/encrypt/CipherGenerator;

    move-result-object v3

    invoke-direct {p0}, Lcom/htc/encrypt/StringCrypto;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/htc/encrypt/CipherGenerator;->getEncryptCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/htc/encrypt/StringCrypto;->prefixWithCipherGeneratorVersion(Lcom/htc/encrypt/CipherGenerator;[B)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :goto_0
    invoke-static {v4}, Lcom/htc/encrypt/StringCrypto;->toHex([B)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0
.end method
