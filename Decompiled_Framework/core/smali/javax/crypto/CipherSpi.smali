.class public abstract Ljavax/crypto/CipherSpi;
.super Ljava/lang/Object;
.source "CipherSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v6, 0x0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "input == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    if-nez p2, :cond_1

    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "output == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int v7, v3, v5

    if-gtz v7, :cond_2

    :goto_0
    return v6

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int v6, v4, v5

    sub-int v7, v3, v5

    invoke-virtual {p0, v0, v6, v7}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    array-length v7, v1

    if-ge v6, v7, :cond_4

    new-instance v6, Ljavax/crypto/ShortBufferException;

    const-string v7, "output buffer too small"

    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    sub-int v7, v3, v5

    new-array v0, v7, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    sub-int v7, v3, v5

    invoke-virtual {p0, v0, v6, v7}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v1

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v6, v1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v6, Ljavax/crypto/ShortBufferException;

    const-string v7, "output buffer too small"

    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected abstract engineDoFinal([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected abstract engineDoFinal([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected abstract engineGetBlockSize()I
.end method

.method protected abstract engineGetIV()[B
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract engineGetOutputSize(I)I
.end method

.method protected abstract engineGetParameters()Ljava/security/AlgorithmParameters;
.end method

.method protected abstract engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract engineSetMode(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method

.method protected abstract engineSetPadding(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    const/4 v6, 0x0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "input == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    if-nez p2, :cond_1

    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "output == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int v7, v3, v5

    if-gtz v7, :cond_3

    :cond_2
    :goto_0
    return v6

    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int v7, v4, v5

    sub-int v8, v3, v5

    invoke-virtual {p0, v0, v7, v8}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    array-length v7, v1

    if-ge v6, v7, :cond_5

    new-instance v6, Ljavax/crypto/ShortBufferException;

    const-string v7, "output buffer too small"

    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    sub-int v7, v3, v5

    new-array v0, v7, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    sub-int v7, v3, v5

    invoke-virtual {p0, v0, v6, v7}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v1

    goto :goto_1

    :cond_5
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v6, v1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v6, Ljavax/crypto/ShortBufferException;

    const-string v7, "output buffer too small"

    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected abstract engineUpdate([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation
.end method

.method protected abstract engineUpdate([BII)[B
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
