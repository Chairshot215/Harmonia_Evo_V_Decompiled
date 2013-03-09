.class Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaPreviewImage;
.super Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaImage;
.source "Autorama3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama3d/Autorama3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoramaPreviewImage"
.end annotation


# instance fields
.field private mImage:Lcom/scalado/base/Image;

.field private mTransform:Lcom/scalado/caps/autorama/Transform;

.field final synthetic this$0:Lcom/scalado/camera/autorama3d/Autorama3D;


# direct methods
.method public constructor <init>(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/base/Image;Lcom/scalado/caps/autorama/Transform;)V
    .locals 1
    .parameter
    .parameter "image"
    .parameter "transform"

    .prologue
    .line 425
    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaPreviewImage;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaImage;-><init>(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/autorama3d/Autorama3D$1;)V

    .line 426
    iput-object p2, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaPreviewImage;->mImage:Lcom/scalado/base/Image;

    .line 427
    iput-object p3, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaPreviewImage;->mTransform:Lcom/scalado/caps/autorama/Transform;

    .line 428
    return-void
.end method


# virtual methods
.method public addToStitcher(Lcom/scalado/caps/autorama/Stitcher;)V
    .locals 2
    .parameter "stitcher"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaPreviewImage;->mImage:Lcom/scalado/base/Image;

    iget-object v1, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaPreviewImage;->mTransform:Lcom/scalado/caps/autorama/Transform;

    invoke-virtual {p1, v0, v1}, Lcom/scalado/caps/autorama/Stitcher;->addImage(Lcom/scalado/base/Image;Lcom/scalado/caps/autorama/Transform;)V

    .line 433
    return-void
.end method

.method public getDecoder()Lcom/scalado/caps/Decoder;
    .locals 2

    .prologue
    .line 437
    new-instance v0, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    iget-object v1, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaPreviewImage;->mImage:Lcom/scalado/base/Image;

    invoke-direct {v0, v1}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    .line 438
    .local v0, decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    return-object v0
.end method

.method public getDimensions()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaPreviewImage;->mImage:Lcom/scalado/base/Image;

    invoke-virtual {v0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    return-object v0
.end method
