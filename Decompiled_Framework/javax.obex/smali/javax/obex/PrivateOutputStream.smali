.class public final Ljavax/obex/PrivateOutputStream;
.super Ljava/io/OutputStream;
.source "PrivateOutputStream.java"


# instance fields
.field private mArray:Ljava/io/ByteArrayOutputStream;

.field private mMaxPacketSize:I

.field private mOpen:Z

.field private mParent:Ljavax/obex/BaseStream;


# direct methods
.method public constructor <init>(Ljavax/obex/BaseStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Ljavax/obex/PrivateOutputStream;->mParent:Ljavax/obex/BaseStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    iput p2, p0, Ljavax/obex/PrivateOutputStream;->mMaxPacketSize:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/PrivateOutputStream;->mOpen:Z

    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/obex/PrivateOutputStream;->mParent:Ljavax/obex/BaseStream;

    invoke-interface {v0}, Ljavax/obex/BaseStream;->ensureOpen()V

    iget-boolean v0, p0, Ljavax/obex/PrivateOutputStream;->mOpen:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavax/obex/PrivateOutputStream;->mOpen:Z

    iget-object v0, p0, Ljavax/obex/PrivateOutputStream;->mParent:Ljavax/obex/BaseStream;

    invoke-interface {v0, v1}, Ljavax/obex/BaseStream;->streamClosed(Z)V

    return-void
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Ljavax/obex/PrivateOutputStream;->mOpen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized readBytes(I)[B
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    new-array v0, p1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v1

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    array-length v3, v1

    sub-int/2addr v3, p1

    invoke-virtual {v2, v1, p1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljavax/obex/PrivateOutputStream;->ensureOpen()V

    iget-object v0, p0, Ljavax/obex/PrivateOutputStream;->mParent:Ljavax/obex/BaseStream;

    invoke-interface {v0}, Ljavax/obex/BaseStream;->ensureNotDone()V

    iget-object v0, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Ljavax/obex/PrivateOutputStream;->mMaxPacketSize:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljavax/obex/PrivateOutputStream;->mParent:Ljavax/obex/BaseStream;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/obex/BaseStream;->continueOperation(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljavax/obex/PrivateOutputStream;->write([BII)V

    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    move v1, p2

    move v2, p3

    if-nez p1, :cond_0

    :try_start_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "buffer is null"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    or-int v3, p2, p3

    if-ltz v3, :cond_1

    :try_start_1
    array-length v3, p1

    sub-int/2addr v3, p2

    if-le p3, v3, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string v4, "index outof bound"

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-direct {p0}, Ljavax/obex/PrivateOutputStream;->ensureOpen()V

    iget-object v3, p0, Ljavax/obex/PrivateOutputStream;->mParent:Ljavax/obex/BaseStream;

    invoke-interface {v3}, Ljavax/obex/BaseStream;->ensureNotDone()V

    :goto_0
    iget-object v3, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v2

    iget v4, p0, Ljavax/obex/PrivateOutputStream;->mMaxPacketSize:I

    if-lt v3, v4, :cond_3

    iget v3, p0, Ljavax/obex/PrivateOutputStream;->mMaxPacketSize:I

    iget-object v4, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    sub-int v0, v3, v4

    iget-object v3, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, p1, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v1, v0

    sub-int/2addr v2, v0

    iget-object v3, p0, Ljavax/obex/PrivateOutputStream;->mParent:Ljavax/obex/BaseStream;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Ljavax/obex/BaseStream;->continueOperation(ZZ)Z

    goto :goto_0

    :cond_3
    if-lez v2, :cond_4

    iget-object v3, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, p1, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void
.end method
