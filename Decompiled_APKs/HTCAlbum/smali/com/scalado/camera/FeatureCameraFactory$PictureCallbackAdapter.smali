.class Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;
.super Ljava/lang/Object;
.source "FeatureCameraFactory.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/FeatureCameraFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PictureCallbackAdapter"
.end annotation


# instance fields
.field mCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field mCamera:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)V
    .locals 0
    .parameter "cbk"
    .parameter "thiz"

    .prologue
    .line 683
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 684
    iput-object p1, p0, Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;->mCallback:Lcom/scalado/camera/Camera$PictureCallback;

    .line 685
    iput-object p2, p0, Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;->mCamera:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    .line 686
    return-void
.end method

.method public static createPictureCallbackAdapter(Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;
    .locals 1
    .parameter "cbk"
    .parameter "thiz"

    .prologue
    .line 689
    if-nez p0, :cond_0

    .line 690
    const/4 v0, 0x0

    .line 693
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;

    invoke-direct {v0, p0, p1}, Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;-><init>(Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)V

    goto :goto_0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;->mCallback:Lcom/scalado/camera/Camera$PictureCallback;

    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;->mCamera:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-interface {v0, p1, v1}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 700
    return-void
.end method
