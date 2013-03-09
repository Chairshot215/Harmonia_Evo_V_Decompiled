.class public Lcom/scalado/caps/exif/Session;
.super Lcom/scalado/caps/PeerBase;
.source "Session.java"


# instance fields
.field private byteArray:[B

.field private exifBuffer:Ljava/nio/ByteBuffer;

.field public rawInfo:Lcom/scalado/base/RawThumbnailInfo;

.field private stream:Lcom/scalado/stream/Stream;

.field private thumbnailBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/scalado/stream/Stream;)V
    .locals 1
    .parameter "stream"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/scalado/caps/exif/Session;->thumbnailBuffer:Ljava/nio/ByteBuffer;

    .line 18
    iput-object v0, p0, Lcom/scalado/caps/exif/Session;->exifBuffer:Ljava/nio/ByteBuffer;

    .line 21
    new-instance v0, Lcom/scalado/base/RawThumbnailInfo;

    invoke-direct {v0}, Lcom/scalado/base/RawThumbnailInfo;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/exif/Session;->rawInfo:Lcom/scalado/base/RawThumbnailInfo;

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/scalado/caps/exif/Session;->stream:Lcom/scalado/stream/Stream;

    .line 31
    return-void
.end method

.method private native nativeBufferFromBuffer(Lcom/scalado/base/Buffer;[B)I
.end method

.method private native nativeBufferFromFile(Ljava/lang/String;[B)I
.end method

.method private native nativeGetThumbnailFromBuffer(Lcom/scalado/base/Buffer;[BLcom/scalado/base/RawThumbnailInfo;)I
.end method

.method private native nativeGetThumbnailFromFile(Ljava/lang/String;[BLcom/scalado/base/RawThumbnailInfo;)I
.end method


# virtual methods
.method public getThumbnail()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 40
    iget-object v1, p0, Lcom/scalado/caps/exif/Session;->thumbnailBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_3

    .line 41
    iget-object v1, p0, Lcom/scalado/caps/exif/Session;->stream:Lcom/scalado/stream/Stream;

    instance-of v1, v1, Lcom/scalado/stream/BufferStream;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/scalado/caps/exif/Session;->stream:Lcom/scalado/stream/Stream;

    check-cast v1, Lcom/scalado/stream/BufferStream;

    invoke-virtual {v1}, Lcom/scalado/stream/BufferStream;->getBuffer()Lcom/scalado/base/Buffer;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/caps/exif/Session;->byteArray:[B

    iget-object v3, p0, Lcom/scalado/caps/exif/Session;->rawInfo:Lcom/scalado/base/RawThumbnailInfo;

    invoke-direct {p0, v1, v2, v3}, Lcom/scalado/caps/exif/Session;->nativeGetThumbnailFromBuffer(Lcom/scalado/base/Buffer;[BLcom/scalado/base/RawThumbnailInfo;)I

    move-result v0

    .line 44
    .local v0, res:I
    if-eqz v0, :cond_2

    .line 45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Input does not contain exif data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    .end local v0           #res:I
    :cond_0
    iget-object v1, p0, Lcom/scalado/caps/exif/Session;->stream:Lcom/scalado/stream/Stream;

    instance-of v1, v1, Lcom/scalado/stream/FileStream;

    if-eqz v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/scalado/caps/exif/Session;->stream:Lcom/scalado/stream/Stream;

    check-cast v1, Lcom/scalado/stream/FileStream;

    invoke-virtual {v1}, Lcom/scalado/stream/FileStream;->getFilename()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/caps/exif/Session;->byteArray:[B

    iget-object v3, p0, Lcom/scalado/caps/exif/Session;->rawInfo:Lcom/scalado/base/RawThumbnailInfo;

    invoke-direct {p0, v1, v2, v3}, Lcom/scalado/caps/exif/Session;->nativeGetThumbnailFromFile(Ljava/lang/String;[BLcom/scalado/base/RawThumbnailInfo;)I

    move-result v0

    .line 51
    .restart local v0       #res:I
    if-eqz v0, :cond_2

    .line 52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Input does not contain exif data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    .end local v0           #res:I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Input not a bufferstream or filestream"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    .restart local v0       #res:I
    :cond_2
    iget-object v1, p0, Lcom/scalado/caps/exif/Session;->byteArray:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/caps/exif/Session;->thumbnailBuffer:Ljava/nio/ByteBuffer;

    .line 62
    .end local v0           #res:I
    :cond_3
    iget-object v1, p0, Lcom/scalado/caps/exif/Session;->thumbnailBuffer:Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public toBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/scalado/caps/exif/Session;->exifBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_3

    .line 72
    iget-object v1, p0, Lcom/scalado/caps/exif/Session;->stream:Lcom/scalado/stream/Stream;

    instance-of v1, v1, Lcom/scalado/stream/BufferStream;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/scalado/caps/exif/Session;->stream:Lcom/scalado/stream/Stream;

    check-cast v1, Lcom/scalado/stream/BufferStream;

    invoke-virtual {v1}, Lcom/scalado/stream/BufferStream;->getBuffer()Lcom/scalado/base/Buffer;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/caps/exif/Session;->byteArray:[B

    invoke-direct {p0, v1, v2}, Lcom/scalado/caps/exif/Session;->nativeBufferFromBuffer(Lcom/scalado/base/Buffer;[B)I

    move-result v0

    .line 75
    .local v0, res:I
    if-eqz v0, :cond_2

    .line 76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Input does not contain exif data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    .end local v0           #res:I
    :cond_0
    iget-object v1, p0, Lcom/scalado/caps/exif/Session;->stream:Lcom/scalado/stream/Stream;

    instance-of v1, v1, Lcom/scalado/stream/FileStream;

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/scalado/caps/exif/Session;->stream:Lcom/scalado/stream/Stream;

    check-cast v1, Lcom/scalado/stream/FileStream;

    invoke-virtual {v1}, Lcom/scalado/stream/FileStream;->getFilename()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/caps/exif/Session;->byteArray:[B

    invoke-direct {p0, v1, v2}, Lcom/scalado/caps/exif/Session;->nativeBufferFromFile(Ljava/lang/String;[B)I

    move-result v0

    .line 81
    .restart local v0       #res:I
    if-eqz v0, :cond_2

    .line 82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Input does not contain exif data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    .end local v0           #res:I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Input not a bufferstream or filestream"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    .restart local v0       #res:I
    :cond_2
    iget-object v1, p0, Lcom/scalado/caps/exif/Session;->byteArray:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/caps/exif/Session;->exifBuffer:Ljava/nio/ByteBuffer;

    .line 89
    .end local v0           #res:I
    :cond_3
    iget-object v1, p0, Lcom/scalado/caps/exif/Session;->exifBuffer:Ljava/nio/ByteBuffer;

    return-object v1
.end method
