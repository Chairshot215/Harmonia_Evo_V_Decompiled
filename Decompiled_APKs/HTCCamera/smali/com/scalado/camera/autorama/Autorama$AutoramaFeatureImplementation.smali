.class Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;
.super Ljava/lang/Object;
.source "Autorama.java"

# interfaces
.implements Lcom/scalado/camera/Feature$FeatureImplementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama/Autorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoramaFeatureImplementation"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$scalado$camera$autorama$Autorama$State:[I


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/autorama/Autorama;


# direct methods
.method static synthetic $SWITCH_TABLE$com$scalado$camera$autorama$Autorama$State()[I
    .locals 3

    sget-object v0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->$SWITCH_TABLE$com$scalado$camera$autorama$Autorama$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/scalado/camera/autorama/Autorama$State;->values()[Lcom/scalado/camera/autorama/Autorama$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->CAPTURING:Lcom/scalado/camera/autorama/Autorama$State;

    invoke-virtual {v1}, Lcom/scalado/camera/autorama/Autorama$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->READY:Lcom/scalado/camera/autorama/Autorama$State;

    invoke-virtual {v1}, Lcom/scalado/camera/autorama/Autorama$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->RENDERING:Lcom/scalado/camera/autorama/Autorama$State;

    invoke-virtual {v1}, Lcom/scalado/camera/autorama/Autorama$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->TRACKING:Lcom/scalado/camera/autorama/Autorama$State;

    invoke-virtual {v1}, Lcom/scalado/camera/autorama/Autorama$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->$SWITCH_TABLE$com$scalado$camera$autorama$Autorama$State:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;-><init>(Lcom/scalado/camera/autorama/Autorama;)V

    return-void
.end method


# virtual methods
.method public deregisterCamera()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v0, v1}, Lcom/scalado/camera/autorama/Autorama;->access$12(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Camera;)V

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0, v1}, Lcom/scalado/camera/autorama/Autorama;->access$11(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Feature$FeatureSocket;)V

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-virtual {v0}, Lcom/scalado/camera/autorama/Autorama;->abort()V

    return-void
.end method

.method public onAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$4(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V

    return-void
.end method

.method public onCancelAutoFocus()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$4(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureSocket;->doCancelAutoFocus()V

    return-void
.end method

.method public onSetParameters(Lcom/scalado/camera/Camera$Parameters;)V
    .locals 2

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$4(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doSetParameters(Lcom/scalado/camera/Camera$Parameters;)V

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama/Autorama;

    const/4 v1, 0x0

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v0, v1}, Lcom/scalado/camera/autorama/Autorama;->access$3(Lcom/scalado/camera/autorama/Autorama;Landroid/graphics/Point;)V

    return-void
.end method

.method public onStartSmoothZoom(I)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$4(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureSocket;->doStartSmoothZoom(I)V

    return-void
.end method

.method public onStopSmoothZoom()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$4(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Feature$FeatureSocket;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureSocket;->doStopSmoothZoom()V

    return-void
.end method

.method public onTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 2

    invoke-static {}, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->$SWITCH_TABLE$com$scalado$camera$autorama$Autorama$State()[I

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;
    invoke-static {v1}, Lcom/scalado/camera/autorama/Autorama;->access$5(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/camera/autorama/Autorama$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;
    invoke-static {v0, p1}, Lcom/scalado/camera/autorama/Autorama;->access$6(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Camera$ShutterCallback;)V

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p2}, Lcom/scalado/camera/autorama/Autorama;->access$7(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Camera$PictureCallback;)V

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p3}, Lcom/scalado/camera/autorama/Autorama;->access$8(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Camera$PictureCallback;)V

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v0, p4}, Lcom/scalado/camera/autorama/Autorama;->access$9(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Camera$PictureCallback;)V

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #calls: Lcom/scalado/camera/autorama/Autorama;->capture()V
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$10(Lcom/scalado/camera/autorama/Autorama;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public registerCamera(Lcom/scalado/camera/FeatureCamera;Lcom/scalado/camera/Feature$FeatureSocket;)V
    .locals 4

    iget-object v2, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;
    invoke-static {v2, p2}, Lcom/scalado/camera/autorama/Autorama;->access$11(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Feature$FeatureSocket;)V

    iget-object v2, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v2, p1}, Lcom/scalado/camera/autorama/Autorama;->access$12(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Camera;)V

    iget-object v2, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v2}, Lcom/scalado/camera/autorama/Autorama;->access$13(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v2

    invoke-interface {v2}, Lcom/scalado/camera/Camera;->getParameters()Lcom/scalado/camera/Camera$Parameters;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-interface {v1}, Lcom/scalado/camera/Camera$Parameters;->getPreviewSize()Lcom/scalado/base/Size;

    move-result-object v3

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v2, v3}, Lcom/scalado/camera/autorama/Autorama;->access$14(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Size;)V

    invoke-interface {v1}, Lcom/scalado/camera/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    iget-object v2, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-static {v0}, Lcom/scalado/camera/utils/Translators;->translateToScaladoImageConfig(I)Lcom/scalado/base/Image$Config;

    move-result-object v3

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v2, v3}, Lcom/scalado/camera/autorama/Autorama;->access$15(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Image$Config;)V

    return-void
.end method
