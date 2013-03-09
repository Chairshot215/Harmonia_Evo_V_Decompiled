.class public Lcom/scalado/caps/codec/decoder/BmpDecoder;
.super Lcom/scalado/caps/Decoder;
.source "BmpDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/codec/decoder/BmpDecoder$1;,
        Lcom/scalado/caps/codec/decoder/BmpDecoder$BmpDecoderIterator;
    }
.end annotation


# instance fields
.field private stream:Lcom/scalado/stream/Stream;


# direct methods
.method private constructor <init>(Lcom/scalado/stream/Stream;)V
    .locals 2
    .parameter "stream"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/scalado/caps/Decoder;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/scalado/stream/Stream;->isReadable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 53
    :cond_1
    invoke-direct {p0, p1}, Lcom/scalado/caps/codec/decoder/BmpDecoder;->nativeCreate(Lcom/scalado/stream/Stream;)I

    move-result v0

    .line 54
    .local v0, error:I
    iput-object p1, p0, Lcom/scalado/caps/codec/decoder/BmpDecoder;->stream:Lcom/scalado/stream/Stream;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/stream/Stream;Lcom/scalado/caps/codec/decoder/BmpDecoder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/scalado/caps/codec/decoder/BmpDecoder;-><init>(Lcom/scalado/stream/Stream;)V

    return-void
.end method

.method public static create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;
    .locals 1
    .parameter "stream"

    .prologue
    .line 87
    new-instance v0, Lcom/scalado/caps/codec/decoder/BmpDecoder$BmpDecoderIterator;

    invoke-direct {v0, p0}, Lcom/scalado/caps/codec/decoder/BmpDecoder$BmpDecoderIterator;-><init>(Lcom/scalado/stream/Stream;)V

    return-object v0
.end method

.method private native nativeCreate(Lcom/scalado/stream/Stream;)I
.end method


# virtual methods
.method public final getStream()Lcom/scalado/stream/Stream;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/scalado/caps/codec/decoder/BmpDecoder;->stream:Lcom/scalado/stream/Stream;

    return-object v0
.end method

.method public setPrefetchEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/scalado/caps/codec/decoder/BmpDecoder;->doSetPrefetchEnabled(Z)V

    .line 70
    return-void
.end method
