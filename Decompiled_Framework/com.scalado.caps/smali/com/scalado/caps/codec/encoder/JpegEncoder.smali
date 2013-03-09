.class public Lcom/scalado/caps/codec/encoder/JpegEncoder;
.super Lcom/scalado/caps/Encoder;
.source "JpegEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;
    }
.end annotation


# instance fields
.field protected dimensions:Lcom/scalado/base/Size;

.field exifBuffer:Ljava/nio/ByteBuffer;

.field protected outstream:Lcom/scalado/stream/Stream;

.field private properties:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/scalado/caps/Encoder;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->outstream:Lcom/scalado/stream/Stream;

    iput-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->dimensions:Lcom/scalado/base/Size;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->properties:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/scalado/caps/Encoder;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->outstream:Lcom/scalado/stream/Stream;

    iput-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->dimensions:Lcom/scalado/base/Size;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->properties:Ljava/util/Hashtable;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/scalado/stream/Stream;->isWritable()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Outstream not writable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->outstream:Lcom/scalado/stream/Stream;

    iput-object p2, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->dimensions:Lcom/scalado/base/Size;

    return-void
.end method

.method private native nativeSetColorspacing(Lcom/scalado/caps/Decoder;I)V
.end method

.method private native nativeSetExifBuffer(Lcom/scalado/caps/Decoder;Ljava/nio/ByteBuffer;)V
.end method

.method private native nativeSetJpegQuality(Lcom/scalado/caps/Decoder;F)V
.end method


# virtual methods
.method protected applyProperties(Lcom/scalado/caps/codec/encoder/JpegEncoder;Lcom/scalado/caps/Decoder;)V
    .locals 3

    iget-object v1, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->properties:Ljava/util/Hashtable;

    const-string v2, "jpegQuality"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->properties:Ljava/util/Hashtable;

    const-string v2, "jpegQuality"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/scalado/caps/codec/encoder/JpegEncoder;->nativeSetJpegQuality(Lcom/scalado/caps/Decoder;F)V

    :cond_0
    iget-object v1, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->properties:Ljava/util/Hashtable;

    const-string v2, "colorspacing"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->properties:Ljava/util/Hashtable;

    const-string v2, "colorspacing"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/scalado/caps/codec/Colorspacing;

    invoke-virtual {p0}, Lcom/scalado/caps/codec/Colorspacing;->value()I

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/scalado/caps/codec/encoder/JpegEncoder;->nativeSetColorspacing(Lcom/scalado/caps/Decoder;I)V

    :cond_1
    return-void
.end method

.method protected render(Lcom/scalado/caps/Session;)Lcom/scalado/base/Iterator;
    .locals 4

    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lcom/scalado/caps/codec/encoder/JpegEncoder;->applyProperties(Lcom/scalado/caps/codec/encoder/JpegEncoder;Lcom/scalado/caps/Decoder;)V

    new-instance v1, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;

    iget-object v2, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->outstream:Lcom/scalado/stream/Stream;

    iget-object v3, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->dimensions:Lcom/scalado/base/Size;

    invoke-direct {v1, v2, v3, v0}, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;Lcom/scalado/caps/Decoder;)V

    return-object v1
.end method

.method public setColorspacing(Lcom/scalado/caps/codec/Colorspacing;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Colorspcaing must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->properties:Ljava/util/Hashtable;

    const-string v1, "colorspacing"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExifBuffer(Ljava/nio/ByteBuffer;Lcom/scalado/caps/Decoder;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Exif buffer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Decoder must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->exifBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->exifBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->exifBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :goto_0
    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->exifBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p2, v0}, Lcom/scalado/caps/codec/encoder/JpegEncoder;->nativeSetExifBuffer(Lcom/scalado/caps/Decoder;Ljava/nio/ByteBuffer;)V

    return-void

    :cond_2
    iput-object p1, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->exifBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public setJpegQuality(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->properties:Ljava/util/Hashtable;

    const-string v1, "jpegQuality"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
