.class Ljava/nio/MemoryBlock$MemoryMappedBlock;
.super Ljava/nio/MemoryBlock;
.source "MemoryBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/MemoryBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryMappedBlock"
.end annotation


# direct methods
.method private constructor <init>(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/MemoryBlock;-><init>(IJLjava/nio/MemoryBlock$1;)V

    return-void
.end method

.method synthetic constructor <init>(IJLjava/nio/MemoryBlock$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/nio/MemoryBlock$MemoryMappedBlock;-><init>(IJ)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/MemoryBlock$MemoryMappedBlock;->free()V

    return-void
.end method

.method public free()V
    .locals 6

    iget v1, p0, Ljava/nio/MemoryBlock;->address:I

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget v2, p0, Ljava/nio/MemoryBlock;->address:I

    int-to-long v2, v2

    iget-wide v4, p0, Ljava/nio/MemoryBlock;->size:J

    invoke-interface {v1, v2, v3, v4, v5}, Llibcore/io/Os;->munmap(JJ)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    iput v1, p0, Ljava/nio/MemoryBlock;->address:I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
