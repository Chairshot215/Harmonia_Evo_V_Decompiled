.class public Lcom/scalado/caps/codec/decoder/JpegDecoder;
.super Lcom/scalado/caps/Decoder;
.source "JpegDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/codec/decoder/JpegDecoder$1;,
        Lcom/scalado/caps/codec/decoder/JpegDecoder$JpegDecoderIterator;,
        Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;
    }
.end annotation


# instance fields
.field protected stream:Lcom/scalado/stream/Stream;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/scalado/caps/Decoder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/scalado/stream/Stream;)V
    .locals 2
    .parameter "stream"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/scalado/caps/Decoder;-><init>()V

    .line 82
    if-nez p1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 87
    :cond_0
    invoke-virtual {p1}, Lcom/scalado/stream/Stream;->isReadable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 92
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->nativeCreate(Lcom/scalado/stream/Stream;I)I

    move-result v0

    .line 93
    .local v0, error:I
    iput-object p1, p0, Lcom/scalado/caps/codec/decoder/JpegDecoder;->stream:Lcom/scalado/stream/Stream;

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/stream/Stream;Lcom/scalado/caps/codec/decoder/JpegDecoder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;-><init>(Lcom/scalado/stream/Stream;)V

    return-void
.end method

.method public static create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;
    .locals 1
    .parameter "stream"

    .prologue
    .line 111
    new-instance v0, Lcom/scalado/caps/codec/decoder/JpegDecoder$JpegDecoderIterator;

    invoke-direct {v0, p0}, Lcom/scalado/caps/codec/decoder/JpegDecoder$JpegDecoderIterator;-><init>(Lcom/scalado/stream/Stream;)V

    return-object v0
.end method

.method private native nativeSetDecodeMode(I)I
.end method

.method private native nativeSetRajpegCacheSize(I)I
.end method


# virtual methods
.method public final getStream()Lcom/scalado/stream/Stream;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/scalado/caps/codec/decoder/JpegDecoder;->stream:Lcom/scalado/stream/Stream;

    return-object v0
.end method

.method protected native nativeCreate(Lcom/scalado/stream/Stream;I)I
.end method

.method protected native nativeGetLeftImageH()I
.end method

.method protected native nativeGetLeftImageW()I
.end method

.method protected native nativeGetLeftImageX()I
.end method

.method protected native nativeGetLeftImageY()I
.end method

.method protected native nativeGetRightImageH()I
.end method

.method protected native nativeGetRightImageW()I
.end method

.method protected native nativeGetRightImageX()I
.end method

.method protected native nativeGetRightImageY()I
.end method

.method public final setDecodeMode(Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 135
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mode must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_0
    iget v1, p1, Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;->value:I

    invoke-direct {p0, v1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->nativeSetDecodeMode(I)I

    move-result v0

    .line 139
    .local v0, error:I
    invoke-virtual {p0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->markChanged()V

    .line 140
    return-void
.end method

.method public setPrefetchEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->doSetPrefetchEnabled(Z)V

    .line 174
    return-void
.end method

.method public final setRajpegCacheSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 153
    if-ltz p1, :cond_0

    const v1, 0x3ffffff

    if-le p1, v1, :cond_1

    .line 155
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 158
    :cond_1
    div-int/lit16 v1, p1, 0x400

    invoke-direct {p0, v1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->nativeSetRajpegCacheSize(I)I

    move-result v0

    .line 159
    .local v0, error:I
    invoke-virtual {p0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->markChanged()V

    .line 160
    return-void
.end method
