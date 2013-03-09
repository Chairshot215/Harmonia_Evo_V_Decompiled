.class public Llibcore/io/ForwardingOs;
.super Ljava/lang/Object;
.source "ForwardingOs.java"

# interfaces
.implements Llibcore/io/Os;


# instance fields
.field protected final os:Llibcore/io/Os;


# direct methods
.method public constructor <init>(Llibcore/io/Os;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public access(Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->access(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public chmod(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V

    return-void
.end method

.method public close(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public environ()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->environ()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fcntlFlock(Ljava/io/FileDescriptor;ILlibcore/io/StructFlock;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->fcntlFlock(Ljava/io/FileDescriptor;ILlibcore/io/StructFlock;)I

    move-result v0

    return v0
.end method

.method public fcntlLong(Ljava/io/FileDescriptor;IJ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->fcntlLong(Ljava/io/FileDescriptor;IJ)I

    move-result v0

    return v0
.end method

.method public fcntlVoid(Ljava/io/FileDescriptor;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->fcntlVoid(Ljava/io/FileDescriptor;I)I

    move-result v0

    return v0
.end method

.method public fdatasync(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->fdatasync(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public fstat(Ljava/io/FileDescriptor;)Llibcore/io/StructStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Llibcore/io/StructStat;

    move-result-object v0

    return-object v0
.end method

.method public fstatfs(Ljava/io/FileDescriptor;)Llibcore/io/StructStatFs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->fstatfs(Ljava/io/FileDescriptor;)Llibcore/io/StructStatFs;

    move-result-object v0

    return-object v0
.end method

.method public fsync(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

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

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V

    return-void
.end method

.method public gai_strerror(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->gai_strerror(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getaddrinfo(Ljava/lang/String;Llibcore/io/StructAddrinfo;)[Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/GaiException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->getaddrinfo(Ljava/lang/String;Llibcore/io/StructAddrinfo;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getegid()I
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getegid()I

    move-result v0

    return v0
.end method

.method public getenv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public geteuid()I
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->geteuid()I

    move-result v0

    return v0
.end method

.method public getgid()I
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getgid()I

    move-result v0

    return v0
.end method

.method public getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/GaiException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getpid()I
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getpid()I

    move-result v0

    return v0
.end method

.method public getppid()I
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getppid()I

    move-result v0

    return v0
.end method

.method public getpwnam(Ljava/lang/String;)Llibcore/io/StructPasswd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->getpwnam(Ljava/lang/String;)Llibcore/io/StructPasswd;

    move-result-object v0

    return-object v0
.end method

.method public getpwuid(I)Llibcore/io/StructPasswd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->getpwuid(I)Llibcore/io/StructPasswd;

    move-result-object v0

    return-object v0
.end method

.method public getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getsockoptByte(Ljava/io/FileDescriptor;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptByte(Ljava/io/FileDescriptor;II)I

    move-result v0

    return v0
.end method

.method public getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getsockoptInt(Ljava/io/FileDescriptor;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    return v0
.end method

.method public getsockoptLinger(Ljava/io/FileDescriptor;II)Llibcore/io/StructLinger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptLinger(Ljava/io/FileDescriptor;II)Llibcore/io/StructLinger;

    move-result-object v0

    return-object v0
.end method

.method public getsockoptTimeval(Ljava/io/FileDescriptor;II)Llibcore/io/StructTimeval;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptTimeval(Ljava/io/FileDescriptor;II)Llibcore/io/StructTimeval;

    move-result-object v0

    return-object v0
.end method

.method public getuid()I
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getuid()I

    move-result v0

    return v0
.end method

.method public if_indextoname(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->if_indextoname(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public ioctlInt(Ljava/io/FileDescriptor;ILlibcore/util/MutableInt;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->ioctlInt(Ljava/io/FileDescriptor;ILlibcore/util/MutableInt;)I

    move-result v0

    return v0
.end method

.method public isatty(Ljava/io/FileDescriptor;)Z
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->isatty(Ljava/io/FileDescriptor;)Z

    move-result v0

    return v0
.end method

.method public kill(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->kill(II)V

    return-void
.end method

.method public listen(Ljava/io/FileDescriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->listen(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public lseek(Ljava/io/FileDescriptor;JI)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public lstat(Ljava/lang/String;)Llibcore/io/StructStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->lstat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v0

    return-object v0
.end method

.method public mincore(JJ[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->mincore(JJ[B)V

    return-void
.end method

.method public mkdir(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->mkdir(Ljava/lang/String;I)V

    return-void
.end method

.method public mlock(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->mlock(JJ)V

    return-void
.end method

.method public mmap(JJIILjava/io/FileDescriptor;J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-interface/range {v0 .. v9}, Llibcore/io/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public msync(JJI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->msync(JJI)V

    return-void
.end method

.method public munlock(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->munlock(JJ)V

    return-void
.end method

.method public munmap(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->munmap(JJ)V

    return-void
.end method

.method public open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public pipe()[Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->pipe()[Ljava/io/FileDescriptor;

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

.method public remove(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Llibcore/util/MutableLong;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Llibcore/util/MutableLong;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

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

.method public setegid(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->setegid(I)V

    return-void
.end method

.method public seteuid(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->seteuid(I)V

    return-void
.end method

.method public setgid(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->setgid(I)V

    return-void
.end method

.method public setsockoptByte(Ljava/io/FileDescriptor;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method public setsockoptGroupReq(Ljava/io/FileDescriptor;IILlibcore/io/StructGroupReq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptGroupReq(Ljava/io/FileDescriptor;IILlibcore/io/StructGroupReq;)V

    return-void
.end method

.method public setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V

    return-void
.end method

.method public setsockoptInt(Ljava/io/FileDescriptor;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method public setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method public setsockoptLinger(Ljava/io/FileDescriptor;IILlibcore/io/StructLinger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptLinger(Ljava/io/FileDescriptor;IILlibcore/io/StructLinger;)V

    return-void
.end method

.method public setsockoptTimeval(Ljava/io/FileDescriptor;IILlibcore/io/StructTimeval;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILlibcore/io/StructTimeval;)V

    return-void
.end method

.method public setuid(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->setuid(I)V

    return-void
.end method

.method public shutdown(Ljava/io/FileDescriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->shutdown(Ljava/io/FileDescriptor;I)V

    return-void
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

    return-object v0
.end method

.method public stat(Ljava/lang/String;)Llibcore/io/StructStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v0

    return-object v0
.end method

.method public statfs(Ljava/lang/String;)Llibcore/io/StructStatFs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->statfs(Ljava/lang/String;)Llibcore/io/StructStatFs;

    move-result-object v0

    return-object v0
.end method

.method public strerror(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->strerror(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public symlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sysconf(I)J
    .locals 2

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public uname()Llibcore/io/StructUtsname;
    .locals 1

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->uname()Llibcore/io/StructUtsname;

    move-result-object v0

    return-object v0
.end method

.method public waitpid(ILlibcore/util/MutableInt;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->waitpid(ILlibcore/util/MutableInt;I)I

    move-result v0

    return v0
.end method

.method public write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

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

    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    move-result v0

    return v0
.end method
