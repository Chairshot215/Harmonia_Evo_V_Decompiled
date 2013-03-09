.class public interface abstract Lcom/htc/opensense/album/util/ImageManager$IImageList;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IImageList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/util/ImageManager$IImageList$ThumbCheckCallback;,
        Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;
    }
.end annotation


# virtual methods
.method public abstract activate()V
.end method

.method public abstract checkThumbnails(Lcom/htc/opensense/album/util/ImageManager$IImageList$ThumbCheckCallback;)V
.end method

.method public abstract closeCursor()V
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

.method public abstract getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;
.end method

.method public abstract getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImage;
.end method

.method public abstract getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense/album/util/ImageManager$IImage;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract removeImage(Lcom/htc/opensense/album/util/ImageManager$IImage;)Z
.end method

.method public abstract removeImageAt(I)V
.end method

.method public abstract removeImages([I[I[I[I)V
.end method

.method public abstract removeImages([Lcom/htc/opensense/album/util/ImageManager$IImage;)V
.end method

.method public abstract removeOnChangeListener(Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;)V
.end method

.method public abstract setOnChangeListener(Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V
.end method

.method public abstract startRequery()Z
.end method
