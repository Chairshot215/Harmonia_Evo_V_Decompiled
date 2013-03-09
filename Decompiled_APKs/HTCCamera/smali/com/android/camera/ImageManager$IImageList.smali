.class public interface abstract Lcom/android/camera/ImageManager$IImageList;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IImageList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ImageManager$IImageList$ThumbCheckCallback;,
        Lcom/android/camera/ImageManager$IImageList$OnChange;
    }
.end annotation


# virtual methods
.method public abstract activate()V
.end method

.method public abstract checkThumbnails(Lcom/android/camera/ImageManager$IImageList$ThumbCheckCallback;)V
.end method

.method public abstract commitChanges()V
.end method

.method public abstract deactivate()V
.end method

.method public abstract getBucketIds()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCount()I
.end method

.method public abstract getImageAt(I)Lcom/android/camera/ImageManager$IImage;
.end method

.method public abstract getImageForFilePath(Ljava/lang/String;)Lcom/android/camera/ImageManager$IImage;
.end method

.method public abstract getImageForUri(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;
.end method

.method public abstract removeImage(Lcom/android/camera/ImageManager$IImage;)Z
.end method

.method public abstract removeImageAt(I)V
.end method

.method public abstract removeOnChangeListener(Lcom/android/camera/ImageManager$IImageList$OnChange;)V
.end method

.method public abstract setOnChangeListener(Lcom/android/camera/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V
.end method
