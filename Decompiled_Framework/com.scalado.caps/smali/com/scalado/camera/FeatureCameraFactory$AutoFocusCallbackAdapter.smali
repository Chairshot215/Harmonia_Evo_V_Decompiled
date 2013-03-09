.class Lcom/scalado/camera/FeatureCameraFactory$AutoFocusCallbackAdapter;
.super Ljava/lang/Object;
.source "FeatureCameraFactory.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/FeatureCameraFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoFocusCallbackAdapter"
.end annotation


# instance fields
.field mCallback:Lcom/scalado/camera/Camera$AutoFocusCallback;

.field mCamera:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/Camera$AutoFocusCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/scalado/camera/FeatureCameraFactory$AutoFocusCallbackAdapter;->mCallback:Lcom/scalado/camera/Camera$AutoFocusCallback;

    iput-object p2, p0, Lcom/scalado/camera/FeatureCameraFactory$AutoFocusCallbackAdapter;->mCamera:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    return-void
.end method

.method public static createAutofocusCallbackAdapter(Lcom/scalado/camera/Camera$AutoFocusCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$AutoFocusCallbackAdapter;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/scalado/camera/FeatureCameraFactory$AutoFocusCallbackAdapter;

    invoke-direct {v0, p0, p1}, Lcom/scalado/camera/FeatureCameraFactory$AutoFocusCallbackAdapter;-><init>(Lcom/scalado/camera/Camera$AutoFocusCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)V

    goto :goto_0
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2

    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$AutoFocusCallbackAdapter;->mCallback:Lcom/scalado/camera/Camera$AutoFocusCallback;

    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$AutoFocusCallbackAdapter;->mCamera:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-interface {v0, p1, v1}, Lcom/scalado/camera/Camera$AutoFocusCallback;->onAutoFocus(ZLcom/scalado/camera/Camera;)V

    return-void
.end method
