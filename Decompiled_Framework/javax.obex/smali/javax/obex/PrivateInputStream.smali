.class public final Ljavax/obex/PrivateInputStream;
.super Ljava/io/InputStream;
.source "PrivateInputStream.java"


# instance fields
.field private mData:[B

.field private mIndex:I

.field private mOpen:Z

.field private mParent:Ljavax/obex/BaseStream;


# direct methods
.method public constructor <init>(Ljavax/obex/BaseStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Ljavax/obex/PrivateInputStream;->mParent:Ljavax/obex/BaseStream;

    new-array v0, v1, [B

    iput-object v0, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    iput v1, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/PrivateInputStream;->mOpen:Z

    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/obex/PrivateInputStream;->mParent:Ljavax/obex/BaseStream;

    invoke-interface {v0}, Ljavax/obex/BaseStream;->ensureOpen()V

    iget-boolean v0, p0, Ljavax/obex/PrivateInputStream;->mOpen:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Input stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljavax/obex/PrivateInputStream;->ensureOpen()V

    iget-object v0, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    array-length v0, v0

    iget v1, p0, Ljavax/obex/PrivateInputStream;->mIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/obex/PrivateInputStream;->mOpen:Z

    iget-object v0, p0, Ljavax/obex/PrivateInputStream;->mParent:Ljavax/obex/BaseStream;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljavax/obex/BaseStream;->streamClosed(Z)V

    return-void
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljavax/obex/PrivateInputStream;->ensureOpen()V

    :cond_0
    iget-object v0, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    array-length v0, v0

    iget v1, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljavax/obex/PrivateInputStream;->mParent:Ljavax/obex/BaseStream;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Ljavax/obex/BaseStream;->continueOperation(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    iget v1, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljavax/obex/PrivateInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "buffer is null"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_0
    or-int v4, p2, p3

    if-ltz v4, :cond_1

    :try_start_1
    array-length v4, p1

    sub-int/2addr v4, p2

    if-le p3, v4, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v5, "index outof bound"

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-direct {p0}, Ljavax/obex/PrivateInputStream;->ensureOpen()V

    iget-object v4, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    array-length v4, v4

    iget v5, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    sub-int v0, v4, v5

    move v2, p3

    move v1, p2

    const/4 v3, 0x0

    :goto_0
    if-gt v0, v2, :cond_5

    iget-object v4, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    iget v5, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    invoke-static {v4, v5, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    add-int/2addr v4, v0

    iput v4, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    add-int/2addr v1, v0

    add-int/2addr v3, v0

    sub-int/2addr v2, v0

    iget-object v4, p0, Ljavax/obex/PrivateInputStream;->mParent:Ljavax/obex/BaseStream;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Ljavax/obex/BaseStream;->continueOperation(ZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_4

    if-nez v3, :cond_3

    const/4 v4, -0x1

    :goto_1
    monitor-exit p0

    return v4

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    :try_start_2
    iget-object v4, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    array-length v4, v4

    iget v5, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    sub-int v0, v4, v5

    goto :goto_0

    :cond_5
    if-lez v2, :cond_6

    iget-object v4, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    iget v5, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    invoke-static {v4, v5, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    add-int/2addr v4, v2

    iput v4, p0, Ljavax/obex/PrivateInputStream;->mIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v3, v2

    :cond_6
    move v4, v3

    goto :goto_1
.end method

.method public declared-synchronized writeBytes([BI)V
    .locals 7

    monitor-enter p0

    :try_start_0
    array-length v2, p1

    sub-int/2addr v2, p2

    iget-object v3, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    array-length v3, v3

    iget v4, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    sub-int/2addr v3, v4

    add-int v0, v2, v3

    new-array v1, v0, [B

    iget-object v2, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    iget v3, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    const/4 v4, 0x0

    iget-object v5, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    array-length v5, v5

    iget v6, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    sub-int/2addr v5, v6

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    array-length v2, v2

    iget v3, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    sub-int/2addr v2, v3

    array-length v3, p1

    sub-int/2addr v3, p2

    invoke-static {p1, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    const/4 v2, 0x0

    iput v2, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
