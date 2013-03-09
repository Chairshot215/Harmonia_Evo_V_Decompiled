.class public Lcom/scalado/caps/codec/decoder/PngDecoderProvider;
.super Lcom/scalado/caps/codec/decoder/DecoderProvider;
.source "PngDecoderProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/scalado/caps/codec/decoder/DecoderProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkImageType(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 18
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;
    .locals 1
    .parameter "stream"

    .prologue
    .line 14
    invoke-static {p1}, Lcom/scalado/caps/codec/decoder/PngDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v0

    return-object v0
.end method
