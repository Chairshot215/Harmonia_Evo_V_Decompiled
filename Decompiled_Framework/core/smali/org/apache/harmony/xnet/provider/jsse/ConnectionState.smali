.class public abstract Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;
.super Ljava/lang/Object;
.source "ConnectionState.java"


# instance fields
.field protected block_size:I

.field protected decCipher:Ljavax/crypto/Cipher;

.field protected encCipher:Ljavax/crypto/Cipher;

.field protected hash_size:I

.field protected logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

.field protected final read_seq_num:[B

.field protected final write_seq_num:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->write_seq_num:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->read_seq_num:[B

    const-string v0, "conn_state"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    return-void

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected static incSequenceNumber([B)V
    .locals 2

    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected decrypt(B[B)[B
    .locals 2

    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->decrypt(B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected abstract decrypt(B[BII)[B
.end method

.method protected encrypt(B[B)[B
    .locals 2

    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encrypt(B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected abstract encrypt(B[BII)[B
.end method

.method protected getContentSize(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->decCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getFragmentSize(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encCipher:Ljavax/crypto/Cipher;

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method protected getMinFragmentSize()I
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encCipher:Ljavax/crypto/Cipher;

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method protected getPaddingSize(I)I
    .locals 3

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->block_size:I

    add-int/lit8 v0, v1, -0x1

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->block_size:I

    and-int v2, p1, v0

    sub-int/2addr v1, v2

    return v1
.end method

.method protected shutdown()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encCipher:Ljavax/crypto/Cipher;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->decCipher:Ljavax/crypto/Cipher;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->write_seq_num:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->write_seq_num:[B

    aput-byte v2, v1, v0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->read_seq_num:[B

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
