.class Lcom/htc/opensense/album/util/ImageManager$2;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense/album/util/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/album/util/ImageManager;->emptyImageList()Lcom/htc/opensense/album/util/ImageManager$IImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/util/ImageManager;


# direct methods
.method constructor <init>(Lcom/htc/opensense/album/util/ImageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 8471
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$2;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 0

    .prologue
    .line 8484
    return-void
.end method

.method public checkThumbnails(Lcom/htc/opensense/album/util/ImageManager$IImageList$ThumbCheckCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 8477
    return-void
.end method

.method public closeCursor()V
    .locals 0

    .prologue
    .line 8491
    return-void
.end method

.method public commitChanges()V
    .locals 0

    .prologue
    .line 8480
    return-void
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 8487
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 1
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

    .prologue
    .line 8494
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 8498
    const/4 v0, 0x0

    return v0
.end method

.method public getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;
    .locals 1
    .parameter "i"

    .prologue
    .line 8502
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImage;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 8511
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense/album/util/ImageManager$IImage;
    .locals 1
    .parameter "uri"

    .prologue
    .line 8506
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8473
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeImage(Lcom/htc/opensense/album/util/ImageManager$IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 8516
    const/4 v0, 0x0

    return v0
.end method

.method public removeImageAt(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 8520
    return-void
.end method

.method public removeImages([I[I[I[I)V
    .locals 0
    .parameter "images"
    .parameter "videos"
    .parameter "drmImages"
    .parameter "drmVideos"

    .prologue
    .line 8527
    return-void
.end method

.method public removeImages([Lcom/htc/opensense/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter "indexs"

    .prologue
    .line 8530
    return-void
.end method

.method public removeOnChangeListener(Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;)V
    .locals 0
    .parameter "changeCallback"

    .prologue
    .line 8523
    return-void
.end method

.method public setOnChangeListener(Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V
    .locals 0
    .parameter "changeCallback"
    .parameter "h"

    .prologue
    .line 8526
    return-void
.end method

.method public startRequery()Z
    .locals 1

    .prologue
    .line 8533
    const/4 v0, 0x0

    return v0
.end method
