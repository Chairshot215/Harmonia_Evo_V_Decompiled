.class public Lcom/scalado/caps/codec/decoder/GifDecoder;
.super Lcom/scalado/caps/Decoder;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/codec/decoder/GifDecoder$1;,
        Lcom/scalado/caps/codec/decoder/GifDecoder$GifDecoderIterator;
    }
.end annotation


# instance fields
.field private displayTime:I

.field private frameCount:I

.field private stream:Lcom/scalado/stream/Stream;

.field private totalDelayTime:I


# direct methods
.method private constructor <init>(Lcom/scalado/stream/Stream;)V
    .locals 2

    invoke-direct {p0}, Lcom/scalado/caps/Decoder;-><init>()V

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
    invoke-direct {p0, p1}, Lcom/scalado/caps/codec/decoder/GifDecoder;->nativeCreate(Lcom/scalado/stream/Stream;)I

    move-result v0

    iput-object p1, p0, Lcom/scalado/caps/codec/decoder/GifDecoder;->stream:Lcom/scalado/stream/Stream;

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/stream/Stream;Lcom/scalado/caps/codec/decoder/GifDecoder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/codec/decoder/GifDecoder;-><init>(Lcom/scalado/stream/Stream;)V

    return-void
.end method

.method public static create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;
    .locals 1

    new-instance v0, Lcom/scalado/caps/codec/decoder/GifDecoder$GifDecoderIterator;

    invoke-direct {v0, p0}, Lcom/scalado/caps/codec/decoder/GifDecoder$GifDecoderIterator;-><init>(Lcom/scalado/stream/Stream;)V

    return-object v0
.end method

.method private native nativeCreate(Lcom/scalado/stream/Stream;)I
.end method

.method private native nativeSetFrame(I)I
.end method


# virtual methods
.method public blendBackgroundColor(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/scalado/caps/Decoder;->blendBackgroundColor(Z)V

    return-void
.end method

.method public getFrameCount()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/codec/decoder/GifDecoder;->frameCount:I

    return v0
.end method

.method public final getStream()Lcom/scalado/stream/Stream;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/codec/decoder/GifDecoder;->stream:Lcom/scalado/stream/Stream;

    return-object v0
.end method

.method public getTotalDelayTime()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/codec/decoder/GifDecoder;->totalDelayTime:I

    return v0
.end method

.method public setFrame(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/scalado/caps/codec/decoder/GifDecoder;->nativeSetFrame(I)I

    move-result v0

    iget v1, p0, Lcom/scalado/caps/codec/decoder/GifDecoder;->displayTime:I

    return v1
.end method
