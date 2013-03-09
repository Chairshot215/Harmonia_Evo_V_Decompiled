.class public interface abstract Lcom/htc/photowidget3d/image/IImageList;
.super Ljava/lang/Object;
.source "IImageList.java"


# virtual methods
.method public abstract close()V
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

.method public abstract getImageAt(I)Lcom/htc/photowidget3d/image/IImage;
.end method

.method public abstract getImageForUri(Landroid/net/Uri;)Lcom/htc/photowidget3d/image/IImage;
.end method

.method public abstract getImageIndex(Lcom/htc/photowidget3d/image/IImage;)I
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract removeImage(Lcom/htc/photowidget3d/image/IImage;)Z
.end method

.method public abstract removeImageAt(I)Z
.end method
