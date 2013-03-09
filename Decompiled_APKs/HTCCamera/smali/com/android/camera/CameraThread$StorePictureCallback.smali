.class public interface abstract Lcom/android/camera/CameraThread$StorePictureCallback;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Lcom/android/camera/ImageManager$StoreImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StorePictureCallback"
.end annotation


# virtual methods
.method public abstract onError([BLjava/lang/Exception;)V
.end method

.method public abstract onPictureStored([BLandroid/net/Uri;Ljava/lang/String;)V
.end method
