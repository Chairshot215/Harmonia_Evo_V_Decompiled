.class Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;
.super Ljava/lang/Object;
.source "Autorama3D.java"

# interfaces
.implements Lcom/scalado/camera/Camera$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama3d/Autorama3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/autorama3d/Autorama3D;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/autorama3d/Autorama3D;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/autorama3d/Autorama3D$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;-><init>(Lcom/scalado/camera/autorama3d/Autorama3D;)V

    return-void
.end method


# virtual methods
.method public onImage(Lcom/scalado/base/Image;Lcom/scalado/camera/Camera;)V
    .locals 10
    .parameter "image"
    .parameter "camera"

    .prologue
    .line 373
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mState:I
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$500(Lcom/scalado/camera/autorama3d/Autorama3D;)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1400(Lcom/scalado/camera/autorama3d/Autorama3D;)Landroid/graphics/Point;

    move-result-object v5

    if-nez v5, :cond_2

    .line 378
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    new-instance v6, Landroid/graphics/Point;

    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1200(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/base/Size;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mOverlap:I
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1500(Lcom/scalado/camera/autorama3d/Autorama3D;)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x64

    mul-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x64

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1200(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/base/Size;

    move-result-object v8

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mOverlap:I
    invoke-static {v9}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1500(Lcom/scalado/camera/autorama3d/Autorama3D;)I

    move-result v9

    rsub-int/lit8 v9, v9, 0x64

    mul-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x64

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v5, v6}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1402(Lcom/scalado/camera/autorama3d/Autorama3D;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 381
    :cond_2
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1600(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-result-object v5

    if-nez v5, :cond_3

    .line 382
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    new-instance v6, Lcom/scalado/caps/autorama/ViewfinderTracker;

    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1200(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/base/Size;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/scalado/caps/autorama/ViewfinderTracker;-><init>(Lcom/scalado/base/Size;)V

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v5, v6}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1602(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/caps/autorama/ViewfinderTracker;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    .line 384
    :cond_3
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    iget-object v6, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v6}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1600(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/scalado/caps/autorama/ViewfinderTracker;->track(Lcom/scalado/base/Image;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v6

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v5, v6}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1702(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/caps/autorama/Transform;)Lcom/scalado/caps/autorama/Transform;

    .line 386
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1700(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v5

    sget-object v6, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mOverlap:I
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1500(Lcom/scalado/camera/autorama3d/Autorama3D;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/scalado/caps/autorama/Transform;->isTimeToCapture(Lcom/scalado/caps/autorama/Direction;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 387
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #calls: Lcom/scalado/camera/autorama3d/Autorama3D;->capture()V
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1000(Lcom/scalado/camera/autorama3d/Autorama3D;)V

    .line 390
    :cond_4
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mDoCapture:Z
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1800(Lcom/scalado/camera/autorama3d/Autorama3D;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 391
    const-string v5, "ScaladoCameraFramework"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!!!!!!!!!!!!!!!!!!!!! SAVING IMAGE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1900(Lcom/scalado/camera/autorama3d/Autorama3D;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " !!!!!!!!!!!!!!!!!!!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v2, Lcom/scalado/base/Buffer;

    invoke-virtual {p1}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/scalado/base/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 393
    .local v2, imageData:Lcom/scalado/base/Buffer;
    new-instance v1, Lcom/scalado/base/Image;

    invoke-virtual {p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v5

    invoke-virtual {p1}, Lcom/scalado/base/Image;->getConfig()Lcom/scalado/base/Image$Config;

    move-result-object v6

    invoke-direct {v1, v2, v5, v6}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 394
    .local v1, capturedImage:Lcom/scalado/base/Image;
    new-instance v0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaPreviewImage;

    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    iget-object v6, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v6}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1700(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v6

    invoke-direct {v0, v5, v1, v6}, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaPreviewImage;-><init>(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/base/Image;Lcom/scalado/caps/autorama/Transform;)V

    .line 395
    .local v0, autoramaImage:Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaPreviewImage;
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1900(Lcom/scalado/camera/autorama3d/Autorama3D;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    const/4 v6, 0x0

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mDoCapture:Z
    invoke-static {v5, v6}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1802(Lcom/scalado/camera/autorama3d/Autorama3D;Z)Z

    .line 397
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1900(Lcom/scalado/camera/autorama3d/Autorama3D;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    iget-object v6, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mNumberOfImages:I
    invoke-static {v6}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$200(Lcom/scalado/camera/autorama3d/Autorama3D;)I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 398
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1100(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera;

    move-result-object v5

    invoke-interface {v5}, Lcom/scalado/camera/Camera;->stopPreview()V

    .line 399
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #calls: Lcom/scalado/camera/autorama3d/Autorama3D;->stopTracking()V
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$2000(Lcom/scalado/camera/autorama3d/Autorama3D;)V

    .line 400
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #calls: Lcom/scalado/camera/autorama3d/Autorama3D;->panoramaCompleted()V
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$2100(Lcom/scalado/camera/autorama3d/Autorama3D;)V

    .line 402
    :cond_5
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1600(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 403
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1600(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/caps/autorama/ViewfinderTracker;->reset()V

    .line 407
    .end local v0           #autoramaImage:Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaPreviewImage;
    .end local v1           #capturedImage:Lcom/scalado/base/Image;
    .end local v2           #imageData:Lcom/scalado/base/Buffer;
    :cond_6
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1700(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/base/Vector;->getX()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1400(Lcom/scalado/camera/autorama3d/Autorama3D;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 408
    .local v3, trackingX:F
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1700(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/base/Vector;->getY()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1400(Lcom/scalado/camera/autorama3d/Autorama3D;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 409
    .local v4, trackingY:F
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mAutorama3DListener:Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DListener;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$2200(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 410
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mAutorama3DListener:Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DListener;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$2200(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DListener;

    move-result-object v5

    invoke-interface {v5, v3, v4, p1}, Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DListener;->onTracking(FFLcom/scalado/base/Image;)V

    goto/16 :goto_0
.end method
