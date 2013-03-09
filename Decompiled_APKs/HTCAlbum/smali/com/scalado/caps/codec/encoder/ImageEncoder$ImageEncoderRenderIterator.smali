.class Lcom/scalado/caps/codec/encoder/ImageEncoder$ImageEncoderRenderIterator;
.super Lcom/scalado/base/Iterator;
.source "ImageEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/codec/encoder/ImageEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageEncoderRenderIterator"
.end annotation


# instance fields
.field private commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

.field private decoder:Lcom/scalado/caps/Decoder;

.field private image:Lcom/scalado/base/Image;

.field final synthetic this$0:Lcom/scalado/caps/codec/encoder/ImageEncoder;


# direct methods
.method constructor <init>(Lcom/scalado/caps/codec/encoder/ImageEncoder;Lcom/scalado/base/Image;Lcom/scalado/caps/Decoder;Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;)V
    .locals 1
    .parameter
    .parameter "image"
    .parameter "decoder"
    .parameter "options"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/scalado/caps/codec/encoder/ImageEncoder$ImageEncoderRenderIterator;->this$0:Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {p0}, Lcom/scalado/base/Iterator;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/scalado/caps/codec/encoder/ImageEncoder$ImageEncoderRenderIterator;->image:Lcom/scalado/base/Image;

    .line 44
    iput-object p3, p0, Lcom/scalado/caps/codec/encoder/ImageEncoder$ImageEncoderRenderIterator;->decoder:Lcom/scalado/caps/Decoder;

    .line 46
    #calls: Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;->getOption()I
    invoke-static {p4}, Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;->access$000(Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;)I

    move-result v0

    invoke-virtual {p0, p2, p3, v0}, Lcom/scalado/caps/codec/encoder/ImageEncoder$ImageEncoderRenderIterator;->nativeBeginRender(Lcom/scalado/base/Image;Lcom/scalado/caps/Decoder;I)I

    .line 49
    new-instance v0, Lcom/scalado/base/Iterator$CommonIterator;

    invoke-direct {v0, p0, p0}, Lcom/scalado/base/Iterator$CommonIterator;-><init>(Lcom/scalado/base/Iterator;Lcom/scalado/base/Iterator;)V

    iput-object v0, p0, Lcom/scalado/caps/codec/encoder/ImageEncoder$ImageEncoderRenderIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    .line 50
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/ImageEncoder$ImageEncoderRenderIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    invoke-virtual {v0}, Lcom/scalado/base/Iterator$CommonIterator;->abort()V

    .line 62
    return-void
.end method

.method public done()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/ImageEncoder$ImageEncoderRenderIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    invoke-virtual {v0}, Lcom/scalado/base/Iterator$CommonIterator;->done()Z

    move-result v0

    return v0
.end method

.method native nativeBeginRender(Lcom/scalado/base/Image;Lcom/scalado/caps/Decoder;I)I
.end method

.method public step()F
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/scalado/caps/codec/encoder/ImageEncoder$ImageEncoderRenderIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    invoke-virtual {v0}, Lcom/scalado/base/Iterator$CommonIterator;->step()F

    move-result v0

    return v0
.end method
