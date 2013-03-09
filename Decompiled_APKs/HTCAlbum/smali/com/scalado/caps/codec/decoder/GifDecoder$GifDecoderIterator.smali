.class Lcom/scalado/caps/codec/decoder/GifDecoder$GifDecoderIterator;
.super Lcom/scalado/base/Iterator;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/codec/decoder/GifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifDecoderIterator"
.end annotation


# instance fields
.field private decoder:Lcom/scalado/caps/codec/decoder/GifDecoder;


# direct methods
.method constructor <init>(Lcom/scalado/stream/Stream;)V
    .locals 2
    .parameter "stream"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/scalado/base/Iterator;-><init>()V

    .line 49
    new-instance v0, Lcom/scalado/caps/codec/decoder/GifDecoder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/scalado/caps/codec/decoder/GifDecoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/caps/codec/decoder/GifDecoder$1;)V

    iput-object v0, p0, Lcom/scalado/caps/codec/decoder/GifDecoder$GifDecoderIterator;->decoder:Lcom/scalado/caps/codec/decoder/GifDecoder;

    .line 50
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public done()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/scalado/caps/codec/decoder/GifDecoder$GifDecoderIterator;->decoder:Lcom/scalado/caps/codec/decoder/GifDecoder;

    return-object v0
.end method

.method public step()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-direct {v0}, Ljava/lang/IllegalAccessException;-><init>()V

    throw v0
.end method
