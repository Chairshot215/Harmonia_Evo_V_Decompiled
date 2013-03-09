.class public Lcom/scalado/caps/codec/decoder/ImageDecoder;
.super Lcom/scalado/caps/Decoder;
.source "ImageDecoder.java"


# instance fields
.field private mImage:Lcom/scalado/base/Image;


# direct methods
.method public constructor <init>(Lcom/scalado/base/Image;)V
    .locals 3
    .parameter "image"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/scalado/caps/Decoder;-><init>()V

    .line 14
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scalado/caps/codec/decoder/ImageDecoder;->mImage:Lcom/scalado/base/Image;

    .line 23
    if-nez p1, :cond_0

    .line 24
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Image is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/codec/decoder/ImageDecoder;->nativeCreate(Lcom/scalado/base/Image;)I

    move-result v0

    .line 28
    .local v0, error:I
    iput-object p1, p0, Lcom/scalado/caps/codec/decoder/ImageDecoder;->mImage:Lcom/scalado/base/Image;

    .line 29
    return-void
.end method

.method private native nativeCreate(Lcom/scalado/base/Image;)I
.end method


# virtual methods
.method public getImage()Lcom/scalado/base/Image;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/scalado/caps/codec/decoder/ImageDecoder;->mImage:Lcom/scalado/base/Image;

    return-object v0
.end method
