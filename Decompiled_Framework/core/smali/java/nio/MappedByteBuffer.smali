.class public abstract Ljava/nio/MappedByteBuffer;
.super Ljava/nio/ByteBuffer;
.source "MappedByteBuffer.java"


# instance fields
.field private final mapMode:Ljava/nio/channels/FileChannel$MapMode;

.field final wrapped:Ljava/nio/DirectByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    iget v0, p1, Ljava/nio/Buffer;->capacity:I

    iget-object v1, p1, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-direct {p0, v0, v1}, Ljava/nio/ByteBuffer;-><init>(ILjava/nio/MemoryBlock;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    check-cast p1, Ljava/nio/DirectByteBuffer;

    iput-object p1, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/MappedByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    return-void
.end method

.method constructor <init>(Ljava/nio/MemoryBlock;IILjava/nio/channels/FileChannel$MapMode;)V
    .locals 1

    invoke-direct {p0, p2, p1}, Ljava/nio/ByteBuffer;-><init>(ILjava/nio/MemoryBlock;)V

    iput-object p4, p0, Ljava/nio/MappedByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    if-ne p4, v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyDirectByteBuffer;

    invoke-direct {v0, p1, p2, p3}, Ljava/nio/ReadOnlyDirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    iput-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/nio/ReadWriteDirectByteBuffer;

    invoke-direct {v0, p1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    iput-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    goto :goto_0
.end method


# virtual methods
.method public final force()Ljava/nio/MappedByteBuffer;
    .locals 7

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    if-ne v0, v1, :cond_0

    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->toInt()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v3}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v3

    sget v5, Llibcore/io/OsConstants;->MS_SYNC:I

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->msync(JJI)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception v6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final isLoaded()Z
    .locals 15

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->toInt()I

    move-result v0

    int-to-long v1, v0

    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v3

    const-wide/16 v11, 0x0

    cmp-long v0, v3, v11

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v11, Llibcore/io/OsConstants;->_SC_PAGE_SIZE:I

    invoke-interface {v0, v11}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v11

    long-to-int v10, v11

    int-to-long v11, v10

    rem-long v11, v1, v11

    long-to-int v9, v11

    int-to-long v11, v9

    sub-long/2addr v1, v11

    int-to-long v11, v9

    add-long/2addr v3, v11

    int-to-long v11, v10

    add-long/2addr v11, v3

    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    int-to-long v13, v10

    div-long/2addr v11, v13

    long-to-int v8, v11

    new-array v5, v8, [B

    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->mincore(JJ[B)V

    const/4 v7, 0x0

    :goto_1
    array-length v0, v5

    if-ge v7, v0, :cond_2

    aget-byte v0, v5, v7
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v0, v0, 0x1

    const/4 v11, 0x1

    if-eq v0, v11, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final load()Ljava/nio/MappedByteBuffer;
    .locals 5

    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->toInt()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v3}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Llibcore/io/Os;->mlock(JJ)V

    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->toInt()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v3}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Llibcore/io/Os;->munlock(JJ)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
