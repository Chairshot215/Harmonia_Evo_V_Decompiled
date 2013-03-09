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

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->featurePreviewCB:Lcom/scalado/camera/Camera$ImageCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isUsingInternalBuffers:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationBuffers:Ljava/util/Vector;

    return-void
.end method

.method private setInternalCallback()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->featurePreviewCB:Lcom/scalado/camera/Camera$ImageCallback;

    if-nez v5, :cond_1

    move v3, v8

    :goto_0
    if-eqz v3, :cond_2

    const-string v5, "ScaladoCameraFramework"

    const-string v6, "Turning off preview callback"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    iput-boolean v7, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v7

    goto :goto_0

    :cond_2
    iget-boolean v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->featurePreviewCB:Lcom/scalado/camera/Camera$ImageCallback;

    if-eqz v5, :cond_5

    :cond_3
    move v4, v8

    :goto_2
    if-eqz v4, :cond_0

    const-string v5, "ScaladoCameraFramework"

    const-string v6, "Turning on preview callback"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isUsingInternalBuffers:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    iget v1, v5, Landroid/hardware/Camera$Size;->height:I

    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    iget v2, v5, Landroid/hardware/Camera$Size;->width:I

    mul-int v5, v1, v2

    iget-object v6, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v6}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v6

    invoke-static {v6}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v6

    mul-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x8

    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v5

    new-array v6, v0, [B

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v5

    new-array v6, v0, [B

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_4
    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    iput-boolean v8, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    goto :goto_1

    :cond_5
    move v4, v7

    goto :goto_2
.end method


# virtual methods
.method public addApplicationPreviewBuffer([B)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback buffer must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationBuffers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationBuffers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isUsingInternalBuffers:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    iput-boolean v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isUsingInternalBuffers:Z

    iput-boolean v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    :cond_1
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    invoke-direct {p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->setInternalCallback()V

    :cond_2
    return-void
.end method

.method protected clearCallbackBuffers()V
    .locals 2

    iget-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->reAddBuffers:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    :cond_0
    return-void
.end method

.method public doAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-static {p1, v1}, Lcom/scalado/camera/FeatureCameraFactory$AutoFocusCallbackAdapter;->createAutofocusCallbackAdapter(Lcom/scalado/camera/Camera$AutoFocusCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$AutoFocusCallbackAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    return-void
.end method

.method public doCancelAutoFocus()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    return-void
.end method

.method public doSetParameters(Lcom/scalado/camera/Camera$Parameters;)V
    .locals 4

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

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

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

    const-string v1, "ScaladoCameraFramework"

    invoke-interface {p1}, Lcom/scalado/camera/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doStartSmoothZoom(I)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    return-void
.end method

.method public doStopSmoothZoom()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopSmoothZoom()V

    return-void
.end method

.method public doTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 6

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

    :cond_0
    new-instance v0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;-><init>(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    invoke-virtual {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->capture()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->clearCallbackBuffers()V

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

    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->featurePreviewCB:Lcom/scalado/camera/Camera$ImageCallback;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->mPreviewImage:Lcom/scalado/base/Image;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-virtual {v5}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->getPreviewSize()Lcom/scalado/base/Size;

    move-result-object v3

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->getPreviewFormat()I

    move-result v5

    invoke-static {v5}, Lcom/scalado/camera/utils/Translators;->translateToScaladoImageConfig(I)Lcom/scalado/base/Image$Config;

    move-result-object v2

    new-instance v5, Lcom/scalado/base/Image;

    invoke-direct {v5, v3, v2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->mPreviewImage:Lcom/scalado/base/Image;

    :cond_0
    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->mPreviewImage:Lcom/scalado/base/Image;

    invoke-virtual {v5}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->featurePreviewCB:Lcom/scalado/camera/Camera$ImageCallback;

    iget-object v6, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->mPreviewImage:Lcom/scalado/base/Image;

    iget-object v7, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-interface {v5, v6, v7}, Lcom/scalado/camera/Camera$ImageCallback;->onImage(Lcom/scalado/base/Image;Lcom/scalado/camera/Camera;)V

    :cond_1
    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCBisOneShot:Z

    if-eqz v5, :cond_4

    iget-object v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-interface {v4, p1, v5}, Lcom/scalado/camera/Camera$PreviewCallback;->onPreviewFrame([BLcom/scalado/camera/Camera;)V

    :cond_2
    :goto_0
    iget-boolean v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_3
    return-void

    :cond_4
    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    iget-object v6, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-interface {v5, p1, v6}, Lcom/scalado/camera/Camera$PreviewCallback;->onPreviewFrame([BLcom/scalado/camera/Camera;)V

    goto :goto_0
.end method

.method protected reAddCallbackBuffers()V
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->reAddBuffers:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->setInternalCallback()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->reAddBuffers:Z

    :cond_0
    return-void
.end method

.method public setApplicationPreviewCallback(Lcom/scalado/camera/Camera$PreviewCallback;Z)V
    .locals 2

    iput-object p1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCB:Lcom/scalado/camera/Camera$PreviewCallback;

    iput-boolean p2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationPreviewCBisOneShot:Z

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isUsingInternalBuffers:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$100(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->applicationBuffers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isUsingInternalBuffers:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->isReceivingCallbacks:Z

    :cond_0
    invoke-direct {p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->setInternalCallback()V

    return-void
.end method

.method public setFeaturePreviewCallback(Lcom/scalado/camera/Camera$ImageCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->featurePreviewCB:Lcom/scalado/camera/Camera$ImageCallback;

    invoke-direct {p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->setInternalCallback()V

    return-void
.end method
