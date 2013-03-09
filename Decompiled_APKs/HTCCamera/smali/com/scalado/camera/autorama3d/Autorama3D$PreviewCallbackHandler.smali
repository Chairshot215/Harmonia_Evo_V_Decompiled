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

    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;-><init>(Lcom/scalado/camera/autorama3d/Autorama3D;)V

    return-void
.end method


# virtual methods
.method public onImage(Lcom/scalado/base/Image;Lcom/scalado/camera/Camera;)V
    .locals 10

    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mState:I
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$5(Lcom/scalado/camera/autorama3d/Autorama3D;)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$16(Lcom/scalado/camera/autorama3d/Autorama3D;)Landroid/graphics/Point;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    new-instance v6, Landroid/graphics/Point;

    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$17(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/base/Size;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mOverlap:I
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$18(Lcom/scalado/camera/autorama3d/Autorama3D;)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x64

    mul-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x64

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$17(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/base/Size;

    move-result-object v8

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mOverlap:I
    invoke-static {v9}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$18(Lcom/scalado/camera/autorama3d/Autorama3D;)I

    move-result v9

    rsub-int/lit8 v9, v9, 0x64

    mul-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x64

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v5, v6}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$19(Lcom/scalado/camera/autorama3d/Autorama3D;Landroid/graphics/Point;)V

    :cond_2
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$20(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    new-instance v6, Lcom/scalado/caps/autorama/ViewfinderTracker;

    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$17(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/base/Size;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/scalado/caps/autorama/ViewfinderTracker;-><init>(Lcom/scalado/base/Size;)V

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v5, v6}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$21(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/caps/autorama/ViewfinderTracker;)V

    :cond_3
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    iget-object v6, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v6}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$20(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/scalado/caps/autorama/ViewfinderTracker;->track(Lcom/scalado/base/Image;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v6

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v5, v6}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$22(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/caps/autorama/Transform;)V

    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$23(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v5

    sget-object v6, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mOverlap:I
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$18(Lcom/scalado/camera/autorama3d/Autorama3D;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/scalado/caps/autorama/Transform;->isTimeToCapture(Lcom/scalado/caps/autorama/Direction;I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #calls: Lcom/scalado/camera/autorama3d/Autorama3D;->capture()V
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$10(Lcom/scalado/camera/autorama3d/Autorama3D;)V

    :cond_4
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mDoCapture:Z
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$24(Lcom/scalado/camera/autorama3d/Autorama3D;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "ScaladoCameraFramework"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "!!!!!!!!!!!!!!!!!!!!! SAVING IMAGE "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$25(Lcom/scalado/camera/autorama3d/Autorama3D;)Ljava/util/Vector;

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

    new-instance v2, Lcom/scalado/base/Buffer;

    invoke-virtual {p1}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/scalado/base/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance v1, Lcom/scalado/base/Image;

    invoke-virtual {p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v5

    invoke-virtual {p1}, Lcom/scalado/base/Image;->getConfig()Lcom/scalado/base/Image$Config;

    move-result-object v6

    invoke-direct {v1, v2, v5, v6}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    new-instance v0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaPreviewImage;

    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    iget-object v6, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v6}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$23(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v6

    invoke-direct {v0, v5, v1, v6}, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaPreviewImage;-><init>(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/base/Image;Lcom/scalado/caps/autorama/Transform;)V

    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$25(Lcom/scalado/camera/autorama3d/Autorama3D;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    const/4 v6, 0x0

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mDoCapture:Z
    invoke-static {v5, v6}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$26(Lcom/scalado/camera/autorama3d/Autorama3D;Z)V

    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$25(Lcom/scalado/camera/autorama3d/Autorama3D;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    iget-object v6, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mNumberOfImages:I
    invoke-static {v6}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$3(Lcom/scalado/camera/autorama3d/Autorama3D;)I

    move-result v6

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$13(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera;

    move-result-object v5

    invoke-interface {v5}, Lcom/scalado/camera/Camera;->stopPreview()V

    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #calls: Lcom/scalado/camera/autorama3d/Autorama3D;->stopTracking()V
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$27(Lcom/scalado/camera/autorama3d/Autorama3D;)V

    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #calls: Lcom/scalado/camera/autorama3d/Autorama3D;->panoramaCompleted()V
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$28(Lcom/scalado/camera/autorama3d/Autorama3D;)V

    :cond_5
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$20(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$20(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/caps/autorama/ViewfinderTracker;->reset()V

    :cond_6
    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$23(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/base/Vector;->getX()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$16(Lcom/scalado/camera/autorama3d/Autorama3D;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    div-float v3, v5, v6

    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$23(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/base/Vector;->getY()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$16(Lcom/scalado/camera/autorama3d/Autorama3D;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float v4, v5, v6

    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mAutorama3DListener:Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DListener;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$29(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DListener;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mAutorama3DListener:Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DListener;
    invoke-static {v5}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$29(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DListener;

    move-result-object v5

    invoke-interface {v5, v3, v4, p1}, Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DListener;->onTracking(FFLcom/scalado/base/Image;)V

    goto/16 :goto_0
.end method
