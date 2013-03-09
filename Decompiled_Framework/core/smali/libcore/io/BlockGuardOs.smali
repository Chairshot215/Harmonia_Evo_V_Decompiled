.class public Llibcore/io/BlockGuardOs;
.super Llibcore/io/ForwardingOs;
.source "BlockGuardOs.java"


# direct methods
.method public constructor <init>(Llibcore/io/Os;)V
    .locals 0

    invoke-direct {p0, p1}, Llibcore/io/ForwardingOs;-><init>(Llibcore/io/Os;)V

    return-void
.end method

.method private static isLingerSocket(Ljava/io/FileDescriptor;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_LINGER:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptLinger(Ljava/io/FileDescriptor;II)Llibcore/io/StructLinger;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/io/StructLinger;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Llibcore/io/StructLinger;->l_linger:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private tagSocket(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ldalvik/system/SocketTagger;->tag(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    new-instance v1, Llibcore/io/ErrnoException;

    const-string v2, "socket"

    sget v3, Llibcore/io/OsConstants;->EINVAL:I

    invoke-direct {v1, v2, v3, v0}, Llibcore/io/ErrnoException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method

.method private untagSocket(Ljava/io/FileDescriptor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ldalvik/system/SocketTagger;->untag(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Llibcore/io/ErrnoException;

    const-string v2, "socket"

    sget v3, Llibcore/io/OsConstants;->EINVAL:I

    invoke-direct {v1, v2, v3, v0}, Llibcore/io/ErrnoException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Llibcore/io/BlockGuardOs;->tagSocket(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public close(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Llibcore/io/StructStat;

    move-result-object v0

    iget v0, v0, Llibcore/io/StructStat;->st_mode:I

    invoke-static {v0}, Llibcore/io/OsConstants;->S_ISSOCK(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Llibcore/io/BlockGuardOs;->isLingerSocket(Ljava/io/FileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    :cond_0
    invoke-direct {p0, p1}, Llibcore/io/BlockGuardOs;->untagSocket(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public fdatasync(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->fdatasync(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public fsync(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->fsync(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public ftruncate(Ljava/io/FileDescriptor;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V

    return-void
.end method

.method public open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    sget v0, Llibcore/io/OsConstants;->O_ACCMODE:I

    and-int/2addr v0, p3

    sget v1, Llibcore/io/OsConstants;->O_RDONLY:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    :cond_0
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public poll([Llibcore/io/StructPollfd;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    :cond_0
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->poll([Llibcore/io/StructPollfd;I)I

    move-result v0

    return v0
.end method

.method public pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public pread(Ljava/io/FileDescriptor;[BIIJ)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v0

    return v0
.end method

.method public pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public pwrite(Ljava/io/FileDescriptor;[BIIJ)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->pwrite(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v0

    return v0
.end method

.method public read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public read(Ljava/io/FileDescriptor;[BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    move-result v0

    return v0
.end method

.method public recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I

    move-result v0

    return v0
.end method

.method public recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    move-result v0

    return v0
.end method

.method public sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    if-eqz p6, :cond_0

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    :cond_0
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public socket(III)Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Llibcore/io/BlockGuardOs;->tagSocket(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public write(Ljava/io/FileDescriptor;[BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    move-result v0

    return v0
.end method
