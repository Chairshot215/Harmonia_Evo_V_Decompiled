.class public final Ljava/nio/NioUtils;
.super Ljava/lang/Object;
.source "NioUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static freeDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v0, p0, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/nio/DirectByteBuffer;

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->free()V

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/nio/MappedByteBufferAdapter;

    invoke-virtual {p0}, Ljava/nio/MappedByteBufferAdapter;->free()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getDirectBufferAddress(Ljava/nio/Buffer;)I
    .locals 1

    iget v0, p0, Ljava/nio/Buffer;->effectiveDirectAddress:I

    return v0
.end method

.method public static getFD(Ljava/nio/channels/FileChannel;)Ljava/io/FileDescriptor;
    .locals 1

    check-cast p0, Ljava/nio/FileChannelImpl;

    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newFileChannel(Ljava/lang/Object;Ljava/io/FileDescriptor;I)Ljava/nio/channels/FileChannel;
    .locals 1

    new-instance v0, Ljava/nio/FileChannelImpl;

    invoke-direct {v0, p0, p1, p2}, Ljava/nio/FileChannelImpl;-><init>(Ljava/lang/Object;Ljava/io/FileDescriptor;I)V

    return-object v0
.end method

.method public static unsafeArray(Ljava/nio/ByteBuffer;)[B
    .locals 1

    check-cast p0, Ljava/nio/HeapByteBuffer;

    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    return-object v0
.end method

.method public static unsafeArrayOffset(Ljava/nio/ByteBuffer;)I
    .locals 1

    check-cast p0, Ljava/nio/HeapByteBuffer;

    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    return v0
.end method
