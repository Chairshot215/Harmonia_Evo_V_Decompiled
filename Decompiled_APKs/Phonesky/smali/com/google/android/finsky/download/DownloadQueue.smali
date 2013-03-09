.class public interface abstract Lcom/google/android/finsky/download/DownloadQueue;
.super Ljava/lang/Object;
.source "DownloadQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;
    }
.end annotation


# virtual methods
.method public abstract add(Lcom/google/android/finsky/download/InternalDownload;)V
.end method

.method public abstract addListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V
.end method

.method public abstract addRecoveredDownload(Lcom/google/android/finsky/download/InternalDownload;)V
.end method

.method public abstract cancel(Lcom/google/android/finsky/download/Download;)V
.end method

.method public abstract getByPackageName(Ljava/lang/String;)Lcom/google/android/finsky/download/Download;
.end method

.method public abstract getRunningUris()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;",
            ">;"
        }
    .end annotation
.end method

.method public abstract release(Landroid/net/Uri;)V
.end method
