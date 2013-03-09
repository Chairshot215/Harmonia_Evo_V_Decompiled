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

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Lcom/scalado/caps/Encoder;-><init>()V

    .line 89
    iput-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->outstream:Lcom/scalado/stream/Stream;

    .line 90
    iput-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->dimensions:Lcom/scalado/base/Size;

    .line 91
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->properties:Ljava/util/Hashtable;

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V
    .locals 2
    .parameter "dstStream"
    .parameter "dimensions"

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Lcom/scalado/caps/Encoder;-><init>()V

    .line 89
    iput-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->outstream:Lcom/scalado/stream/Stream;

    .line 90
    iput-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->dimensions:Lcom/scalado/base/Size;

    .line 91
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->properties:Ljava/util/Hashtable;

    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 108
    :cond_0
    if-nez p2, :cond_1

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/scalado/stream/Stream;->isWritable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Outstream not writable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_2
    iput-object p1, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->outstream:Lcom/scalado/stream/Stream;

    .line 117
    iput-object p2, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->dimensions:Lcom/scalado/base/Size;

    .line 118
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
    .parameter "encoder"
    .parameter "decoder"

    .prologue
    .line 195
    iget-object v1, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->properties:Ljava/util/Hashtable;

    const-string v2, "jpegQuality"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->properties:Ljava/util/Hashtable;

    const-string v2, "jpegQuality"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 197
    .local v0, value:F
    invoke-direct {p1, p2, v0}, Lcom/scalado/caps/codec/encoder/JpegEncoder;->nativeSetJpegQuality(Lcom/scalado/caps/Decoder;F)V

    .line 200
    .end local v0           #value:F
    :cond_0
    iget-object v1, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->properties:Ljava/util/Hashtable;

    const-string v2, "colorspacing"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->properties:Ljava/util/Hashtable;

    const-string v2, "colorspacing"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/codec/Colorspacing;

    invoke-virtual {v1}, Lcom/scalado/caps/codec/Colorspacing;->value()I

    move-result v0

    .line 202
    .local v0, value:I
    invoke-direct {p1, p2, v0}, Lcom/scalado/caps/codec/encoder/JpegEncoder;->nativeSetColorspacing(Lcom/scalado/caps/Decoder;I)V

    .line 204
    .end local v0           #value:I
    :cond_1
    return-void
.end method

.method protected render(Lcom/scalado/caps/Session;)Lcom/scalado/base/Iterator;
    .locals 4
    .parameter "session"

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    .line 189
    .local v0, decoder:Lcom/scalado/caps/Decoder;
    invoke-virtual {p0, p0, v0}, Lcom/scalado/caps/codec/encoder/JpegEncoder;->applyProperties(Lcom/scalado/caps/codec/encoder/JpegEncoder;Lcom/scalado/caps/Decoder;)V

    .line 190
    new-instance v1, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;

    iget-object v2, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->outstream:Lcom/scalado/stream/Stream;

    iget-object v3, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->dimensions:Lcom/scalado/base/Size;

    invoke-direct {v1, v2, v3, v0}, Lcom/scalado/caps/codec/encoder/JpegEncoder$JpegEncoderRenderIterator;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;Lcom/scalado/caps/Decoder;)V

    return-object v1
.end method

.method public setColorspacing(Lcom/scalado/caps/codec/Colorspacing;)V
    .locals 2
    .parameter "colorspacing"

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Colorspcaing must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->properties:Ljava/util/Hashtable;

    const-string v1, "colorspacing"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public setExifBuffer(Ljava/nio/ByteBuffer;Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "exifByteBuffer"
    .parameter "decoder"

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 170
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Exif buffer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    if-nez p2, :cond_1

    .line 173
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Decoder must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->exifBuffer:Ljava/nio/ByteBuffer;

    .line 177
    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->exifBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 178
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 179
    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->exifBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->exifBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p2, v0}, Lcom/scalado/caps/codec/encoder/JpegEncoder;->nativeSetExifBuffer(Lcom/scalado/caps/Decoder;Ljava/nio/ByteBuffer;)V

    .line 184
    return-void

    .line 181
    :cond_2
    iput-object p1, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->exifBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public setJpegQuality(F)V
    .locals 3
    .parameter "quality"

    .prologue
    .line 135
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/JpegEncoder;->properties:Ljava/util/Hashtable;

    const-string v1, "jpegQuality"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method
