.class Lcom/scalado/caps/codec/decoder/JpegDecoder$JpegDecoderIterator;
.super Lcom/scalado/base/Iterator;
.source "JpegDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/codec/decoder/JpegDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JpegDecoderIterator"
.end annotation


# instance fields
.field private decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;


# direct methods
.method constructor <init>(Lcom/scalado/stream/Stream;)V
    .locals 2
    .parameter "stream"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/scalado/base/Iterator;-><init>()V

    .line 55
    new-instance v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/caps/codec/decoder/JpegDecoder$1;)V

    iput-object v0, p0, Lcom/scalado/caps/codec/decoder/JpegDecoder$JpegDecoderIterator;->decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 56
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public done()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/scalado/caps/codec/decoder/JpegDecoder$JpegDecoderIterator;->decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

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
    .line 64
    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-direct {v0}, Ljava/lang/IllegalAccessException;-><init>()V

    throw v0
.end method
