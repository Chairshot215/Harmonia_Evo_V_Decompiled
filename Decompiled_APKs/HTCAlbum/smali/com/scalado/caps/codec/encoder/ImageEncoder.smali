.class public Lcom/scalado/caps/codec/encoder/ImageEncoder;
.super Lcom/scalado/caps/Encoder;
.source "ImageEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;,
        Lcom/scalado/caps/codec/encoder/ImageEncoder$ImageEncoderRenderIterator;
    }
.end annotation


# instance fields
.field private image:Lcom/scalado/base/Image;

.field private mOption:Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;


# direct methods
.method public constructor <init>(Lcom/scalado/base/Image;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 82
    sget-object v0, Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;->STRETCH:Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/scalado/base/Image;Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;)V
    .locals 1
    .parameter "image"
    .parameter "options"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/scalado/caps/Encoder;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/codec/encoder/ImageEncoder;->image:Lcom/scalado/base/Image;

    .line 72
    sget-object v0, Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;->STRETCH:Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;

    iput-object v0, p0, Lcom/scalado/caps/codec/encoder/ImageEncoder;->mOption:Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;

    .line 101
    if-nez p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/scalado/caps/codec/encoder/ImageEncoder;->image:Lcom/scalado/base/Image;

    .line 106
    iput-object p2, p0, Lcom/scalado/caps/codec/encoder/ImageEncoder;->mOption:Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;

    .line 107
    return-void
.end method


# virtual methods
.method protected final render(Lcom/scalado/caps/Session;)Lcom/scalado/base/Iterator;
    .locals 4
    .parameter "session"

    .prologue
    .line 110
    new-instance v0, Lcom/scalado/caps/codec/encoder/ImageEncoder$ImageEncoderRenderIterator;

    iget-object v1, p0, Lcom/scalado/caps/codec/encoder/ImageEncoder;->image:Lcom/scalado/base/Image;

    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/caps/codec/encoder/ImageEncoder;->mOption:Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/scalado/caps/codec/encoder/ImageEncoder$ImageEncoderRenderIterator;-><init>(Lcom/scalado/caps/codec/encoder/ImageEncoder;Lcom/scalado/base/Image;Lcom/scalado/caps/Decoder;Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;)V

    return-object v0
.end method
