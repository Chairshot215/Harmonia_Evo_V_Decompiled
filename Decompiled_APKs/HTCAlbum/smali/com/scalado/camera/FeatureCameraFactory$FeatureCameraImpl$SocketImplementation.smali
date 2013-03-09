.class public Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;
.super Ljava/lang/Object;
.source "FeatureCameraFactory.java"

# interfaces
.implements Lcom/scalado/camera/Feature$FeatureSocket;
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SocketImplementation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;
    }
.end annotation


# instance fields
.field private applicationBuffers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field

.field private applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

.field private applicationPreviewCBisOneShot:Z

.field private featurePreviewCB:Lcom/scalado/camera/Camera$ImageCallback;

.field private isReceivingCallbacks:Z

.field private isUsingInternalBuffers:Z

.field private mPreviewImage:Lcom/scalado/base/Image;

.field private reAddBuffers:Z

.field final synthetic this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;


# direct methods
.method protected constructor <init>(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 94
    iput-object p1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    .line 97
    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->featurePreviewCB:Lcom/scalado/camera/Camera$ImageCallback;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isUsingInternalBuffers:Z

    .line 101
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationBuffers:Ljava/util/Vector;

    .line 247
    return-void
.end method

.method private setInternalCallback()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 200
    iget-boolean v6, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->featurePreviewCB:Lcom/scalado/camera/Camera$ImageCallback;

    if-nez v6, :cond_1

    move v3, v5

    .line 202
    .local v3, turnOffCallbacks:Z
    :goto_0
    if-eqz v3, :cond_2

    .line 204
    const-string v5, "ScaladoCameraFramework"

    const-string v6, "Turning off preview callback"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 206
    iput-boolean v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    .line 225
    :cond_0
    :goto_1
    return-void

    .end local v3           #turnOffCallbacks:Z
    :cond_1
    move v3, v4

    .line 200
    goto :goto_0

    .line 209
    .restart local v3       #turnOffCallbacks:Z
    :cond_2
    iget-boolean v6, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->featurePreviewCB:Lcom/scalado/camera/Camera$ImageCallback;

    if-eqz v6, :cond_4

    :cond_3
    move v4, v5

    .line 211
    .local v4, turnOnCallbacks:Z
    :cond_4
    if-eqz v4, :cond_0

    .line 212
    const-string v6, "ScaladoCameraFramework"

    const-string v7, "Turning on preview callback"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-boolean v6, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isUsingInternalBuffers:Z

    if-eqz v6, :cond_5

    .line 214
    iget-object v6, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v6}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    iget v1, v6, Landroid/hardware/Camera$Size;->height:I

    .line 215
    .local v1, previewHeight:I
    iget-object v6, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v6}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    iget v2, v6, Landroid/hardware/Camera$Size;->width:I

    .line 216
    .local v2, previewWidth:I
    mul-int v6, v1, v2

    iget-object v7, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v7

    invoke-static {v7}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v7

    mul-int/2addr v6, v7

    div-int/lit8 v0, v6, 0x8

    .line 218
    .local v0, bufferSize:I
    iget-object v6, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v6}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v6

    new-array v7, v0, [B

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 219
    iget-object v6, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v6}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v6

    new-array v7, v0, [B

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 221
    .end local v0           #bufferSize:I
    .end local v1           #previewHeight:I
    .end local v2           #previewWidth:I
    :cond_5
    iget-object v6, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v6}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 222
    iput-boolean v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    goto :goto_1
.end method


