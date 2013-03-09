.class Lcom/scalado/caps/codec/decoder/PngDecoder$PngDecoderIterator;
.super Lcom/scalado/base/Iterator;
.source "PngDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/codec/decoder/PngDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PngDecoderIterator"
.end annotation


# instance fields
.field private decoder:Lcom/scalado/caps/codec/decoder/PngDecoder;


# direct methods
.method constructor <init>(Lcom/scalado/stream/Stream;)V
    .locals 2
    .parameter "stream"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/scalado/base/Iterator;-><init>()V

    .line 20
    new-instance v0, Lcom/scalado/caps/codec/decoder/PngDecoder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/scalado/caps/codec/decoder/PngDecoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/caps/codec/decoder/PngDecoder$1;)V

    iput-object v0, p0, Lcom/scalado/caps/codec/decoder/PngDecoder$PngDecoderIterator;->decoder:Lcom/scalado/caps/codec/decoder/PngDecoder;

    .line 21
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public done()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/scalado/caps/codec/decoder/PngDecoder$PngDecoderIterator;->decoder:Lcom/scalado/caps/codec/decoder/PngDecoder;

    return-object v0
.end method

.method public step()F
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
