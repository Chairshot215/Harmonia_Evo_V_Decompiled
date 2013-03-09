.class Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;
.super Ljava/lang/Object;
.source "HDR.java"

# interfaces
.implements Lcom/scalado/camera/Feature$FeatureImplementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/hdr/HDR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HDRFeatureImplementation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/hdr/HDR;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/hdr/HDR;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/hdr/HDR$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;-><init>(Lcom/scalado/camera/hdr/HDR;)V

    return-void
.end method


# virtual methods
.method public deregisterCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 355
    iget-object v1, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1}, Lcom/scalado/camera/hdr/HDR;->access$700(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    .line 356
    .local v0, params:Lcom/scalado/camera/FeatureCamera$Parameters;
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    invoke-interface {v0, v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setExposureBracketing([I)V

    .line 357
    iget-object v1, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v1}, Lcom/scalado/camera/hdr/HDR;->access$800(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/scalado/camera/Feature$FeatureSocket;->doSetParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 358
    iget-object v1, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    const/4 v2, 0x0

    #setter for: Lcom/scalado/camera/hdr/HDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1, v2}, Lcom/scalado/camera/hdr/HDR;->access$702(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/FeatureCamera;)Lcom/scalado/camera/FeatureCamera;

    .line 359
    return-void
.end method

.method public onAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V
    .locals 1
    .parameter "cbk"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/hdr/HDR;->access$800(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V

    .line 364
    return-void
.end method

.method public onCancelAutoFocus()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/hdr/HDR;->access$800(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureSocket;->doCancelAutoFocus()V

    .line 369
    return-void
.end method

.method public onSetParameters(Lcom/scalado/camera/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/hdr/HDR;->access$800(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doSetParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 374
    return-void
.end method

.method public onStartSmoothZoom(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/hdr/HDR;->access$800(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doStartSmoothZoom(I)V

    .line 379
    return-void
.end method

.method public onStopSmoothZoom()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/hdr/HDR;->access$800(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureSocket;->doStopSmoothZoom()V

    .line 384
    return-void
.end method

.method public onTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 2
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 389
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "HDR: onTakePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #setter for: Lcom/scalado/camera/hdr/HDR;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;
    invoke-static {v0, p1}, Lcom/scalado/camera/hdr/HDR;->access$1302(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/Camera$ShutterCallback;)Lcom/scalado/camera/Camera$ShutterCallback;

    .line 391
    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #setter for: Lcom/scalado/camera/hdr/HDR;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p2}, Lcom/scalado/camera/hdr/HDR;->access$1402(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/Camera$PictureCallback;)Lcom/scalado/camera/Camera$PictureCallback;

    .line 392
    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #setter for: Lcom/scalado/camera/hdr/HDR;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p3}, Lcom/scalado/camera/hdr/HDR;->access$1502(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/Camera$PictureCallback;)Lcom/scalado/camera/Camera$PictureCallback;

    .line 393
    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #setter for: Lcom/scalado/camera/hdr/HDR;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p4}, Lcom/scalado/camera/hdr/HDR;->access$1602(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/Camera$PictureCallback;)Lcom/scalado/camera/Camera$PictureCallback;

    .line 395
    sget-object v0, Lcom/scalado/camera/hdr/HDR$1;->$SwitchMap$com$scalado$camera$hdr$HDR$HDRStates:[I

    iget-object v1, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mState:Lcom/scalado/camera/hdr/HDR$HDRStates;
    invoke-static {v1}, Lcom/scalado/camera/hdr/HDR;->access$1700(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/hdr/HDR$HDRStates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/camera/hdr/HDR$HDRStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 408
    :goto_0
    :pswitch_0
    return-void

    .line 397
    :pswitch_1
    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #calls: Lcom/scalado/camera/hdr/HDR;->startCapturing()V
    invoke-static {v0}, Lcom/scalado/camera/hdr/HDR;->access$1800(Lcom/scalado/camera/hdr/HDR;)V

    goto :goto_0

    .line 402
    :pswitch_2
    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #calls: Lcom/scalado/camera/hdr/HDR;->clean()V
    invoke-static {v0}, Lcom/scalado/camera/hdr/HDR;->access$1900(Lcom/scalado/camera/hdr/HDR;)V

    .line 403
    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #calls: Lcom/scalado/camera/hdr/HDR;->startCapturing()V
    invoke-static {v0}, Lcom/scalado/camera/hdr/HDR;->access$1800(Lcom/scalado/camera/hdr/HDR;)V

    goto :goto_0

    .line 395
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public registerCamera(Lcom/scalado/camera/FeatureCamera;Lcom/scalado/camera/Feature$FeatureSocket;)V
    .locals 6
    .parameter "camera"
    .parameter "socket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/scalado/camera/FeatureNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 329
    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #setter for: Lcom/scalado/camera/hdr/HDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v2, p1}, Lcom/scalado/camera/hdr/HDR;->access$702(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/FeatureCamera;)Lcom/scalado/camera/FeatureCamera;

    .line 330
    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #setter for: Lcom/scalado/camera/hdr/HDR;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v2, p2}, Lcom/scalado/camera/hdr/HDR;->access$802(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/Feature$FeatureSocket;)Lcom/scalado/camera/Feature$FeatureSocket;

    .line 332
    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v2}, Lcom/scalado/camera/hdr/HDR;->access$700(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v2

    invoke-interface {v2}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v1

    .line 333
    .local v1, parameters:Lcom/scalado/camera/Camera$Parameters;
    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    invoke-interface {v1}, Lcom/scalado/camera/Camera$Parameters;->getMinExposureCompensation()I

    move-result v3

    #setter for: Lcom/scalado/camera/hdr/HDR;->mMinExposureCompensation:I
    invoke-static {v2, v3}, Lcom/scalado/camera/hdr/HDR;->access$902(Lcom/scalado/camera/hdr/HDR;I)I

    .line 334
    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    invoke-interface {v1}, Lcom/scalado/camera/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v3

    #setter for: Lcom/scalado/camera/hdr/HDR;->mMaxExposureCompensation:I
    invoke-static {v2, v3}, Lcom/scalado/camera/hdr/HDR;->access$1002(Lcom/scalado/camera/hdr/HDR;I)I

    .line 335
    const-string v2, "ScaladoCameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExposureCompensation interval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mMinExposureCompensation:I
    invoke-static {v4}, Lcom/scalado/camera/hdr/HDR;->access$900(Lcom/scalado/camera/hdr/HDR;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mMaxExposureCompensation:I
    invoke-static {v4}, Lcom/scalado/camera/hdr/HDR;->access$1000(Lcom/scalado/camera/hdr/HDR;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mMinExposureCompensation:I
    invoke-static {v2}, Lcom/scalado/camera/hdr/HDR;->access$900(Lcom/scalado/camera/hdr/HDR;)I

    move-result v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mMaxExposureCompensation:I
    invoke-static {v2}, Lcom/scalado/camera/hdr/HDR;->access$1000(Lcom/scalado/camera/hdr/HDR;)I

    move-result v2

    if-lez v2, :cond_1

    .line 340
    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    invoke-interface {v1}, Lcom/scalado/camera/Camera$Parameters;->getExposureCompensationStep()F

    move-result v3

    #setter for: Lcom/scalado/camera/hdr/HDR;->mExposureCompensationStep:F
    invoke-static {v2, v3}, Lcom/scalado/camera/hdr/HDR;->access$1102(Lcom/scalado/camera/hdr/HDR;F)F

    .line 341
    const-string v2, "ScaladoCameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exposure step: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/scalado/camera/Camera$Parameters;->getExposureCompensationStep()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    invoke-interface {v1}, Lcom/scalado/camera/Camera$Parameters;->getPictureSize()Lcom/scalado/base/Size;

    move-result-object v3

    #setter for: Lcom/scalado/camera/hdr/HDR;->mDims:Lcom/scalado/base/Size;
    invoke-static {v2, v3}, Lcom/scalado/camera/hdr/HDR;->access$1202(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/base/Size;)Lcom/scalado/base/Size;

    .line 347
    const/high16 v2, 0x3f00

    iget-object v3, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposureCompensationStep:F
    invoke-static {v3}, Lcom/scalado/camera/hdr/HDR;->access$1100(Lcom/scalado/camera/hdr/HDR;)F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 348
    .local v0, defaultExposureCompensation:I
    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static {v2}, Lcom/scalado/camera/hdr/HDR;->access$400(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v2

    if-nez v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;->this$0:Lcom/scalado/camera/hdr/HDR;

    const/4 v3, 0x3

    new-array v3, v3, [I

    aput v0, v3, v5

    const/4 v4, 0x1

    aput v5, v3, v4

    const/4 v4, 0x2

    neg-int v5, v0

    aput v5, v3, v4

    #setter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static {v2, v3}, Lcom/scalado/camera/hdr/HDR;->access$402(Lcom/scalado/camera/hdr/HDR;[I)[I

    .line 351
    :cond_0
    return-void

    .line 344
    .end local v0           #defaultExposureCompensation:I
    :cond_1
    new-instance v2, Lcom/scalado/camera/FeatureNotSupportedException;

    const-string v3, "Camera hardware does not support changing exposure."

    invoke-direct {v2, v3}, Lcom/scalado/camera/FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
