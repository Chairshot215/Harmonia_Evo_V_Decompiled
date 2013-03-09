.class Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;
.super Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;
.source "SpmoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/speedview/SpmoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JpegEncoderRenderIterator2"
.end annotation


# instance fields
.field private copiedBytes:I

.field private copySize:I

.field private decoder:Lcom/scalado/caps/Decoder;

.field private dstDimensions:Lcom/scalado/base/Size;

.field private dstStream:Lcom/scalado/stream/Stream;

.field private intermediateDstStream:Lcom/scalado/stream/BufferStream;

.field private intermediateSrcStream:Lcom/scalado/stream/BufferStream;

.field private isDone:Z

.field private jpegIterator:Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;

.field private transcodeMode:I

.field private transferIntermediate:Z


# direct methods
.method private constructor <init>(Lcom/scalado/base/Size;Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;IZ)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;-><init>(Lcom/scalado/caps/speedview/SpmoEncoder$1;)V

    iput-boolean v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->isDone:Z

    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->jpegIterator:Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;

    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->dstDimensions:Lcom/scalado/base/Size;

    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->decoder:Lcom/scalado/caps/Decoder;

    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->dstStream:Lcom/scalado/stream/Stream;

    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateSrcStream:Lcom/scalado/stream/BufferStream;

    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateDstStream:Lcom/scalado/stream/BufferStream;

    iput-boolean v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->transferIntermediate:Z

    iput v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->copiedBytes:I

    iput v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->copySize:I

    iput-object p1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->dstDimensions:Lcom/scalado/base/Size;

    iput-object p2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->decoder:Lcom/scalado/caps/Decoder;

    iput-object p3, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->dstStream:Lcom/scalado/stream/Stream;

    iput p4, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->transcodeMode:I

    iput-boolean p5, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->transferIntermediate:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/base/Size;Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;IZLcom/scalado/caps/speedview/SpmoEncoder$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;-><init>(Lcom/scalado/base/Size;Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;IZ)V

    return-void
.end method

.method private copyIntermediateStream()F
    .locals 5

    const/high16 v4, 0x3f80

    iget v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->copySize:I

    if-gez v1, :cond_0

    new-instance v1, Lcom/scalado/stream/BufferStream;

    iget-object v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateSrcStream:Lcom/scalado/stream/BufferStream;

    invoke-virtual {v2}, Lcom/scalado/stream/BufferStream;->getBuffer()Lcom/scalado/base/Buffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    iput-object v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateDstStream:Lcom/scalado/stream/BufferStream;

    iget-object v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateDstStream:Lcom/scalado/stream/BufferStream;

    iget-object v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->dstStream:Lcom/scalado/stream/Stream;

    invoke-direct {p0, v1, v2}, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->nativeBeginCopyStreamToStream(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)I

    :cond_0
    iget-object v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateDstStream:Lcom/scalado/stream/BufferStream;

    iget-object v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->dstStream:Lcom/scalado/stream/Stream;

    const/16 v3, 0x6400

    invoke-direct {p0, v1, v2, v3}, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->nativeCopyStreamToStream(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;I)I

    iget v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->copiedBytes:I

    iget v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->copySize:I

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->isDone:Z

    :cond_1
    iget v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->copiedBytes:I

    int-to-float v1, v1

    iget v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->copySize:I

    int-to-float v2, v2

    div-float v0, v1, v2

    cmpg-float v1, v0, v4

    if-gtz v1, :cond_2

    move v1, v0

    :goto_0
    return v1

    :cond_2
    move v1, v4

    goto :goto_0
.end method

.method private native nativeBeginCopyStreamToStream(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)I
.end method

.method private native nativeCopyStreamToStream(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;I)I
.end method

.method private native nativeDestroyResources(Lcom/scalado/stream/BufferStream;Lcom/scalado/base/Buffer;)I
.end method


# virtual methods
.method public abort()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->jpegIterator:Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;

    invoke-virtual {v0}, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;->abort()V

    return-void
.end method

.method protected begin()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->dstStream:Lcom/scalado/stream/Stream;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->transcodeMode:I

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/scalado/stream/BufferStream;

    new-instance v1, Lcom/scalado/base/Buffer;

    const/high16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/scalado/base/Buffer;-><init>(I)V

    invoke-direct {v0, v1, v3}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateSrcStream:Lcom/scalado/stream/BufferStream;

    iput v3, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->copiedBytes:I

    :cond_1
    new-instance v0, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;

    iget-object v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateSrcStream:Lcom/scalado/stream/BufferStream;

    iget-object v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->dstDimensions:Lcom/scalado/base/Size;

    iget-object v3, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->decoder:Lcom/scalado/caps/Decoder;

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;Lcom/scalado/caps/Decoder;)V

    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->jpegIterator:Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;

    return-void
.end method

.method public done()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->isDone:Z

    return v0
.end method

.method protected getDestinationStream()Lcom/scalado/stream/Stream;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateSrcStream:Lcom/scalado/stream/BufferStream;

    return-object v0
.end method

.method protected onSuccessorComplete()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateSrcStream:Lcom/scalado/stream/BufferStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateSrcStream:Lcom/scalado/stream/BufferStream;

    iget-object v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateSrcStream:Lcom/scalado/stream/BufferStream;

    invoke-virtual {v1}, Lcom/scalado/stream/BufferStream;->getBuffer()Lcom/scalado/base/Buffer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->nativeDestroyResources(Lcom/scalado/stream/BufferStream;Lcom/scalado/base/Buffer;)I

    iput-object v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateSrcStream:Lcom/scalado/stream/BufferStream;

    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateDstStream:Lcom/scalado/stream/BufferStream;

    invoke-direct {p0, v0, v2}, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->nativeDestroyResources(Lcom/scalado/stream/BufferStream;Lcom/scalado/base/Buffer;)I

    iput-object v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateDstStream:Lcom/scalado/stream/BufferStream;

    :cond_0
    return-void
.end method

.method protected setSource(Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;)V
    .locals 0

    return-void
.end method

.method protected setSourceStream(Lcom/scalado/stream/Stream;)V
    .locals 0

    return-void
.end method

.method public step()F
    .locals 3

    const/high16 v2, 0x3f80

    iget-object v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateSrcStream:Lcom/scalado/stream/BufferStream;

    if-nez v1, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    iget-object v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->jpegIterator:Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;

    invoke-virtual {v1}, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;->done()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->transferIntermediate:Z

    if-eqz v1, :cond_1

    sub-float v1, v2, v0

    invoke-direct {p0}, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->copyIntermediateStream()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    :goto_1
    return v1

    :cond_0
    const/high16 v0, 0x3f00

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->isDone:Z

    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->jpegIterator:Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;

    invoke-virtual {v1}, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;->step()F

    move-result v1

    mul-float/2addr v1, v0

    goto :goto_1
.end method
