.class Lcom/scalado/camera/FeatureCameraFactory$ShutterCallbackAdapter;
.super Ljava/lang/Object;
.source "FeatureCameraFactory.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/FeatureCameraFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShutterCallbackAdapter"
.end annotation


# instance fields
.field mCallback:Lcom/scalado/camera/Camera$ShutterCallback;

.field mCamera:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)V
    .locals 0
    .parameter "cbk"
    .parameter "thiz"

    .prologue
    .line 659
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 660
    iput-object p1, p0, Lcom/scalado/camera/FeatureCameraFactory$ShutterCallbackAdapter;->mCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    .line 661
    iput-object p2, p0, Lcom/scalado/camera/FeatureCameraFactory$ShutterCallbackAdapter;->mCamera:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    .line 662
    return-void
.end method

.method public static createShutterCallbackAdapter(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$ShutterCallbackAdapter;
    .locals 1
    .parameter "cbk"
    .parameter "thiz"

    .prologue
    .line 665
    if-nez p0, :cond_0

    .line 666
    const/4 v0, 0x0

    .line 669
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/scalado/camera/FeatureCameraFactory$ShutterCallbackAdapter;

    invoke-direct {v0, p0, p1}, Lcom/scalado/camera/FeatureCameraFactory$ShutterCallbackAdapter;-><init>(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)V

    goto :goto_0
.end method


# virtual methods
.method public onShutter()V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$ShutterCallbackAdapter;->mCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    invoke-interface {v0}, Lcom/scalado/camera/Camera$ShutterCallback;->onShutter()V

    .line 676
    return-void
.end method
