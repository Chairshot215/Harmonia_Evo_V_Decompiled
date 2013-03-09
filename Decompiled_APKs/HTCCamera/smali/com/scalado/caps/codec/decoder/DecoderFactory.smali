.class public final Lcom/scalado/caps/codec/decoder/DecoderFactory;
.super Ljava/lang/Object;
.source "DecoderFactory.java"


# instance fields
.field private mImageType:I

.field private providers:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList",
            "<",
            "Lcom/scalado/caps/codec/decoder/DecoderProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/codec/decoder/DecoderFactory;->providers:Ljava/util/AbstractList;

    return-void
.end method

.method private native nativeGetImageType(Lcom/scalado/stream/Stream;)I
.end method


# virtual methods
.method public createDecoder(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/scalado/caps/codec/decoder/DecoderFactory;->getImageType(Lcom/scalado/stream/Stream;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/scalado/caps/codec/decoder/DecoderFactory;->providers:Ljava/util/AbstractList;

    invoke-virtual {v4}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/codec/decoder/DecoderProvider;

    invoke-virtual {v1, v2}, Lcom/scalado/caps/codec/decoder/DecoderProvider;->checkImageType(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, p1}, Lcom/scalado/caps/codec/decoder/DecoderProvider;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v3

    goto :goto_0
.end method

.method getImageType(Lcom/scalado/stream/Stream;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/scalado/caps/codec/decoder/DecoderFactory;->nativeGetImageType(Lcom/scalado/stream/Stream;)I

    move-result v0

    iget v1, p0, Lcom/scalado/caps/codec/decoder/DecoderFactory;->mImageType:I

    return v1
.end method

.method public registerProvider(Lcom/scalado/caps/codec/decoder/DecoderProvider;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/codec/decoder/DecoderFactory;->providers:Ljava/util/AbstractList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    return-void
.end method
