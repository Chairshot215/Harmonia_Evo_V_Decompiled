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
    .parameter "session"
    .parameter "clipartSrcDecoder"
    .parameter "position"
    .parameter "scale"
    .parameter "angle"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 55
    invoke-direct {p0, p2}, Lcom/scalado/caps/filter/photoart/Clipart;->setClipartDecoder(Lcom/scalado/caps/Decoder;)V

    .line 56
    invoke-direct {p0, p3, p4, p5}, Lcom/scalado/caps/filter/photoart/Clipart;->beginClipart(Lcom/scalado/base/Point;FF)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Clipart;->setHasActiveFilter(Z)V

    .line 58
    return-void
.end method

.method private beginClipart(Lcom/scalado/base/Point;FF)V
    .locals 6
    .parameter "position"
    .parameter "scale"
    .parameter "angle"

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    if-nez p1, :cond_1

    .line 163
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeBeginClipart(Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;Lcom/scalado/base/Point;FF)I

    .line 172
    :goto_0
    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Clipart;->position:Lcom/scalado/base/Point;

    .line 173
    iput p2, p0, Lcom/scalado/caps/filter/photoart/Clipart;->scale:F

    .line 174
    iput p3, p0, Lcom/scalado/caps/filter/photoart/Clipart;->angle:F

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 176
    return-void

    .line 169
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
    .parameter "clipartSrcDecoder"

    .prologue
    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    .line 127
    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcImage:Lcom/scalado/base/Image;

    .line 128
    if-nez p1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 131
    :cond_0
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    if-eqz v0, :cond_1

    .line 132
    check-cast p1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    .line 156
    :goto_0
    return-void

    .line 134
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/BmpDecoder;

    if-eqz v0, :cond_2

    .line 135
    check-cast p1, Lcom/scalado/caps/codec/decoder/BmpDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/BmpDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    .line 137
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/GifDecoder;

    if-eqz v0, :cond_3

    .line 138
    check-cast p1, Lcom/scalado/caps/codec/decoder/GifDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/GifDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    .line 140
    .restart local p1
    :cond_3
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/PngDecoder;

    if-eqz v0, :cond_4

    .line 141
    check-cast p1, Lcom/scalado/caps/codec/decoder/PngDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/PngDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    .line 143
    .restart local p1
    :cond_4
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/TiffDecoder;

    if-eqz v0, :cond_5

    .line 144
    check-cast p1, Lcom/scalado/caps/codec/decoder/TiffDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/TiffDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    .line 146
    .restart local p1
    :cond_5
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/WBmpDecoder;

    if-eqz v0, :cond_6

    .line 147
    check-cast p1, Lcom/scalado/caps/codec/decoder/WBmpDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/WBmpDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    .line 149
    .restart local p1
    :cond_6
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    if-eqz v0, :cond_7

    .line 150
    check-cast p1, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/ImageDecoder;->getImage()Lcom/scalado/base/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcImage:Lcom/scalado/base/Image;

    goto :goto_0

    .line 154
    .restart local p1
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getPosition()Lcom/scalado/base/Point;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->position:Lcom/scalado/base/Point;

    return-object v0
.end method

.method public getRect()Lcom/scalado/base/Rect;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 121
    .local v0, rect:Lcom/scalado/base/Rect;
    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeGetClipartRect(Lcom/scalado/base/Rect;)I

    .line 122
    return-object v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->angle:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->scale:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 6
    .parameter "decoder"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    if-eqz v0, :cond_0

    .line 181
    iget-object v2, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    iget-object v3, p0, Lcom/scalado/caps/filter/photoart/Clipart;->position:Lcom/scalado/base/Point;

    iget v4, p0, Lcom/scalado/caps/filter/photoart/Clipart;->scale:F

    iget v5, p0, Lcom/scalado/caps/filter/photoart/Clipart;->angle:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeBeginClipart(Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;Lcom/scalado/base/Point;FF)I

    .line 187
    :goto_0
    invoke-direct {p0}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeEndClipart()I

    .line 188
    return-void

    .line 184
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

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeEndClipart()I

    .line 193
    return-void
.end method

.method public setOrientation(Lcom/scalado/base/Point;FF)V
    .locals 2
    .parameter "position"
    .parameter "scale"
    .parameter "angle"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    if-nez p1, :cond_1

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 80
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeSetClipartOrientation(Lcom/scalado/base/Point;FF)I

    .line 81
    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Clipart;->position:Lcom/scalado/base/Point;

    .line 82
    iput p2, p0, Lcom/scalado/caps/filter/photoart/Clipart;->scale:F

    .line 83
    iput p3, p0, Lcom/scalado/caps/filter/photoart/Clipart;->angle:F

    .line 84
    return-void
.end method
