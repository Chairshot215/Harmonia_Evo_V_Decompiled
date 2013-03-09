.class public Lcom/scalado/caps/speedview/SpmoDecoderProvider;
.super Lcom/scalado/caps/codec/decoder/DecoderProvider;
.source "SpmoDecoderProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/scalado/caps/codec/decoder/DecoderProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkImageType(I)Z
    .locals 1
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 20
    if-ne p1, v0, :cond_0

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
    .line 28
    invoke-static {p1}, Lcom/scalado/caps/speedview/SpmoDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v0

    return-object v0
.end method
