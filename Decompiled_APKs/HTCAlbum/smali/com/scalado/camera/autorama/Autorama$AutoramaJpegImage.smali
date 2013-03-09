.class Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;
.super Lcom/scalado/camera/autorama/Autorama$AutoramaImage;
.source "Autorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama/Autorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoramaJpegImage"
.end annotation


# instance fields
.field private mDimensions:Lcom/scalado/base/Size;

.field private mJpegImage:Lcom/scalado/base/Buffer;

.field private mTransform:Lcom/scalado/caps/autorama/Transform;

.field final synthetic this$0:Lcom/scalado/camera/autorama/Autorama;


# direct methods
.method public constructor <init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/caps/autorama/Transform;)V
    .locals 1
    .parameter
    .parameter "jpegImage"
    .parameter "dimensions"
    .parameter "transform"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;->this$0:Lcom/scalado/camera/autorama/Autorama;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$1;)V

    .line 164
    iput-object p2, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;->mJpegImage:Lcom/scalado/base/Buffer;

    .line 165
    iput-object p3, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;->mDimensions:Lcom/scalado/base/Size;

    .line 166
    iput-object p4, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;->mTransform:Lcom/scalado/caps/autorama/Transform;

    .line 167
    return-void
.end method


# virtual methods
.method public addToStitcher(Lcom/scalado/caps/autorama/Stitcher;)V
    .locals 2
    .parameter "stitcher"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;->mJpegImage:Lcom/scalado/base/Buffer;

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;->mTransform:Lcom/scalado/caps/autorama/Transform;

    invoke-virtual {p1, v0, v1}, Lcom/scalado/caps/autorama/Stitcher;->addJpegBuffer(Lcom/scalado/base/Buffer;Lcom/scalado/caps/autorama/Transform;)V

    .line 187
    return-void
.end method

.method public getDecoder()Lcom/scalado/caps/Decoder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 171
    new-instance v3, Lcom/scalado/stream/BufferStream;

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;->mJpegImage:Lcom/scalado/base/Buffer;

    invoke-direct {v3, v4, v5}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 172
    .local v3, stream:Lcom/scalado/stream/BufferStream;
    invoke-static {v3}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v2

    .line 175
    .local v2, iterator:Lcom/scalado/base/Iterator;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v4}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    invoke-virtual {v2}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 181
    .local v0, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    return-object v0

    .line 176
    .end local v0           #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    :catch_0
    move-exception v1

    .line 177
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Decoding of Jpeg failed!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getDimensions()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;->mDimensions:Lcom/scalado/base/Size;

    return-object v0
.end method
