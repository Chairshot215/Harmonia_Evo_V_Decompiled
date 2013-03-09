.class Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;
.super Ljava/lang/Object;
.source "Autorama3D.java"

# interfaces
.implements Lcom/scalado/camera/Feature$FeatureImplementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama3d/Autorama3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoramaFeatureImplementation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/autorama3d/Autorama3D;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/autorama3d/Autorama3D;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/autorama3d/Autorama3D$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;-><init>(Lcom/scalado/camera/autorama3d/Autorama3D;)V

    return-void
.end method


# virtual methods
.method public deregisterCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 337
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v0, v1}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1102(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/Camera;)Lcom/scalado/camera/Camera;

    .line 338
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0, v1}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$402(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/Feature$FeatureSocket;)Lcom/scalado/camera/Feature$FeatureSocket;

    .line 340
    return-void
.end method

.method public onAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V
    .locals 1
    .parameter "cbk"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$400(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V

    .line 282
    return-void
.end method

.method public onCancelAutoFocus()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$400(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureSocket;->doCancelAutoFocus()V

    .line 287
    return-void
.end method

.method public onSetParameters(Lcom/scalado/camera/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$400(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doSetParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 292
    return-void
.end method

.method public onStartSmoothZoom(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$400(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doStartSmoothZoom(I)V

    .line 297
    return-void
.end method

.method public onStopSmoothZoom()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$400(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureSocket;->doStopSmoothZoom()V

    .line 302
    return-void
.end method

.method public onTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mState:I
    invoke-static {v0}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$500(Lcom/scalado/camera/autorama3d/Autorama3D;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 322
    :goto_0
    return-void

    .line 310
    :pswitch_0
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;
    invoke-static {v0, p1}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$602(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/Camera$ShutterCallback;)Lcom/scalado/camera/Camera$ShutterCallback;

    .line 311
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p2}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$702(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/Camera$PictureCallback;)Lcom/scalado/camera/Camera$PictureCallback;

    .line 312
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p3}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$802(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/Camera$PictureCallback;)Lcom/scalado/camera/Camera$PictureCallback;

    .line 313
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p4}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$902(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/Camera$PictureCallback;)Lcom/scalado/camera/Camera$PictureCallback;

    .line 315
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #calls: Lcom/scalado/camera/autorama3d/Autorama3D;->capture()V
    invoke-static {v0}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1000(Lcom/scalado/camera/autorama3d/Autorama3D;)V

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public registerCamera(Lcom/scalado/camera/FeatureCamera;Lcom/scalado/camera/Feature$FeatureSocket;)V
    .locals 4
    .parameter "camera"
    .parameter "socket"

    .prologue
    .line 326
    iget-object v2, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v2, p2}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$402(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/Feature$FeatureSocket;)Lcom/scalado/camera/Feature$FeatureSocket;

    .line 327
    iget-object v2, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v2, p1}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1102(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/Camera;)Lcom/scalado/camera/Camera;

    .line 329
    iget-object v2, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v2}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1100(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera;

    move-result-object v2

    invoke-interface {v2}, Lcom/scalado/camera/Camera;->getParameters()Lcom/scalado/camera/Camera$Parameters;

    move-result-object v1

    .line 330
    .local v1, params:Lcom/scalado/camera/Camera$Parameters;
    iget-object v2, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    invoke-interface {v1}, Lcom/scalado/camera/Camera$Parameters;->getPreviewSize()Lcom/scalado/base/Size;

    move-result-object v3

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v2, v3}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1202(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/base/Size;)Lcom/scalado/base/Size;

    .line 331
    invoke-interface {v1}, Lcom/scalado/camera/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    .line 332
    .local v0, format:I
    iget-object v2, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    invoke-static {v0}, Lcom/scalado/camera/utils/Translators;->translateToScaladoImageConfig(I)Lcom/scalado/base/Image$Config;

    move-result-object v3

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mPreviewConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v2, v3}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1302(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/base/Image$Config;)Lcom/scalado/base/Image$Config;

    .line 333
    return-void
.end method
