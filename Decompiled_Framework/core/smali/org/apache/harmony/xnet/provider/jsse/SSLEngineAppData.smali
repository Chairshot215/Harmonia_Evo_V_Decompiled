.class public Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;
.super Ljava/lang/Object;
.source "SSLEngineAppData.java"

# interfaces
.implements Lorg/apache/harmony/xnet/provider/jsse/Appendable;


# instance fields
.field buffer:[B


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public append([B)V
    .locals 4

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;->buffer:[B

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v1, 0x50

    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "Attempt to override the data"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;->buffer:[B

    return-void
.end method

.method protected placeTo([Ljava/nio/ByteBuffer;II)I
    .locals 8

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;->buffer:[B

    if-nez v4, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x0

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;->buffer:[B

    array-length v1, v4

    move v0, p2

    :goto_1
    add-int v4, p2, p3

    if-ge v0, v4, :cond_1

    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    sub-int v4, v1, v2

    if-ge v4, v3, :cond_2

    aget-object v4, p1, v0

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;->buffer:[B

    sub-int v6, v1, v2

    invoke-virtual {v4, v5, v2, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move v2, v1

    :cond_1
    if-eq v2, v1, :cond_3

    new-instance v4, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v5, 0x50

    new-instance v6, Ljavax/net/ssl/SSLException;

    const-string v7, "The received application data could not be fully writteninto the destination buffers"

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v4

    :cond_2
    aget-object v4, p1, v0

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;->buffer:[B

    invoke-virtual {v4, v5, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;->buffer:[B

    goto :goto_0
.end method
