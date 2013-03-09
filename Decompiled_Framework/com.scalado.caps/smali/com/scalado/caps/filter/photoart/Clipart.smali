.class public final Lcom/scalado/caps/filter/photoart/Clipart;
.super Lcom/scalado/caps/Filter;
.source "Clipart.java"


# instance fields
.field private angle:F

.field private clipartSrcImage:Lcom/scalado/base/Image;

.field private clipartSrcStream:Lcom/scalado/stream/Stream;

.field private position:Lcom/scalado/base/Point;

.field private scale:F


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;Lcom/scalado/caps/Decoder;Lcom/scalado/base/Point;FF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    invoke-direct {p0, p2}, Lcom/scalado/caps/filter/photoart/Clipart;->setClipartDecoder(Lcom/scalado/caps/Decoder;)V

    invoke-direct {p0, p3, p4, p5}, Lcom/scalado/caps/filter/photoart/Clipart;->beginClipart(Lcom/scalado/base/Point;FF)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Clipart;->setHasActiveFilter(Z)V

    return-void
.end method

.method private beginClipart(Lcom/scalado/base/Point;FF)V
    .locals 6

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeBeginClipart(Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;Lcom/scalado/base/Point;FF)I

    :goto_0
    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Clipart;->position:Lcom/scalado/base/Point;

    iput p2, p0, Lcom/scalado/caps/filter/photoart/Clipart;->scale:F

    iput p3, p0, Lcom/scalado/caps/filter/photoart/Clipart;->angle:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcImage:Lcom/scalado/base/Image;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeBeginClipartFromRaw(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Image;Lcom/scalado/base/Point;FF)I

    goto :goto_0
.end method

.method private native nativeBeginClipart(Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;Lcom/scalado/base/Point;FF)I
.end method

.method private native nativeBeginClipartFromRaw(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Image;Lcom/scalado/base/Point;FF)I
.end method

.method private native nativeEndClipart()I
.end method

.method private native nativeGetClipartRect(Lcom/scalado/base/Rect;)I
.end method

.method private native nativeSetClipartOrientation(Lcom/scalado/base/Point;FF)I
.end method

.method private setClipartDecoder(Lcom/scalado/caps/Decoder;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcImage:Lcom/scalado/base/Image;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/BmpDecoder;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/scalado/caps/codec/decoder/BmpDecoder;

    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/BmpDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/GifDecoder;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/scalado/caps/codec/decoder/GifDecoder;

    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/GifDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/PngDecoder;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/scalado/caps/codec/decoder/PngDecoder;

    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/PngDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/TiffDecoder;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/scalado/caps/codec/decoder/TiffDecoder;

    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/TiffDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/WBmpDecoder;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/scalado/caps/codec/decoder/WBmpDecoder;

    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/WBmpDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/ImageDecoder;->getImage()Lcom/scalado/base/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcImage:Lcom/scalado/base/Image;

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getPosition()Lcom/scalado/base/Point;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->position:Lcom/scalado/base/Point;

    return-object v0
.end method

.method public getRect()Lcom/scalado/base/Rect;
    .locals 1

    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeGetClipartRect(Lcom/scalado/base/Rect;)I

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->angle:F

    return v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->scale:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 6

    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    iget-object v3, p0, Lcom/scalado/caps/filter/photoart/Clipart;->position:Lcom/scalado/base/Point;

    iget v4, p0, Lcom/scalado/caps/filter/photoart/Clipart;->scale:F

    iget v5, p0, Lcom/scalado/caps/filter/photoart/Clipart;->angle:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeBeginClipart(Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;Lcom/scalado/base/Point;FF)I

    :goto_0
    invoke-direct {p0}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeEndClipart()I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcImage:Lcom/scalado/base/Image;

    iget-object v3, p0, Lcom/scalado/caps/filter/photoart/Clipart;->position:Lcom/scalado/base/Point;

    iget v4, p0, Lcom/scalado/caps/filter/photoart/Clipart;->scale:F

    iget v5, p0, Lcom/scalado/caps/filter/photoart/Clipart;->angle:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeBeginClipartFromRaw(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Image;Lcom/scalado/base/Point;FF)I

    goto :goto_0
.end method

.method protected internalCommit()V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeEndClipart()I

    return-void
.end method

.method public setOrientation(Lcom/scalado/base/Point;FF)V
    .locals 2

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeSetClipartOrientation(Lcom/scalado/base/Point;FF)I

    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Clipart;->position:Lcom/scalado/base/Point;

    iput p2, p0, Lcom/scalado/caps/filter/photoart/Clipart;->scale:F

    iput p3, p0, Lcom/scalado/caps/filter/photoart/Clipart;->angle:F

    return-void
.end method
