.class public interface abstract Lcom/scalado/camera/Feature$FeatureImplementation;
.super Ljava/lang/Object;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeatureImplementation"
.end annotation


# virtual methods
.method public abstract deregisterCamera()V
.end method

.method public abstract onAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V
.end method

.method public abstract onCancelAutoFocus()V
.end method

.method public abstract onSetParameters(Lcom/scalado/camera/Camera$Parameters;)V
.end method

.method public abstract onStartSmoothZoom(I)V
.end method

.method public abstract onStopSmoothZoom()V
.end method

.method public abstract onTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V
.end method

.method public abstract registerCamera(Lcom/scalado/camera/FeatureCamera;Lcom/scalado/camera/Feature$FeatureSocket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/scalado/camera/FeatureNotSupportedException;
        }
    .end annotation
.end method
