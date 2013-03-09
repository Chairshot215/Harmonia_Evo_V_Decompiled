.class Lcom/scalado/camera/FeatureCameraFactory$ErrorCallbackAdapter;
.super Ljava/lang/Object;
.source "FeatureCameraFactory.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/FeatureCameraFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorCallbackAdapter"
.end annotation


# instance fields
.field mCallback:Lcom/scalado/camera/Camera$ErrorCallback;

.field mCamera:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/Camera$ErrorCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)V
    .locals 0
    .parameter "cbk"
    .parameter "thiz"

    .prologue
    .line 731
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput-object p1, p0, Lcom/scalado/camera/FeatureCameraFactory$ErrorCallbackAdapter;->mCallback:Lcom/scalado/camera/Camera$ErrorCallback;

    .line 733
    iput-object p2, p0, Lcom/scalado/camera/FeatureCameraFactory$ErrorCallbackAdapter;->mCamera:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    .line 734
    return-void
.end method

.method public static createErrorCallbackAdapter(Lcom/scalado/camera/Camera$ErrorCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$ErrorCallbackAdapter;
    .locals 1
    .parameter "cbk"
    .parameter "thiz"

    .prologue
    .line 737
    if-nez p0, :cond_0

    .line 738
    const/4 v0, 0x0

    .line 741
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/scalado/camera/FeatureCameraFactory$ErrorCallbackAdapter;

    invoke-direct {v0, p0, p1}, Lcom/scalado/camera/FeatureCameraFactory$ErrorCallbackAdapter;-><init>(Lcom/scalado/camera/Camera$ErrorCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)V

    goto :goto_0
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 2
    .parameter "error"
    .parameter "camera"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$ErrorCallbackAdapter;->mCallback:Lcom/scalado/camera/Camera$ErrorCallback;

    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$ErrorCallbackAdapter;->mCamera:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-interface {v0, p1, v1}, Lcom/scalado/camera/Camera$ErrorCallback;->onError(ILcom/scalado/camera/Camera;)V

    .line 748
    return-void
.end method