# virtual methods
.method public addApplicationPreviewBuffer([B)V
    .locals 3
    .parameter "buffer"

    .prologue
    const/4 v2, 0x0

    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback buffer must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationBuffers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationBuffers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 118
    iget-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isUsingInternalBuffers:Z

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 121
    iput-boolean v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isUsingInternalBuffers:Z

    .line 122
    iput-boolean v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 126
    invoke-direct {p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->setInternalCallback()V

    .line 128
    :cond_2
    return-void
.end method

.method protected clearCallbackBuffers()V
    .locals 2

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->reAddBuffers:Z

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    .line 411
    :cond_0
    return-void
.end method

.method public doAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V
    .locals 2
    .parameter "cbk"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-static {p1, v1}, Lcom/scalado/camera/FeatureCameraFactory$AutoFocusCallbackAdapter;->createAutofocusCallbackAdapter(Lcom/scalado/camera/Camera$AutoFocusCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$AutoFocusCallbackAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 377
    return-void
.end method

.method public doCancelAutoFocus()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 382
    return-void
.end method

.method public doSetParameters(Lcom/scalado/camera/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-interface {p1}, Lcom/scalado/camera/Camera$Parameters;->getAndroidParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ScaladoCameraFramework"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed changing camera parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v1, "ScaladoCameraFramework"

    invoke-interface {p1}, Lcom/scalado/camera/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doStartSmoothZoom(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 398
    return-void
.end method

.method public doStopSmoothZoom()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopSmoothZoom()V

    .line 403
    return-void
.end method

.method public doTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 6
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 231
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$200(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->getBurstTotalCaptures()I

    move-result v1

    iget-object v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v2}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$200(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v2

    invoke-interface {v2}, Lcom/scalado/camera/FeatureCamera$Parameters;->getMaxBurstTotalCaptures()I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$200(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->getExposureBracketing()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$200(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->isExposureBracketingSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    :cond_0
    new-instance v0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;-><init>(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 235
    .local v0, softwareBurst:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;
    invoke-virtual {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->capture()V

    .line 245
    .end local v0           #softwareBurst:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->clearCallbackBuffers()V

    .line 239
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-static {p1, v2}, Lcom/scalado/camera/FeatureCameraFactory$ShutterCallbackAdapter;->createShutterCallbackAdapter(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$ShutterCallbackAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-static {p2, v3}, Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;->createPictureCallbackAdapter(Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-static {p3, v4}, Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;->createPictureCallbackAdapter(Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-static {p4, v5}, Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;->createPictureCallbackAdapter(Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 161
    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->featurePreviewCB:Lcom/scalado/camera/Camera$ImageCallback;

    if-eqz v5, :cond_1

    .line 162
    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->mPreviewImage:Lcom/scalado/base/Image;

    if-nez v5, :cond_0

    .line 163
    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-virtual {v5}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v1

    .line 164
    .local v1, parameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->getPreviewSize()Lcom/scalado/base/Size;

    move-result-object v3

    .line 165
    .local v3, previewSize:Lcom/scalado/base/Size;
    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->getPreviewFormat()I

    move-result v5

    invoke-static {v5}, Lcom/scalado/camera/utils/Translators;->translateToScaladoImageConfig(I)Lcom/scalado/base/Image$Config;

    move-result-object v2

    .line 166
    .local v2, previewConfig:Lcom/scalado/base/Image$Config;
    new-instance v5, Lcom/scalado/base/Image;

    invoke-direct {v5, v3, v2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->mPreviewImage:Lcom/scalado/base/Image;

    .line 169
    .end local v1           #parameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    .end local v2           #previewConfig:Lcom/scalado/base/Image$Config;
    .end local v3           #previewSize:Lcom/scalado/base/Size;
    :cond_0
    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->mPreviewImage:Lcom/scalado/base/Image;

    invoke-virtual {v5}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 170
    .local v0, imageDataBuffer:Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 171
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 172
    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->featurePreviewCB:Lcom/scalado/camera/Camera$ImageCallback;

    iget-object v6, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->mPreviewImage:Lcom/scalado/base/Image;

    iget-object v7, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-interface {v5, v6, v7}, Lcom/scalado/camera/Camera$ImageCallback;->onImage(Lcom/scalado/base/Image;Lcom/scalado/camera/Camera;)V

    .line 175
    .end local v0           #imageDataBuffer:Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    if-eqz v5, :cond_2

    .line 177
    iget-boolean v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCBisOneShot:Z

    if-eqz v5, :cond_4

    .line 178
    iget-object v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    .line 179
    .local v4, temp:Lcom/scalado/camera/Camera$PreviewCallback;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    .line 180
    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-interface {v4, p1, v5}, Lcom/scalado/camera/Camera$PreviewCallback;->onPreviewFrame([BLcom/scalado/camera/Camera;)V

    .line 189
    .end local v4           #temp:Lcom/scalado/camera/Camera$PreviewCallback;
    :cond_2
    :goto_0
    iget-boolean v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    if-eqz v5, :cond_3

    .line 190
    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 192
    :cond_3
    return-void

    .line 183
    :cond_4
    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    iget-object v6, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-interface {v5, p1, v6}, Lcom/scalado/camera/Camera$PreviewCallback;->onPreviewFrame([BLcom/scalado/camera/Camera;)V

    goto :goto_0
.end method

.method protected reAddCallbackBuffers()V
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->reAddBuffers:Z

    if-eqz v0, :cond_0

    .line 415
    invoke-direct {p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->setInternalCallback()V

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->reAddBuffers:Z

    .line 418
    :cond_0
    return-void
.end method

.method public setApplicationPreviewCallback(Lcom/scalado/camera/Camera$PreviewCallback;Z)V
    .locals 2
    .parameter "cb"
    .parameter "oneshot"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    .line 137
    iput-boolean p2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCBisOneShot:Z

    .line 140
    if-nez p1, :cond_0

    .line 142
    iget-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isUsingInternalBuffers:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 144
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationBuffers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isUsingInternalBuffers:Z

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->setInternalCallback()V

    .line 151
    return-void
.end method

.method public setFeaturePreviewCallback(Lcom/scalado/camera/Camera$ImageCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->featurePreviewCB:Lcom/scalado/camera/Camera$ImageCallback;

    .line 156
    invoke-direct {p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->setInternalCallback()V

    .line 157
    return-void
.end method
