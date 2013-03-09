.class public Ljavax/crypto/CipherInputStream;
.super Ljava/io/FilterInputStream;
.source "CipherInputStream.java"


# static fields
.field private static final I_BUFFER_SIZE:I = 0x14


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private finished:Z

.field private index:I

.field private final inputBuffer:[B

.field private outputBuffer:[B


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    new-instance v0, Ljavax/crypto/NullCipher;

    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    invoke-direct {p0, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/CipherInputStream;->inputBuffer:[B

    iput-object p2, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :try_start_0
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, -0x1

    iget-boolean v3, p0, Ljavax/crypto/CipherInputStream;->finished:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    if-eqz v3, :cond_0

    iget v3, p0, Ljavax/crypto/CipherInputStream;->index:I

    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    array-length v4, v4

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    iget v3, p0, Ljavax/crypto/CipherInputStream;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljavax/crypto/CipherInputStream;->index:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    goto :goto_0

    :cond_2
    iget-object v3, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    if-eqz v3, :cond_3

    iget v3, p0, Ljavax/crypto/CipherInputStream;->index:I

    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    array-length v4, v4

    if-ge v3, v4, :cond_3

    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    iget v3, p0, Ljavax/crypto/CipherInputStream;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljavax/crypto/CipherInputStream;->index:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    goto :goto_0

    :cond_3
    iput v5, p0, Ljavax/crypto/CipherInputStream;->index:I

    const/4 v3, 0x0

    iput-object v3, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    :goto_1
    iget-object v3, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    if-nez v3, :cond_4

    iget-object v3, p0, Ljavax/crypto/CipherInputStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->inputBuffer:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ne v0, v2, :cond_5

    :try_start_0
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v2

    iput-object v2, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Ljavax/crypto/CipherInputStream;->finished:Z

    :cond_4
    invoke-virtual {p0}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    iget-object v3, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->inputBuffer:[B

    invoke-virtual {v3, v4, v5, v0}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v3

    iput-object v3, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    goto :goto_1
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    iget-object v3, p0, Ljavax/crypto/CipherInputStream;->in:Ljava/io/InputStream;

    if-nez v3, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Underlying input stream is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    invoke-virtual {p0}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v0

    if-ne v0, v2, :cond_2

    if-nez v1, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    if-eqz p1, :cond_3

    add-int v3, p2, v1

    int-to-byte v4, v0

    aput-byte v4, p1, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
