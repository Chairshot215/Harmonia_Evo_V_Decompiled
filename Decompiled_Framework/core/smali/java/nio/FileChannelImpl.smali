.class final Ljava/nio/FileChannelImpl;
.super Ljava/nio/channels/FileChannel;
.source "FileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/FileChannelImpl$FileLockImpl;
    }
.end annotation


# static fields
.field private static final LOCK_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fd:Ljava/io/FileDescriptor;

.field private final locks:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field

.field private final mode:I

.field private final stream:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/nio/FileChannelImpl$1;

    invoke-direct {v0}, Ljava/nio/FileChannelImpl$1;-><init>()V

    sput-object v0, Ljava/nio/FileChannelImpl;->LOCK_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/io/FileDescriptor;I)V
    .locals 2

    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/nio/FileChannelImpl;->LOCK_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    iput-object p2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iput-object p1, p0, Ljava/nio/FileChannelImpl;->stream:Ljava/lang/Object;

    iput p3, p0, Ljava/nio/FileChannelImpl;->mode:I

    return-void
.end method

.method private declared-synchronized addLock(Ljava/nio/channels/FileLock;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v6

    add-long v2, v4, v6

    iget-object v4, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_2

    :cond_1
    iget-object v4, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    invoke-interface {v4, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Ljava/nio/channels/FileLock;->overlaps(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/nio/channels/OverlappingFileLockException;

    invoke-direct {v4}, Ljava/nio/channels/OverlappingFileLockException;-><init>()V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private basicLock(JJZZ)Ljava/nio/channels/FileLock;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p0, Ljava/nio/FileChannelImpl;->mode:I

    sget v2, Llibcore/io/OsConstants;->O_ACCMODE:I

    and-int v7, v1, v2

    sget v1, Llibcore/io/OsConstants;->O_RDONLY:I

    if-ne v7, v1, :cond_0

    if-nez p5, :cond_1

    new-instance v1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v1

    :cond_0
    sget v1, Llibcore/io/OsConstants;->O_WRONLY:I

    if-ne v7, v1, :cond_1

    if-eqz p5, :cond_1

    new-instance v1, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v1

    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gez v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/nio/FileChannelImpl$FileLockImpl;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Ljava/nio/FileChannelImpl$FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->addLock(Ljava/nio/channels/FileLock;)V

    new-instance v9, Llibcore/io/StructFlock;

    invoke-direct {v9}, Llibcore/io/StructFlock;-><init>()V

    if-eqz p5, :cond_5

    sget v1, Llibcore/io/OsConstants;->F_RDLCK:I

    :goto_0
    int-to-short v1, v1

    iput-short v1, v9, Llibcore/io/StructFlock;->l_type:S

    sget v1, Llibcore/io/OsConstants;->SEEK_SET:I

    int-to-short v1, v1

    iput-short v1, v9, Llibcore/io/StructFlock;->l_whence:S

    iput-wide p1, v9, Llibcore/io/StructFlock;->l_start:J

    invoke-static {p3, p4}, Ljava/nio/FileChannelImpl;->translateLockLength(J)J

    move-result-wide v1

    iput-wide v1, v9, Llibcore/io/StructFlock;->l_len:J

    const/4 v10, 0x0

    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz p6, :cond_6

    sget v1, Llibcore/io/OsConstants;->F_SETLKW64:I

    :goto_1
    invoke-interface {v2, v3, v1, v9}, Llibcore/io/Os;->fcntlFlock(Ljava/io/FileDescriptor;ILlibcore/io/StructFlock;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    const/4 v10, 0x1

    :goto_2
    if-nez v10, :cond_4

    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->removeLock(Ljava/nio/channels/FileLock;)V

    :cond_4
    if-eqz v10, :cond_9

    :goto_3
    return-object v0

    :cond_5
    sget v1, Llibcore/io/OsConstants;->F_WRLCK:I

    goto :goto_0

    :cond_6
    :try_start_1
    sget v1, Llibcore/io/OsConstants;->F_SETLK64:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    :catch_0
    move-exception v8

    :try_start_2
    invoke-virtual {v8}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    if-nez v10, :cond_8

    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->removeLock(Ljava/nio/channels/FileLock;)V

    :cond_8
    throw v1

    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I
    .locals 3

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v0, v2

    if-eqz p3, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->checkWritable()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private checkOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private checkReadable()V
    .locals 2

    iget v0, p0, Ljava/nio/FileChannelImpl;->mode:I

    sget v1, Llibcore/io/OsConstants;->O_ACCMODE:I

    and-int/2addr v0, v1

    sget v1, Llibcore/io/OsConstants;->O_WRONLY:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private checkWritable()V
    .locals 2

    iget v0, p0, Ljava/nio/FileChannelImpl;->mode:I

    sget v1, Llibcore/io/OsConstants;->O_ACCMODE:I

    and-int/2addr v0, v1

    sget v1, Llibcore/io/OsConstants;->O_RDONLY:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private readImpl(Ljava/nio/ByteBuffer;J)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->checkWritable()V

    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkReadable()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, -0x1

    cmp-long v5, p2, v5

    if-nez v5, :cond_3

    :try_start_1
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v6, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v5, v6, p1}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_1
    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_1
    :goto_2
    const/4 v1, 0x1

    if-eqz v1, :cond_5

    if-ltz v0, :cond_5

    :goto_3
    invoke-virtual {p0, v3}, Ljava/nio/FileChannelImpl;->end(Z)V

    if-lez v0, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2
    move v4, v0

    goto :goto_0

    :cond_3
    :try_start_2
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v6, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v5, v6, p1, p2, p3}, Llibcore/io/Os;->pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Llibcore/io/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    iget v5, v2, Llibcore/io/ErrnoException;->errno:I

    sget v6, Llibcore/io/OsConstants;->EAGAIN:I

    if-ne v5, v6, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v5

    if-eqz v1, :cond_6

    if-ltz v0, :cond_6

    :goto_4
    invoke-virtual {p0, v3}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v5

    :cond_5
    move v3, v4

    goto :goto_3

    :cond_6
    move v3, v4

    goto :goto_4
.end method

.method private declared-synchronized removeLock(Ljava/nio/channels/FileLock;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private transferIoVec(Ljava/nio/IoVec;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/IoVec;->init()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v2}, Ljava/nio/IoVec;->doTransfer(Ljava/io/FileDescriptor;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    invoke-virtual {p1, v0}, Ljava/nio/IoVec;->didTransfer(I)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v2
.end method

.method private static translateLockLength(J)J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    :cond_0
    return-wide p0
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;J)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkWritable()V

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "buffer == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, -0x1

    cmp-long v3, p2, v3

    if-nez v3, :cond_3

    :try_start_1
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v4, p1}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_3
    :try_start_2
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v4, p1, p2, p3}, Llibcore/io/Os;->pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Llibcore/io/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v3

    invoke-virtual {p0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v3
.end method


# virtual methods
.method public force(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    iget v1, p0, Ljava/nio/FileChannelImpl;->mode:I

    sget v2, Llibcore/io/OsConstants;->O_ACCMODE:I

    and-int/2addr v1, v2

    sget v2, Llibcore/io/OsConstants;->O_RDONLY:I

    if-eq v1, v2, :cond_0

    if-eqz p1, :cond_1

    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Llibcore/io/Os;->fsync(Ljava/io/FileDescriptor;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Llibcore/io/Os;->fdatasync(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected implCloseChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/nio/FileChannelImpl;->stream:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/nio/FileChannelImpl;->stream:Ljava/lang/Object;

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :cond_0
    return-void
.end method

.method public final lock(JJZ)Ljava/nio/channels/FileLock;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    const/4 v8, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ljava/nio/FileChannelImpl;->basicLock(JJZZ)Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/nio/FileChannelImpl;->end(Z)V

    return-object v8

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v7}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v0
.end method

.method public final map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v5, "mapMode == null"

    invoke-direct {v2, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v2, p2, v5

    if-ltz v2, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v2, p4, v5

    if-ltz v2, :cond_1

    const-wide/32 v5, 0x7fffffff

    cmp-long v2, p4, v5

    if-lez v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget v2, p0, Ljava/nio/FileChannelImpl;->mode:I

    sget v5, Llibcore/io/OsConstants;->O_ACCMODE:I

    and-int v8, v2, v5

    sget v2, Llibcore/io/OsConstants;->O_RDONLY:I

    if-ne v8, v2, :cond_3

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    if-eq p1, v2, :cond_4

    new-instance v2, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v2}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v2

    :cond_3
    sget v2, Llibcore/io/OsConstants;->O_WRONLY:I

    if-ne v8, v2, :cond_4

    new-instance v2, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v2}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v2

    :cond_4
    add-long v5, p2, p4

    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v12

    cmp-long v2, v5, v12

    if-lez v2, :cond_5

    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v5, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    add-long v6, p2, p4

    invoke-interface {v2, v5, v6, v7}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v5, Llibcore/io/OsConstants;->_SC_PAGE_SIZE:I

    invoke-interface {v2, v5}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v5

    rem-long v5, p2, v5

    sub-long v3, p2, v5

    sub-long v5, p2, v3

    long-to-int v11, v5

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    int-to-long v5, v11

    add-long v5, v5, p4

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Ljava/nio/MemoryBlock;->mmap(Ljava/io/FileDescriptor;JJLjava/nio/channels/FileChannel$MapMode;)Ljava/nio/MemoryBlock;

    move-result-object v9

    new-instance v2, Ljava/nio/MappedByteBufferAdapter;

    move-wide/from16 v0, p4

    long-to-int v5, v0

    invoke-direct {v2, v9, v5, v11, p1}, Ljava/nio/MappedByteBufferAdapter;-><init>(Ljava/nio/MemoryBlock;IILjava/nio/channels/FileChannel$MapMode;)V

    return-object v2

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public position()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v3, 0x0

    sget v5, Llibcore/io/OsConstants;->SEEK_CUR:I

    invoke-interface {v1, v2, v3, v4, v5}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget v3, Llibcore/io/OsConstants;->SEEK_SET:I

    invoke-interface {v1, v2, p1, p2, v3}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/FileChannelImpl;->readImpl(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/FileChannelImpl;->readImpl(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkReadable()V

    new-instance v0, Ljava/nio/IoVec;

    sget-object v1, Ljava/nio/IoVec$Direction;->READV:Ljava/nio/IoVec$Direction;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/nio/IoVec;-><init>([Ljava/nio/ByteBuffer;IILjava/nio/IoVec$Direction;)V

    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->transferIoVec(Ljava/nio/IoVec;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public release(Ljava/nio/channels/FileLock;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    new-instance v1, Llibcore/io/StructFlock;

    invoke-direct {v1}, Llibcore/io/StructFlock;-><init>()V

    sget v2, Llibcore/io/OsConstants;->F_UNLCK:I

    int-to-short v2, v2

    iput-short v2, v1, Llibcore/io/StructFlock;->l_type:S

    sget v2, Llibcore/io/OsConstants;->SEEK_SET:I

    int-to-short v2, v2

    iput-short v2, v1, Llibcore/io/StructFlock;->l_whence:S

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v2

    iput-wide v2, v1, Llibcore/io/StructFlock;->l_start:J

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/nio/FileChannelImpl;->translateLockLength(J)J

    move-result-wide v2

    iput-wide v2, v1, Llibcore/io/StructFlock;->l_len:J

    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget v4, Llibcore/io/OsConstants;->F_SETLKW64:I

    invoke-interface {v2, v3, v4, v1}, Llibcore/io/Os;->fcntlFlock(Ljava/io/FileDescriptor;ILlibcore/io/StructFlock;)I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1}, Ljava/nio/FileChannelImpl;->removeLock(Ljava/nio/channels/FileLock;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public size()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Llibcore/io/StructStat;

    move-result-object v1

    iget-wide v1, v1, Llibcore/io/StructStat;->st_size:J
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    invoke-interface {p1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1

    :cond_0
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkWritable()V

    const-wide/16 v4, 0x0

    cmp-long v1, p2, v4

    if-ltz v1, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v1, p4, v4

    if-ltz v1, :cond_1

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, p4, v4

    if-lez v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v4

    cmp-long v1, p2, v4

    if-lez v1, :cond_3

    const-wide/16 v4, 0x0

    :goto_0
    return-wide v4

    :cond_3
    instance-of v1, p1, Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long v4, v7, v2

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    add-long v4, v2, p4

    :try_start_0
    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, v6, p2, p3}, Ljava/nio/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    int-to-long v4, v1

    invoke-static {v6}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v6}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    throw v1

    :cond_4
    long-to-int v1, p4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p0, v6, p2, p3}, Ljava/nio/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I

    move-result v1

    int-to-long v4, v1

    goto :goto_0
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    invoke-interface/range {p5 .. p5}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v2

    :cond_0
    invoke-direct/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->checkReadable()V

    move-object/from16 v0, p5

    instance-of v2, v0, Ljava/nio/FileChannelImpl;

    if-eqz v2, :cond_1

    move-object/from16 v2, p5

    check-cast v2, Ljava/nio/FileChannelImpl;

    invoke-direct {v2}, Ljava/nio/FileChannelImpl;->checkWritable()V

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v2, p1, v6

    if-ltz v2, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v2, p3, v6

    if-gez v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " count="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v2, p3, v6

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v6

    cmp-long v2, p1, v6

    if-ltz v2, :cond_5

    :cond_4
    const-wide/16 v15, 0x0

    :goto_0
    return-wide v15

    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v6

    sub-long v6, v6, p1

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    const/4 v13, 0x0

    move-object/from16 v0, p5

    instance-of v2, v0, Ljava/nio/SocketChannelImpl;

    if-eqz v2, :cond_7

    move-object/from16 v2, p5

    check-cast v2, Ljava/nio/SocketChannelImpl;

    invoke-virtual {v2}, Ljava/nio/SocketChannelImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->begin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v5, Llibcore/util/MutableLong;

    move-wide/from16 v0, p1

    invoke-direct {v5, v0, v1}, Llibcore/util/MutableLong;-><init>(J)V

    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    move-wide/from16 v6, p3

    invoke-interface/range {v2 .. v7}, Llibcore/io/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Llibcore/util/MutableLong;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v15

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/FileChannelImpl;->end(Z)V

    goto :goto_0

    :catch_0
    move-exception v14

    :try_start_2
    iget v2, v14, Llibcore/io/ErrnoException;->errno:I

    sget v4, Llibcore/io/OsConstants;->ENOSYS:I

    if-eq v2, v4, :cond_6

    iget v2, v14, Llibcore/io/ErrnoException;->errno:I

    sget v4, Llibcore/io/OsConstants;->EINVAL:I

    if-eq v2, v4, :cond_6

    invoke-virtual {v14}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v2

    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/FileChannelImpl;->end(Z)V

    :cond_7
    const/4 v12, 0x0

    :try_start_3
    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v6, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    invoke-virtual/range {v6 .. v11}, Ljava/nio/FileChannelImpl;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    int-to-long v15, v2

    invoke-static {v12}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-static {v12}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    throw v2
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkWritable()V

    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2, p1, p2}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public final tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ljava/nio/FileChannelImpl;->basicLock(JJZZ)Ljava/nio/channels/FileLock;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/FileChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/FileChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkWritable()V

    new-instance v0, Ljava/nio/IoVec;

    sget-object v1, Ljava/nio/IoVec$Direction;->WRITEV:Ljava/nio/IoVec$Direction;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/nio/IoVec;-><init>([Ljava/nio/ByteBuffer;IILjava/nio/IoVec$Direction;)V

    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->transferIoVec(Ljava/nio/IoVec;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
