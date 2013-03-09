.class public interface abstract Lcom/scalado/camera/Feature$FeatureSocket;
.super Ljava/lang/Object;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeatureSocket"
.end annotation


# virtual methods
.method public abstract doAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V
.end method

.method public abstract doCancelAutoFocus()V
.end method

.method public abstract doSetParameters(Lcom/scalado/camera/Camera$Parameters;)V
.end method

.method public abstract doStartSmoothZoom(I)V
.end method

.method public abstract doStopSmoothZoom()V
.end method

.method public abstract doTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V
.end method

.method public abstract setFeaturePreviewCallback(Lcom/scalado/camera/Camera$ImageCallback;)V
.end method
