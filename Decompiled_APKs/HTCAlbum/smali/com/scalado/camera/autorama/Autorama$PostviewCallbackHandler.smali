.class Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;
.super Ljava/lang/Object;
.source "Autorama.java"

# interfaces
.implements Lcom/scalado/camera/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama/Autorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostviewCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/autorama/Autorama;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1018
    invoke-direct {p0, p1}, Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;-><init>(Lcom/scalado/camera/autorama/Autorama;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 6
    .parameter "postview"
    .parameter "camera"

    .prologue
    .line 1021
    if-eqz p1, :cond_0

    .line 1023
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$1700(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Image$Config;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Image$Config;->getBitsPerPixel()I

    move-result v1

    .line 1024
    .local v1, bitsPerPixel:I
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$1600(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    mul-int/2addr v4, v1

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$1600(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x8

    .line 1027
    .local v2, expectedSize:I
    array-length v4, p1

    if-ne v4, v2, :cond_0

    .line 1028
    new-instance v3, Lcom/scalado/base/Image;

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$1600(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$1700(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Image$Config;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 1029
    .local v3, image:Lcom/scalado/base/Image;
    invoke-virtual {v3}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1030
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$3200(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v5

    invoke-direct {v0, v4, v3, v5}, Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Image;Lcom/scalado/caps/autorama/Transform;)V

    .line 1031
    .local v0, autoramaPostviewImage:Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$3500(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1033
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$1500(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1034
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v4}, Lcom/scalado/camera/autorama/Autorama;->access$1500(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I
    invoke-static {v5}, Lcom/scalado/camera/autorama/Autorama;->access$700(Lcom/scalado/camera/autorama/Autorama;)I

    move-result v5

    invoke-interface {v4, v3, v5}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onIntermediatePostview(Lcom/scalado/base/Image;I)V

    .line 1038
    .end local v0           #autoramaPostviewImage:Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;
    .end local v1           #bitsPerPixel:I
    .end local v2           #expectedSize:I
    .end local v3           #image:Lcom/scalado/base/Image;
    :cond_0
    return-void
.end method
