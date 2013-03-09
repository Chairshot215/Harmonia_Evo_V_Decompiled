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
    .parameter "dstDimensions"
    .parameter "decoder"
    .parameter "dstStream"
    .parameter "transcodeMode"
    .parameter "transferIntermediate"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, v0}, Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;-><init>(Lcom/scalado/caps/speedview/SpmoEncoder$1;)V

    .line 134
    iput-boolean v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->isDone:Z

    .line 135
    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->jpegIterator:Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;

    .line 136
    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->dstDimensions:Lcom/scalado/base/Size;

    .line 137
    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->decoder:Lcom/scalado/caps/Decoder;

    .line 138
    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->dstStream:Lcom/scalado/stream/Stream;

    .line 139
    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateSrcStream:Lcom/scalado/stream/BufferStream;

    .line 140
    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateDstStream:Lcom/scalado/stream/BufferStream;

    .line 142
    iput-boolean v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->transferIntermediate:Z

    .line 143
    iput v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->copiedBytes:I

    .line 144
    iput v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->copySize:I

    .line 149
    iput-object p1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->dstDimensions:Lcom/scalado/base/Size;

    .line 150
    iput-object p2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->decoder:Lcom/scalado/caps/Decoder;

    .line 151
    iput-object p3, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->dstStream:Lcom/scalado/stream/Stream;

    .line 152
    iput p4, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->transcodeMode:I

    .line 153
    iput-boolean p5, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->transferIntermediate:Z

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/base/Size;Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;IZLcom/scalado/caps/speedview/SpmoEncoder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 133
    invoke-direct/range {p0 .. p5}, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;-><init>(Lcom/scalado/base/Size;Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;IZ)V

    return-void
.end method

.method private copyIntermediateStream()F
    .locals 5

    .prologue
    const/high16 v1, 0x3f80

    .line 222
    iget v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->copySize:I

    if-gez v2, :cond_0

    .line 225
    new-instance v2, Lcom/scalado/stream/BufferStream;

    iget-object v3, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateSrcStream:Lcom/scalado/stream/BufferStream;

    invoke-virtual {v3}, Lcom/scalado/stream/BufferStream;->getBuffer()Lcom/scalado/base/Buffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    iput-object v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateDstStream:Lcom/scalado/stream/BufferStream;

    .line 227
    iget-object v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateDstStream:Lcom/scalado/stream/BufferStream;

    iget-object v3, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->dstStream:Lcom/scalado/stream/Stream;

    invoke-direct {p0, v2, v3}, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->nativeBeginCopyStreamToStream(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)I

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateDstStream:Lcom/scalado/stream/BufferStream;

    iget-object v3, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->dstStream:Lcom/scalado/stream/Stream;

    const/16 v4, 0x6400

    invoke-direct {p0, v2, v3, v4}, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->nativeCopyStreamToStream(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;I)I

    .line 232
    iget v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->copiedBytes:I

    iget v3, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->copySize:I

    if-lt v2, v3, :cond_1

    .line 233
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->isDone:Z

    .line 235
    :cond_1
    iget v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->copiedBytes:I

    int-to-float v2, v2

    iget v3, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->copySize:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 236
    .local v0, progress:F
    cmpg-float v2, v0, v1

    if-gtz v2, :cond_2

    .end local v0           #progress:F
    :goto_0
    return v0

    .restart local v0       #progress:F
    :cond_2
    move v0, v1

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

    .prologue
    .line 218
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->jpegIterator:Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;

    invoke-virtual {v0}, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;->abort()V

    .line 219
    return-void
.end method

.method protected begin()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->dstStream:Lcom/scalado/stream/Stream;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->transcodeMode:I

    if-nez v0, :cond_1

    .line 162
    :cond_0
    new-instance v0, Lcom/scalado/stream/BufferStream;

    new-instance v1, Lcom/scalado/base/Buffer;

    const/high16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/scalado/base/Buffer;-><init>(I)V

    invoke-direct {v0, v1, v3}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateSrcStream:Lcom/scalado/stream/BufferStream;

    .line 164
    iput v3, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->copiedBytes:I

    .line 166
    :cond_1
    new-instance v0, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;

    iget-object v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateSrcStream:Lcom/scalado/stream/BufferStream;

    iget-object v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->dstDimensions:Lcom/scalado/base/Size;

    iget-object v3, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->decoder:Lcom/scalado/caps/Decoder;

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;Lcom/scalado/caps/Decoder;)V

    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->jpegIterator:Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;

    .line 169
    return-void
.end method

.method public done()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->isDone:Z

    return v0
.end method

.method protected getDestinationStream()Lcom/scalado/stream/Stream;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateSrcStream:Lcom/scalado/stream/BufferStream;

    return-object v0
.end method

.method protected onSuccessorComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateSrcStream:Lcom/scalado/stream/BufferStream;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateSrcStream:Lcom/scalado/stream/BufferStream;

    iget-object v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateSrcStream:Lcom/scalado/stream/BufferStream;

    invoke-virtual {v1}, Lcom/scalado/stream/BufferStream;->getBuffer()Lcom/scalado/base/Buffer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->nativeDestroyResources(Lcom/scalado/stream/BufferStream;Lcom/scalado/base/Buffer;)I

    .line 183
    iput-object v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateSrcStream:Lcom/scalado/stream/BufferStream;

    .line 184
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateDstStream:Lcom/scalado/stream/BufferStream;

    invoke-direct {p0, v0, v2}, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->nativeDestroyResources(Lcom/scalado/stream/BufferStream;Lcom/scalado/base/Buffer;)I

    .line 185
    iput-object v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateDstStream:Lcom/scalado/stream/BufferStream;

    .line 187
    :cond_0
    return-void
.end method

.method protected setSource(Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 177
    return-void
.end method

.method protected setSourceStream(Lcom/scalado/stream/Stream;)V
    .locals 0
    .parameter "srcStream"

    .prologue
    .line 173
    return-void
.end method

.method public step()F
    .locals 3

    .prologue
    const/high16 v1, 0x3f80

    .line 195
    iget-object v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->intermediateSrcStream:Lcom/scalado/stream/BufferStream;

    if-nez v2, :cond_0

    .line 196
    const/high16 v0, 0x3f80

    .line 200
    .local v0, baseProg:F
    :goto_0
    iget-object v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->jpegIterator:Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;

    invoke-virtual {v2}, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;->done()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 201
    iget-boolean v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->transferIntermediate:Z

    if-eqz v2, :cond_1

    .line 202
    sub-float/2addr v1, v0

    invoke-direct {p0}, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->copyIntermediateStream()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 209
    :goto_1
    return v1

    .line 198
    .end local v0           #baseProg:F
    :cond_0
    const/high16 v0, 0x3f00

    .restart local v0       #baseProg:F
    goto :goto_0

    .line 205
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->isDone:Z

    goto :goto_1

    .line 209
    :cond_2
    iget-object v1, p0, Lcom/scalado/caps/speedview/SpmoEncoder$JpegEncoderRenderIterator2;->jpegIterator:Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;

    invoke-virtual {v1}, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;->step()F

    move-result v1

    mul-float/2addr v1, v0

    goto :goto_1
.end method
