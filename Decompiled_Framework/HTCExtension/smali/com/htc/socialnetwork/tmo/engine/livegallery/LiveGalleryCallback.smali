.class public interface abstract Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;
.super Ljava/lang/Object;
.source "LiveGalleryCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;
    }
.end annotation


# virtual methods
.method public abstract onDonwloadPhotoResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadPhotoListResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDownloadThumbnailResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/lang/String;Ljava/lang/String;)V
.end method
