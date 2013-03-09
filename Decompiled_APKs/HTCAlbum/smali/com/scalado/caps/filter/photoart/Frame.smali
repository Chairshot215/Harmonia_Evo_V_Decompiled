.class public final Lcom/scalado/caps/filter/photoart/Frame;
.super Lcom/scalado/caps/Filter;
.source "Frame.java"


# instance fields
.field private frameImage:Lcom/scalado/base/Image;

.field private frameStream:Lcom/scalado/stream/Stream;


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "session"
    .parameter "frameDecoder"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 28
    iput-object v1, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameStream:Lcom/scalado/stream/Stream;

    .line 29
    iput-object v1, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameImage:Lcom/scalado/base/Image;

    .line 42
    invoke-direct {p0, p2}, Lcom/scalado/caps/filter/photoart/Frame;->setFrameDecoder(Lcom/scalado/caps/Decoder;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Frame;->setHasActiveFilter(Z)V

    .line 44
    return-void
.end method

.method private beginFrame(Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "decoder"

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, error:I
    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameImage:Lcom/scalado/base/Image;

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameImage:Lcom/scalado/base/Image;

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/filter/photoart/Frame;->nativeInsertFrameFromRaw(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Image;)I

    move-result v0

    .line 92
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 93
    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameStream:Lcom/scalado/stream/Stream;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameStream:Lcom/scalado/stream/Stream;

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/filter/photoart/Frame;->nativeInsertFrame(Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;)I

    move-result v0

    goto :goto_0
.end method

.method private native nativeInsertFrame(Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;)I
.end method

.method private native nativeInsertFrameFromRaw(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Image;)I
.end method

.method private setFrameDecoder(Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "frameDecoder"

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 64
    :cond_0
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    if-eqz v0, :cond_1

    .line 65
    check-cast p1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameStream:Lcom/scalado/stream/Stream;

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Frame;->beginFrame(Lcom/scalado/caps/Decoder;)V

    .line 83
    return-void

    .line 66
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/BmpDecoder;

    if-eqz v0, :cond_2

    .line 67
    check-cast p1, Lcom/scalado/caps/codec/decoder/BmpDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/BmpDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    .line 68
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/GifDecoder;

    if-eqz v0, :cond_3

    .line 69
    check-cast p1, Lcom/scalado/caps/codec/decoder/GifDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/GifDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    .line 70
    .restart local p1
    :cond_3
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/PngDecoder;

    if-eqz v0, :cond_4

    .line 71
    check-cast p1, Lcom/scalado/caps/codec/decoder/PngDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/PngDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    .line 72
    .restart local p1
    :cond_4
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/TiffDecoder;

    if-eqz v0, :cond_5

    .line 73
    check-cast p1, Lcom/scalado/caps/codec/decoder/TiffDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/TiffDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    .line 74
    .restart local p1
    :cond_5
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/WBmpDecoder;

    if-eqz v0, :cond_6

    .line 75
    check-cast p1, Lcom/scalado/caps/codec/decoder/WBmpDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/WBmpDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    .line 76
    .restart local p1
    :cond_6
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    if-eqz v0, :cond_7

    .line 77
    check-cast p1, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/ImageDecoder;->getImage()Lcom/scalado/base/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameImage:Lcom/scalado/base/Image;

    goto :goto_0

    .line 80
    .restart local p1
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 0
    .parameter "decoder"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Frame;->beginFrame(Lcom/scalado/caps/Decoder;)V

    .line 98
    return-void
.end method

.method protected internalCommit()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public set(Lcom/scalado/caps/Decoder;)V
    .locals 0
    .parameter "frameDecoder"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Frame;->setFrameDecoder(Lcom/scalado/caps/Decoder;)V

    .line 58
    return-void
.end method
