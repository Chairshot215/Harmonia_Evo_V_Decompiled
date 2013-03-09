.class public interface abstract Lcom/google/android/finsky/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# virtual methods
.method public abstract enqueue(Lcom/google/android/finsky/download/DownloadRequest;Lcom/google/android/finsky/utils/ParameterizedRunnable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/download/DownloadRequest;",
            "Lcom/google/android/finsky/utils/ParameterizedRunnable",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryAllDownloads()Landroid/database/Cursor;
.end method

.method public abstract queryStatus(Landroid/net/Uri;)Landroid/database/Cursor;
.end method

.method public abstract remove(Landroid/net/Uri;)V
.end method
