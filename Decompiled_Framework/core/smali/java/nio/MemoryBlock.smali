.class Ljava/nio/MemoryBlock;
.super Ljava/lang/Object;
.source "MemoryBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/MemoryBlock$1;,
        Ljava/nio/MemoryBlock$UnmanagedBlock;,
        Ljava/nio/MemoryBlock$NonMovableHeapBlock;,
        Ljava/nio/MemoryBlock$MemoryMappedBlock;
    }
.end annotation


# instance fields
.field protected address:I

.field protected final size:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/nio/MemoryBlock;->address:I

    iput-wide p2, p0, Ljava/nio/MemoryBlock;->size:J

    return-void
.end method

.method synthetic constructor <init>(IJLjava/nio/MemoryBlock$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/nio/MemoryBlock;-><init>(IJ)V

    return-void
.end method

.method public static allocate(I)Ljava/nio/MemoryBlock;
    .locals 7

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v0, p0}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v1, v0

    check-cast v1, [B

    invoke-virtual {v6, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v3

    long-to-int v2, v3

    new-instance v0, Ljava/nio/MemoryBlock$NonMovableHeapBlock;

    int-to-long v3, p0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/nio/MemoryBlock$NonMovableHeapBlock;-><init>([BIJLjava/nio/MemoryBlock$1;)V

    return-object v0
.end method

.method public static mmap(Ljava/io/FileDescriptor;JJLjava/nio/channels/FileChannel$MapMode;)Ljava/nio/MemoryBlock;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/nio/MemoryBlock;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljava/nio/MemoryBlock;-><init>(IJ)V

    :goto_0
    return-object v2

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p3, v2

    if-lez v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->PRIVATE:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p5

    if-ne v0, v2, :cond_3

    sget v2, Llibcore/io/OsConstants;->PROT_READ:I

    sget v3, Llibcore/io/OsConstants;->PROT_WRITE:I

    or-int v7, v2, v3

    sget v8, Llibcore/io/OsConstants;->MAP_PRIVATE:I

    :goto_1
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const-wide/16 v3, 0x0

    move-wide/from16 v5, p3

    move-object v9, p0

    move-wide v10, p1

    invoke-interface/range {v2 .. v11}, Llibcore/io/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v2

    long-to-int v12, v2

    new-instance v2, Ljava/nio/MemoryBlock$MemoryMappedBlock;

    const/4 v3, 0x0

    move-wide/from16 v0, p3

    invoke-direct {v2, v12, v0, v1, v3}, Ljava/nio/MemoryBlock$MemoryMappedBlock;-><init>(IJLjava/nio/MemoryBlock$1;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v13

    invoke-virtual {v13}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2

    :cond_3
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p5

    if-ne v0, v2, :cond_4

    sget v7, Llibcore/io/OsConstants;->PROT_READ:I

    sget v8, Llibcore/io/OsConstants;->MAP_SHARED:I

    goto :goto_1

    :cond_4
    sget v2, Llibcore/io/OsConstants;->PROT_READ:I

    sget v3, Llibcore/io/OsConstants;->PROT_WRITE:I

    or-int v7, v2, v3

    sget v8, Llibcore/io/OsConstants;->MAP_SHARED:I

    goto :goto_1
.end method

.method public static wrapFromJni(IJ)Ljava/nio/MemoryBlock;
    .locals 2

    new-instance v0, Ljava/nio/MemoryBlock$UnmanagedBlock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/nio/MemoryBlock$UnmanagedBlock;-><init>(IJLjava/nio/MemoryBlock$1;)V

    return-object v0
.end method


# virtual methods
.method public array()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public free()V
    .locals 0

    return-void
.end method

.method public final getSize()J
    .locals 2

    iget-wide v0, p0, Ljava/nio/MemoryBlock;->size:J

    return-wide v0
.end method

.method public final peekByte(I)B
    .locals 1

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0}, Llibcore/io/Memory;->peekByte(I)B

    move-result v0

    return v0
.end method

.method public final peekByteArray(I[BII)V
    .locals 1

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4}, Llibcore/io/Memory;->peekByteArray(I[BII)V

    return-void
.end method

.method public final peekCharArray(I[CIIZ)V
    .locals 1

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->peekCharArray(I[CIIZ)V

    return-void
.end method

.method public final peekDoubleArray(I[DIIZ)V
    .locals 1

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->peekDoubleArray(I[DIIZ)V

    return-void
.end method

.method public final peekFloatArray(I[FIIZ)V
    .locals 1

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->peekFloatArray(I[FIIZ)V

    return-void
.end method

.method public final peekInt(ILjava/nio/ByteOrder;)I
    .locals 2

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    iget-boolean v1, p2, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, v1}, Llibcore/io/Memory;->peekInt(IZ)I

    move-result v0

    return v0
.end method

.method public final peekIntArray(I[IIIZ)V
    .locals 1

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->peekIntArray(I[IIIZ)V

    return-void
.end method

.method public final peekLong(ILjava/nio/ByteOrder;)J
    .locals 2

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    iget-boolean v1, p2, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, v1}, Llibcore/io/Memory;->peekLong(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final peekLongArray(I[JIIZ)V
    .locals 1

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->peekLongArray(I[JIIZ)V

    return-void
.end method

.method public final peekShort(ILjava/nio/ByteOrder;)S
    .locals 2

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    iget-boolean v1, p2, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, v1}, Llibcore/io/Memory;->peekShort(IZ)S

    move-result v0

    return v0
.end method

.method public final peekShortArray(I[SIIZ)V
    .locals 1

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->peekShortArray(I[SIIZ)V

    return-void
.end method

.method public final pokeByte(IB)V
    .locals 1

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2}, Llibcore/io/Memory;->pokeByte(IB)V

    return-void
.end method

.method public final pokeByteArray(I[BII)V
    .locals 1

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4}, Llibcore/io/Memory;->pokeByteArray(I[BII)V

    return-void
.end method

.method public final pokeCharArray(I[CIIZ)V
    .locals 1

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->pokeCharArray(I[CIIZ)V

    return-void
.end method

.method public final pokeDoubleArray(I[DIIZ)V
    .locals 1

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->pokeDoubleArray(I[DIIZ)V

    return-void
.end method

.method public final pokeFloatArray(I[FIIZ)V
    .locals 1

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->pokeFloatArray(I[FIIZ)V

    return-void
.end method

.method public final pokeInt(IILjava/nio/ByteOrder;)V
    .locals 2

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    iget-boolean v1, p3, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, p2, v1}, Llibcore/io/Memory;->pokeInt(IIZ)V

    return-void
.end method

.method public final pokeIntArray(I[IIIZ)V
    .locals 1

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->pokeIntArray(I[IIIZ)V

    return-void
.end method

.method public final pokeLong(IJLjava/nio/ByteOrder;)V
    .locals 2

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    iget-boolean v1, p4, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, p2, p3, v1}, Llibcore/io/Memory;->pokeLong(IJZ)V

    return-void
.end method

.method public final pokeLongArray(I[JIIZ)V
    .locals 1

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->pokeLongArray(I[JIIZ)V

    return-void
.end method

.method public final pokeShort(ISLjava/nio/ByteOrder;)V
    .locals 2

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    iget-boolean v1, p3, Ljava/nio/ByteOrder;->needsSwap:Z

    invoke-static {v0, p2, v1}, Llibcore/io/Memory;->pokeShort(ISZ)V

    return-void
.end method

.method public final pokeShortArray(I[SIIZ)V
    .locals 1

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Llibcore/io/Memory;->pokeShortArray(I[SIIZ)V

    return-void
.end method

.method public final toInt()I
    .locals 1

    iget v0, p0, Ljava/nio/MemoryBlock;->address:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/nio/MemoryBlock;->address:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
