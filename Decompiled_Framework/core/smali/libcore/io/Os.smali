.class public interface abstract Llibcore/io/Os;
.super Ljava/lang/Object;
.source "Os.java"


# virtual methods
.method public abstract accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract access(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract chmod(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract close(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract environ()[Ljava/lang/String;
.end method

.method public abstract fcntlFlock(Ljava/io/FileDescriptor;ILlibcore/io/StructFlock;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract fcntlLong(Ljava/io/FileDescriptor;IJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract fcntlVoid(Ljava/io/FileDescriptor;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract fdatasync(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract fstat(Ljava/io/FileDescriptor;)Llibcore/io/StructStat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract fstatfs(Ljava/io/FileDescriptor;)Llibcore/io/StructStatFs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract fsync(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract ftruncate(Ljava/io/FileDescriptor;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract gai_strerror(I)Ljava/lang/String;
.end method

.method public abstract getaddrinfo(Ljava/lang/String;Llibcore/io/StructAddrinfo;)[Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/GaiException;
        }
    .end annotation
.end method

.method public abstract getegid()I
.end method

.method public abstract getenv(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract geteuid()I
.end method

.method public abstract getgid()I
.end method

.method public abstract getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/GaiException;
        }
    .end annotation
.end method

.method public abstract getpid()I
.end method

.method public abstract getppid()I
.end method

.method public abstract getpwnam(Ljava/lang/String;)Llibcore/io/StructPasswd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract getpwuid(I)Llibcore/io/StructPasswd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract getsockoptByte(Ljava/io/FileDescriptor;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract getsockoptInt(Ljava/io/FileDescriptor;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract getsockoptLinger(Ljava/io/FileDescriptor;II)Llibcore/io/StructLinger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract getsockoptTimeval(Ljava/io/FileDescriptor;II)Llibcore/io/StructTimeval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract getuid()I
.end method

.method public abstract if_indextoname(I)Ljava/lang/String;
.end method

.method public abstract inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;
.end method

.method public abstract ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract ioctlInt(Ljava/io/FileDescriptor;ILlibcore/util/MutableInt;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract isatty(Ljava/io/FileDescriptor;)Z
.end method

.method public abstract kill(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract listen(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract lseek(Ljava/io/FileDescriptor;JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract lstat(Ljava/lang/String;)Llibcore/io/StructStat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract mincore(JJ[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract mkdir(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract mlock(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract mmap(JJIILjava/io/FileDescriptor;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract msync(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract munlock(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract munmap(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract pipe()[Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract poll([Llibcore/io/StructPollfd;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract pread(Ljava/io/FileDescriptor;[BIIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract pwrite(Ljava/io/FileDescriptor;[BIIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract read(Ljava/io/FileDescriptor;[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract rename(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Llibcore/util/MutableLong;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract setegid(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract seteuid(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract setgid(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract setsockoptByte(Ljava/io/FileDescriptor;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract setsockoptGroupReq(Ljava/io/FileDescriptor;IILlibcore/io/StructGroupReq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract setsockoptInt(Ljava/io/FileDescriptor;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract setsockoptLinger(Ljava/io/FileDescriptor;IILlibcore/io/StructLinger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract setsockoptTimeval(Ljava/io/FileDescriptor;IILlibcore/io/StructTimeval;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract setuid(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract shutdown(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract socket(III)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract stat(Ljava/lang/String;)Llibcore/io/StructStat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract statfs(Ljava/lang/String;)Llibcore/io/StructStatFs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract strerror(I)Ljava/lang/String;
.end method

.method public abstract symlink(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract sysconf(I)J
.end method

.method public abstract uname()Llibcore/io/StructUtsname;
.end method

.method public abstract waitpid(ILlibcore/util/MutableInt;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract write(Ljava/io/FileDescriptor;[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method

.method public abstract writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation
.end method
