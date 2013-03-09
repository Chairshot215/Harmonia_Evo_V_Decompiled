.class public interface abstract Lcom/scalado/camera/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/camera/Camera$AutoFocusCallback;,
        Lcom/scalado/camera/Camera$ErrorCallback;,
        Lcom/scalado/camera/Camera$ImageCallback;,
        Lcom/scalado/camera/Camera$OnZoomChangeListener;,
        Lcom/scalado/camera/Camera$Parameters;,
        Lcom/scalado/camera/Camera$PictureCallback;,
        Lcom/scalado/camera/Camera$PreviewCallback;,
        Lcom/scalado/camera/Camera$ShutterCallback;
    }
.end annotation


# static fields
.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1


# virtual methods
.method public abstract addCallbackBuffer([B)V
.end method

.method public abstract autoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V
.end method

.method public abstract cancelAutoFocus()V
.end method

.method public abstract getAndroidCamera()Landroid/hardware/Camera;
.end method

.method public abstract getParameters()Lcom/scalado/camera/Camera$Parameters;
.end method

.method public abstract lock()V
.end method

.method public abstract reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract setDisplayOrientation(I)V
.end method

.method public abstract setErrorCallback(Lcom/scalado/camera/Camera$ErrorCallback;)V
.end method

.method public abstract setOneShotPreviewCallback(Lcom/scalado/camera/Camera$PreviewCallback;)V
.end method

.method public abstract setParameters(Lcom/scalado/camera/Camera$Parameters;)V
.end method

.method public abstract setPreviewCallback(Lcom/scalado/camera/Camera$PreviewCallback;)V
.end method

.method public abstract setPreviewCallbackWithBuffer(Lcom/scalado/camera/Camera$PreviewCallback;)V
.end method

.method public abstract setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setZoomChangeListener(Lcom/scalado/camera/Camera$OnZoomChangeListener;)V
.end method

.method public abstract startPreview()V
.end method

.method public abstract startSmoothZoom(I)V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract stopSmoothZoom()V
.end method

.method public abstract takePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V
.end method

.method public abstract takePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V
.end method

.method public abstract unlock()V
.end method
