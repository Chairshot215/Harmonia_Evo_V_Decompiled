.class public Lcom/scalado/caps/codec/decoder/JpsDecoder;
.super Lcom/scalado/caps/codec/decoder/JpegDecoder;
.source "JpsDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/codec/decoder/JpsDecoder$1;,
        Lcom/scalado/caps/codec/decoder/JpsDecoder$JpsDecoderIterator;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/scalado/stream/Stream;)V
    .locals 2

    invoke-direct {p0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;-><init>()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p1}, Lcom/scalado/stream/Stream;->isReadable()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    const/4 v1, 0x2

    invoke-super {p0, p1, v1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->nativeCreate(Lcom/scalado/stream/Stream;I)I

    move-result v0

    iput-object p1, p0, Lcom/scalado/caps/codec/decoder/JpegDecoder;->stream:Lcom/scalado/stream/Stream;

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/stream/Stream;Lcom/scalado/caps/codec/decoder/JpsDecoder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/codec/decoder/JpsDecoder;-><init>(Lcom/scalado/stream/Stream;)V

    return-void
.end method

.method public static create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;
    .locals 1

    new-instance v0, Lcom/scalado/caps/codec/decoder/JpsDecoder$JpsDecoderIterator;

    invoke-direct {v0, p0}, Lcom/scalado/caps/codec/decoder/JpsDecoder$JpsDecoderIterator;-><init>(Lcom/scalado/stream/Stream;)V

    return-object v0
.end method


# virtual methods
.method public getLeftImageArea()Lcom/scalado/base/Rect;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/scalado/base/Rect;-><init>(IIII)V

    invoke-super {p0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->nativeGetLeftImageX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/scalado/base/Rect;->setX(I)V

    invoke-super {p0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->nativeGetLeftImageY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/scalado/base/Rect;->setY(I)V

    invoke-super {p0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->nativeGetLeftImageW()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/scalado/base/Rect;->setWidth(I)V

    invoke-super {p0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->nativeGetLeftImageH()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/scalado/base/Rect;->setHeight(I)V

    return-object v0
.end method

.method public getRightImageArea()Lcom/scalado/base/Rect;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/scalado/base/Rect;-><init>(IIII)V

    invoke-super {p0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->nativeGetRightImageX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/scalado/base/Rect;->setX(I)V

    invoke-super {p0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->nativeGetRightImageY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/scalado/base/Rect;->setY(I)V

    invoke-super {p0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->nativeGetRightImageW()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/scalado/base/Rect;->setWidth(I)V

    invoke-super {p0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->nativeGetRightImageH()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/scalado/base/Rect;->setHeight(I)V

    return-object v0
.end method
